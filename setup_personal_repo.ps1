# Set base path
$base = "personal"

# Define folders to create
$folders = @(
    "$base\organized\identity",
    "$base\organized\reflections\daily_logs",
    "$base\organized\relationships",
    "$base\organized\projects",
    "$base\organized\meta",
    "$base\unprocessed",
    "$base\archive",
    "$base\canvas_exports",
    "$base\GPT_notes"
)

# Create folders
foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
}

# Create core files
$files = @(
    "$base\organized\identity\autobiography.md",
    "$base\organized\identity\values_and_principles.md",
    "$base\organized\identity\moral_contradictions.md",
    "$base\organized\identity\enneagram_profile.md",
    "$base\organized\identity\diagnoses_and_traits.md",

    "$base\organized\reflections\therapy_insights.md",
    "$base\organized\reflections\self-dialogues.md",
    "$base\organized\reflections\thought_patterns.md",

    "$base\organized\relationships\marriage_lisa.md",
    "$base\organized\relationships\parenting_children.md",
    "$base\organized\relationships\boundaries_and_attractions.md",
    "$base\organized\relationships\dominics_transition_and_relationship.md",

    "$base\organized\projects\whisper_transcriber_notes.md",
    "$base\organized\projects\ai_mentorship.md",
    "$base\organized\projects\youtube_channel_plan.md",
    "$base\organized\projects\silver_extraction_notes.md",

    "$base\organized\meta\canvas_sync_log.md",
    "$base\organized\meta\memory_decisions_log.md",
    "$base\organized\meta\refactor_requests.md",

    "$base\README.md",
    "$base\memory_index.json"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force | Out-Null
}

# Add .gitkeep placeholders
".gitkeep" | Set-Content "$base\unprocessed\.gitkeep"
".gitkeep" | Set-Content "$base\archive\.gitkeep"
".gitkeep" | Set-Content "$base\canvas_exports\.gitkeep"
".gitkeep" | Set-Content "$base\GPT_notes\.gitkeep"

Write-Host "Personal repo folder structure created successfully."
