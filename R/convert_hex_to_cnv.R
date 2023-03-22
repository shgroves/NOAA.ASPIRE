


library(data.table)

# Set path to folders containing .hex files
hex_folder_path <- c("path/to/folder1",
                     "path/to/folder2",
                     "path/to/folder3")

# Loop through folders and convert .hex files to .cnv files
for (folder in hex_folder_path) {

  # Get list of .hex files in current folder
  hex_files <- list.files(path = folder, pattern = "\\.hex$", full.names = TRUE)

  # Loop through .hex files in current folder
  for (hex_file in hex_files) {

    # Read in data from .hex file
    data_hex <- fread(hex_file)

    # Set path and file name for output .cnv file
    cnv_file <- paste0(tools::file_path_sans_ext(hex_file), ".cnv")

    # Write data to .cnv file with same file name
    fwrite(data_hex, cnv_file)

  }
}
