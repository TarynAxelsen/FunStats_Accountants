# example R options set globally
options(width = 60)

# example chunk options set globally
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE
  )


# Banners etc
box_template <- function(title, text, type = "banner") {
  text <- paste(text, collapse = "\n\n")
  
  # Icons (NO icon for banner)
  icons <- list(
    banner = "",
    tip = "💡",
    warning = "⚠️",
    note = "📝"
  )
  
  # HTML styles
  styles <- list(
    banner = list(bg = "linear-gradient(90deg, #e6f0ff, #f7fbff)", border = "#2a7ae2", title_col = "#1a4f8b"),
    tip = list(bg = "#f0fff4", border = "#2a9d8f", title_col = "#1b7f5f"),
    warning = list(bg = "#fff4d6", border = "#ffb300", title_col = "#b26a00"),
    note = list(bg = "#f5f5f5", border = "#888888", title_col = "#333333")
  )
  
  icon <- icons[[type]]
  s <- styles[[type]]
  
  # Add space only if icon exists
  title_full <- if (icon == "") title else paste(icon, title)
  
  if (knitr::is_html_output()) {
    cat(paste0('
<div style="
  background: ', s$bg, ';
  border-left: 8px solid ', s$border, ';
  padding: 18px;
  border-radius: 6px;
  margin: 20px 0;
">
  <strong style="color:', s$title_col, '; font-size:1.1em;">
    ', title_full, '
  </strong>
  <p style="margin-top:8px;">', text, '</p>
  
</div>
'))
    
  } else if (knitr::is_latex_output()) {
    
    env <- switch(type,
                  banner = "bannerbox",
                  tip = "tipbox",
                  warning = "warningbox",
                  note = "notebox")
    
    cat(paste0('
\\begin{', env, '}
\\textbf{', title_full, '}

', text, '
\\end{', env, '}
'))
  }
}


# Wrapper functions
banner_box  <- function(title, text) box_template(title, text, "banner")
tip_box     <- function(title, text) box_template(title, text, "tip")
warning_box <- function(title, text) box_template(title, text, "warning")
note_box    <- function(title, text) box_template(title, text, "note")


