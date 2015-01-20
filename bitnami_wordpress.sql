-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2015 at 04:06 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bitnami_wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album` (
`id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album_gallery` (
`id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_gallery` (
`id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image` (
`id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_comment` (
`id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_rate` (
`id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_tag` (
`id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_option`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_option` (
`id` bigint(20) NOT NULL,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(8) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(16) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(16) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(16) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(16) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `watermark_type` varchar(8) NOT NULL,
  `watermark_position` varchar(16) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(16) NOT NULL,
  `watermark_color` varchar(8) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(4) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL,
  `enable_ML_import` tinyint(1) NOT NULL,
  `showthumbs_name` tinyint(1) NOT NULL,
  `show_album_name` tinyint(1) NOT NULL,
  `show_image_counts` tinyint(1) NOT NULL,
  `upload_img_width` int(4) NOT NULL,
  `upload_img_height` int(4) NOT NULL,
  `play_icon` tinyint(1) NOT NULL,
  `show_masonry_thumb_description` tinyint(1) NOT NULL,
  `slideshow_title_full_width` tinyint(1) NOT NULL,
  `popup_info_full_width` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_option`
--

INSERT INTO `wp_bwg_option` (`id`, `images_directory`, `masonry`, `image_column_number`, `images_per_page`, `thumb_width`, `thumb_height`, `upload_thumb_width`, `upload_thumb_height`, `image_enable_page`, `image_title_show_hover`, `album_column_number`, `albums_per_page`, `album_title_show_hover`, `album_thumb_width`, `album_thumb_height`, `album_enable_page`, `extended_album_height`, `extended_album_description_enable`, `image_browser_width`, `image_browser_title_enable`, `image_browser_description_enable`, `blog_style_width`, `blog_style_title_enable`, `blog_style_images_per_page`, `blog_style_enable_page`, `slideshow_type`, `slideshow_interval`, `slideshow_width`, `slideshow_height`, `slideshow_enable_autoplay`, `slideshow_enable_shuffle`, `slideshow_enable_ctrl`, `slideshow_enable_filmstrip`, `slideshow_filmstrip_height`, `slideshow_enable_title`, `slideshow_title_position`, `slideshow_enable_description`, `slideshow_description_position`, `slideshow_enable_music`, `slideshow_audio_url`, `popup_width`, `popup_height`, `popup_type`, `popup_interval`, `popup_enable_filmstrip`, `popup_filmstrip_height`, `popup_enable_ctrl_btn`, `popup_enable_fullscreen`, `popup_enable_info`, `popup_info_always_show`, `popup_enable_rate`, `popup_enable_comment`, `popup_enable_email`, `popup_enable_captcha`, `popup_enable_download`, `popup_enable_fullsize_image`, `popup_enable_facebook`, `popup_enable_twitter`, `popup_enable_google`, `watermark_type`, `watermark_position`, `watermark_width`, `watermark_height`, `watermark_url`, `watermark_text`, `watermark_link`, `watermark_font_size`, `watermark_font`, `watermark_color`, `watermark_opacity`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `image_right_click`, `popup_fullscreen`, `gallery_role`, `album_role`, `image_role`, `popup_autoplay`, `album_view_type`, `popup_enable_pinterest`, `popup_enable_tumblr`, `show_search_box`, `search_box_width`, `preload_images`, `preload_images_count`, `thumb_click_action`, `thumb_link_target`, `comment_moderation`, `popup_hit_counter`, `enable_ML_import`, `showthumbs_name`, `show_album_name`, `show_image_counts`, `upload_img_width`, `upload_img_height`, `play_icon`, `show_masonry_thumb_description`, `slideshow_title_full_width`, `popup_info_full_width`) VALUES
(1, 'wp-content/uploads', 'vertical', 5, 30, 180, 90, 300, 300, 1, 'none', 5, 30, 'hover', 120, 90, 1, 150, 1, 800, 1, 1, 800, 1, 5, 1, 'fade', 5, 800, 500, 0, 0, 1, 1, 90, 0, 'top-right', 0, 'bottom-right', 0, '', 800, 500, 'fade', 5, 1, 70, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 'none', 'bottom-left', 90, 90, 'http://127.0.0.1/wordpress/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 'http://web-dorado.com', 20, 'arial', 'FFFFFF', 30, 'none', 'middle-center', 15, 'http://127.0.0.1/wordpress/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 20, 'arial', 'FFFFFF', 30, 0, 0, 0, 0, 0, 0, 'thumbnail', 0, 0, 0, 180, 0, 10, 'open_lightbox', 1, 0, 0, 0, 0, 0, 0, 1200, 1200, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_theme` (
`id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumb_margin` int(4) NOT NULL,
  `thumb_padding` int(4) NOT NULL,
  `thumb_border_radius` varchar(32) NOT NULL,
  `thumb_border_width` int(4) NOT NULL,
  `thumb_border_style` varchar(16) NOT NULL,
  `thumb_border_color` varchar(8) NOT NULL,
  `thumb_bg_color` varchar(8) NOT NULL,
  `thumbs_bg_color` varchar(8) NOT NULL,
  `thumb_bg_transparent` int(4) NOT NULL,
  `thumb_box_shadow` varchar(32) NOT NULL,
  `thumb_transparent` int(4) NOT NULL,
  `thumb_align` varchar(8) NOT NULL,
  `thumb_hover_effect` varchar(128) NOT NULL,
  `thumb_hover_effect_value` varchar(128) NOT NULL,
  `thumb_transition` tinyint(1) NOT NULL,
  `thumb_title_font_color` varchar(8) NOT NULL,
  `thumb_title_font_style` varchar(16) NOT NULL,
  `thumb_title_pos` varchar(8) NOT NULL,
  `thumb_title_font_size` int(4) NOT NULL,
  `thumb_title_font_weight` varchar(8) NOT NULL,
  `thumb_title_margin` varchar(32) NOT NULL,
  `thumb_title_shadow` varchar(32) NOT NULL,
  `page_nav_position` varchar(8) NOT NULL,
  `page_nav_align` varchar(8) NOT NULL,
  `page_nav_number` tinyint(1) NOT NULL,
  `page_nav_font_size` int(4) NOT NULL,
  `page_nav_font_style` varchar(32) NOT NULL,
  `page_nav_font_color` varchar(8) NOT NULL,
  `page_nav_font_weight` varchar(8) NOT NULL,
  `page_nav_border_width` int(4) NOT NULL,
  `page_nav_border_style` varchar(16) NOT NULL,
  `page_nav_border_color` varchar(8) NOT NULL,
  `page_nav_border_radius` varchar(32) NOT NULL,
  `page_nav_margin` varchar(32) NOT NULL,
  `page_nav_padding` varchar(32) NOT NULL,
  `page_nav_button_bg_color` varchar(8) NOT NULL,
  `page_nav_button_bg_transparent` int(4) NOT NULL,
  `page_nav_box_shadow` varchar(32) NOT NULL,
  `page_nav_button_transition` tinyint(1) NOT NULL,
  `page_nav_button_text` tinyint(1) NOT NULL,
  `lightbox_overlay_bg_color` varchar(8) NOT NULL,
  `lightbox_overlay_bg_transparent` int(4) NOT NULL,
  `lightbox_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_pos` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_align` varchar(8) NOT NULL,
  `lightbox_ctrl_btn_height` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_top` int(4) NOT NULL,
  `lightbox_ctrl_btn_margin_left` int(4) NOT NULL,
  `lightbox_ctrl_btn_transparent` int(4) NOT NULL,
  `lightbox_ctrl_btn_color` varchar(8) NOT NULL,
  `lightbox_toggle_btn_height` int(4) NOT NULL,
  `lightbox_toggle_btn_width` int(4) NOT NULL,
  `lightbox_ctrl_cont_bg_color` varchar(8) NOT NULL,
  `lightbox_ctrl_cont_transparent` int(4) NOT NULL,
  `lightbox_ctrl_cont_border_radius` int(4) NOT NULL,
  `lightbox_close_btn_transparent` int(4) NOT NULL,
  `lightbox_close_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_close_btn_border_width` int(4) NOT NULL,
  `lightbox_close_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_close_btn_border_style` varchar(16) NOT NULL,
  `lightbox_close_btn_border_color` varchar(8) NOT NULL,
  `lightbox_close_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_close_btn_color` varchar(8) NOT NULL,
  `lightbox_close_btn_size` int(4) NOT NULL,
  `lightbox_close_btn_width` int(4) NOT NULL,
  `lightbox_close_btn_height` int(4) NOT NULL,
  `lightbox_close_btn_top` varchar(8) NOT NULL,
  `lightbox_close_btn_right` varchar(8) NOT NULL,
  `lightbox_close_btn_full_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_bg_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_transparent` int(4) NOT NULL,
  `lightbox_rl_btn_border_radius` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_width` int(4) NOT NULL,
  `lightbox_rl_btn_border_style` varchar(32) NOT NULL,
  `lightbox_rl_btn_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_box_shadow` varchar(32) NOT NULL,
  `lightbox_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_height` int(4) NOT NULL,
  `lightbox_rl_btn_width` int(4) NOT NULL,
  `lightbox_rl_btn_size` int(4) NOT NULL,
  `lightbox_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `lightbox_comment_pos` varchar(8) NOT NULL,
  `lightbox_comment_width` int(4) NOT NULL,
  `lightbox_comment_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_font_color` varchar(8) NOT NULL,
  `lightbox_comment_font_style` varchar(16) NOT NULL,
  `lightbox_comment_font_size` int(4) NOT NULL,
  `lightbox_comment_button_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_color` varchar(8) NOT NULL,
  `lightbox_comment_button_border_width` int(4) NOT NULL,
  `lightbox_comment_button_border_style` varchar(16) NOT NULL,
  `lightbox_comment_button_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_button_padding` varchar(32) NOT NULL,
  `lightbox_comment_input_bg_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_color` varchar(8) NOT NULL,
  `lightbox_comment_input_border_width` int(4) NOT NULL,
  `lightbox_comment_input_border_style` varchar(16) NOT NULL,
  `lightbox_comment_input_border_radius` varchar(32) NOT NULL,
  `lightbox_comment_input_padding` varchar(32) NOT NULL,
  `lightbox_comment_separator_width` int(4) NOT NULL,
  `lightbox_comment_separator_style` varchar(16) NOT NULL,
  `lightbox_comment_separator_color` varchar(8) NOT NULL,
  `lightbox_comment_author_font_size` int(4) NOT NULL,
  `lightbox_comment_date_font_size` int(4) NOT NULL,
  `lightbox_comment_body_font_size` int(4) NOT NULL,
  `lightbox_comment_share_button_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_pos` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_rl_btn_size` int(4) NOT NULL,
  `lightbox_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_border_style` varchar(16) NOT NULL,
  `lightbox_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `lightbox_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `lightbox_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `lightbox_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `lightbox_rl_btn_style` varchar(16) NOT NULL,
  `album_compact_back_font_color` varchar(8) NOT NULL,
  `album_compact_back_font_style` varchar(16) NOT NULL,
  `album_compact_back_font_size` int(4) NOT NULL,
  `album_compact_back_font_weight` varchar(8) NOT NULL,
  `album_compact_back_padding` varchar(32) NOT NULL,
  `album_compact_title_font_color` varchar(8) NOT NULL,
  `album_compact_title_font_style` varchar(16) NOT NULL,
  `album_compact_thumb_title_pos` varchar(8) NOT NULL,
  `album_compact_title_font_size` int(4) NOT NULL,
  `album_compact_title_font_weight` varchar(8) NOT NULL,
  `album_compact_title_margin` varchar(32) NOT NULL,
  `album_compact_title_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_margin` int(4) NOT NULL,
  `album_compact_thumb_padding` int(4) NOT NULL,
  `album_compact_thumb_border_radius` varchar(32) NOT NULL,
  `album_compact_thumb_border_width` int(4) NOT NULL,
  `album_compact_thumb_border_style` varchar(8) NOT NULL,
  `album_compact_thumb_border_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_color` varchar(8) NOT NULL,
  `album_compact_thumbs_bg_color` varchar(8) NOT NULL,
  `album_compact_thumb_bg_transparent` int(4) NOT NULL,
  `album_compact_thumb_box_shadow` varchar(32) NOT NULL,
  `album_compact_thumb_transparent` int(4) NOT NULL,
  `album_compact_thumb_align` varchar(8) NOT NULL,
  `album_compact_thumb_hover_effect` varchar(64) NOT NULL,
  `album_compact_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_compact_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_thumb_margin` int(4) NOT NULL,
  `album_extended_thumb_padding` int(4) NOT NULL,
  `album_extended_thumb_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_border_width` int(4) NOT NULL,
  `album_extended_thumb_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_color` varchar(8) NOT NULL,
  `album_extended_thumbs_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_bg_transparent` int(4) NOT NULL,
  `album_extended_thumb_box_shadow` varchar(32) NOT NULL,
  `album_extended_thumb_transparent` int(4) NOT NULL,
  `album_extended_thumb_align` varchar(8) NOT NULL,
  `album_extended_thumb_hover_effect` varchar(64) NOT NULL,
  `album_extended_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_extended_thumb_transition` tinyint(1) NOT NULL,
  `album_extended_back_font_color` varchar(8) NOT NULL,
  `album_extended_back_font_style` varchar(8) NOT NULL,
  `album_extended_back_font_size` int(4) NOT NULL,
  `album_extended_back_font_weight` varchar(8) NOT NULL,
  `album_extended_back_padding` varchar(32) NOT NULL,
  `album_extended_div_bg_color` varchar(8) NOT NULL,
  `album_extended_div_bg_transparent` int(4) NOT NULL,
  `album_extended_div_border_radius` varchar(32) NOT NULL,
  `album_extended_div_margin` varchar(32) NOT NULL,
  `album_extended_div_padding` int(4) NOT NULL,
  `album_extended_div_separator_width` int(4) NOT NULL,
  `album_extended_div_separator_style` varchar(8) NOT NULL,
  `album_extended_div_separator_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_bg_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_radius` varchar(32) NOT NULL,
  `album_extended_thumb_div_border_width` int(4) NOT NULL,
  `album_extended_thumb_div_border_style` varchar(8) NOT NULL,
  `album_extended_thumb_div_border_color` varchar(8) NOT NULL,
  `album_extended_thumb_div_padding` varchar(32) NOT NULL,
  `album_extended_text_div_bg_color` varchar(8) NOT NULL,
  `album_extended_text_div_border_radius` varchar(32) NOT NULL,
  `album_extended_text_div_border_width` int(4) NOT NULL,
  `album_extended_text_div_border_style` varchar(8) NOT NULL,
  `album_extended_text_div_border_color` varchar(8) NOT NULL,
  `album_extended_text_div_padding` varchar(32) NOT NULL,
  `album_extended_title_span_border_width` int(4) NOT NULL,
  `album_extended_title_span_border_style` varchar(8) NOT NULL,
  `album_extended_title_span_border_color` varchar(8) NOT NULL,
  `album_extended_title_font_color` varchar(8) NOT NULL,
  `album_extended_title_font_style` varchar(8) NOT NULL,
  `album_extended_title_font_size` int(4) NOT NULL,
  `album_extended_title_font_weight` varchar(8) NOT NULL,
  `album_extended_title_margin_bottom` int(4) NOT NULL,
  `album_extended_title_padding` varchar(32) NOT NULL,
  `album_extended_desc_span_border_width` int(4) NOT NULL,
  `album_extended_desc_span_border_style` varchar(8) NOT NULL,
  `album_extended_desc_span_border_color` varchar(8) NOT NULL,
  `album_extended_desc_font_color` varchar(8) NOT NULL,
  `album_extended_desc_font_style` varchar(8) NOT NULL,
  `album_extended_desc_font_size` int(4) NOT NULL,
  `album_extended_desc_font_weight` varchar(8) NOT NULL,
  `album_extended_desc_padding` varchar(32) NOT NULL,
  `album_extended_desc_more_color` varchar(8) NOT NULL,
  `album_extended_desc_more_size` int(4) NOT NULL,
  `masonry_thumb_padding` int(4) NOT NULL,
  `masonry_thumb_border_radius` varchar(32) NOT NULL,
  `masonry_thumb_border_width` int(4) NOT NULL,
  `masonry_thumb_border_style` varchar(8) NOT NULL,
  `masonry_thumb_border_color` varchar(8) NOT NULL,
  `masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `masonry_thumb_bg_transparent` int(4) NOT NULL,
  `masonry_thumb_transparent` int(4) NOT NULL,
  `masonry_thumb_align` varchar(8) NOT NULL,
  `masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `masonry_thumb_transition` tinyint(1) NOT NULL,
  `slideshow_cont_bg_color` varchar(8) NOT NULL,
  `slideshow_close_btn_transparent` int(4) NOT NULL,
  `slideshow_rl_btn_bg_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_radius` varchar(32) NOT NULL,
  `slideshow_rl_btn_border_width` int(4) NOT NULL,
  `slideshow_rl_btn_border_style` varchar(8) NOT NULL,
  `slideshow_rl_btn_border_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_box_shadow` varchar(32) NOT NULL,
  `slideshow_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_rl_btn_height` int(4) NOT NULL,
  `slideshow_rl_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_width` int(4) NOT NULL,
  `slideshow_close_rl_btn_hover_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_pos` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_border_style` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_border_radius` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_margin` varchar(32) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_width` int(4) NOT NULL,
  `slideshow_filmstrip_thumb_active_border_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_thumb_deactive_transparent` int(4) NOT NULL,
  `slideshow_filmstrip_rl_bg_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_color` varchar(8) NOT NULL,
  `slideshow_filmstrip_rl_btn_size` int(4) NOT NULL,
  `slideshow_title_font_size` int(4) NOT NULL,
  `slideshow_title_font` varchar(16) NOT NULL,
  `slideshow_title_color` varchar(8) NOT NULL,
  `slideshow_title_opacity` int(4) NOT NULL,
  `slideshow_title_border_radius` varchar(32) NOT NULL,
  `slideshow_title_background_color` varchar(8) NOT NULL,
  `slideshow_title_padding` varchar(32) NOT NULL,
  `slideshow_description_font_size` int(4) NOT NULL,
  `slideshow_description_font` varchar(16) NOT NULL,
  `slideshow_description_color` varchar(8) NOT NULL,
  `slideshow_description_opacity` int(4) NOT NULL,
  `slideshow_description_border_radius` varchar(32) NOT NULL,
  `slideshow_description_background_color` varchar(8) NOT NULL,
  `slideshow_description_padding` varchar(32) NOT NULL,
  `slideshow_dots_width` int(4) NOT NULL,
  `slideshow_dots_height` int(4) NOT NULL,
  `slideshow_dots_border_radius` varchar(32) NOT NULL,
  `slideshow_dots_background_color` varchar(8) NOT NULL,
  `slideshow_dots_margin` int(4) NOT NULL,
  `slideshow_dots_active_background_color` varchar(8) NOT NULL,
  `slideshow_dots_active_border_width` int(4) NOT NULL,
  `slideshow_dots_active_border_color` varchar(8) NOT NULL,
  `slideshow_play_pause_btn_size` int(4) NOT NULL,
  `slideshow_rl_btn_style` varchar(16) NOT NULL,
  `blog_style_margin` varchar(32) NOT NULL,
  `blog_style_padding` varchar(32) NOT NULL,
  `blog_style_border_radius` varchar(32) NOT NULL,
  `blog_style_border_width` int(4) NOT NULL,
  `blog_style_border_style` varchar(16) NOT NULL,
  `blog_style_border_color` varchar(8) NOT NULL,
  `blog_style_bg_color` varchar(8) NOT NULL,
  `blog_style_box_shadow` varchar(32) NOT NULL,
  `blog_style_transparent` int(4) NOT NULL,
  `blog_style_align` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_margin` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_radius` varchar(32) NOT NULL,
  `blog_style_share_buttons_border_width` int(4) NOT NULL,
  `blog_style_share_buttons_border_style` varchar(16) NOT NULL,
  `blog_style_share_buttons_border_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_align` varchar(8) NOT NULL,
  `blog_style_img_font_size` int(4) NOT NULL,
  `blog_style_img_font_family` varchar(16) NOT NULL,
  `blog_style_img_font_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_color` varchar(8) NOT NULL,
  `blog_style_share_buttons_bg_transparent` int(4) NOT NULL,
  `blog_style_share_buttons_font_size` int(4) NOT NULL,
  `image_browser_margin` varchar(32) NOT NULL,
  `image_browser_padding` varchar(32) NOT NULL,
  `image_browser_border_radius` varchar(32) NOT NULL,
  `image_browser_border_width` int(4) NOT NULL,
  `image_browser_border_style` varchar(16) NOT NULL,
  `image_browser_border_color` varchar(8) NOT NULL,
  `image_browser_bg_color` varchar(8) NOT NULL,
  `image_browser_box_shadow` varchar(32) NOT NULL,
  `image_browser_transparent` int(4) NOT NULL,
  `image_browser_align` varchar(8) NOT NULL,
  `image_browser_image_description_margin` varchar(32) NOT NULL,
  `image_browser_image_description_padding` varchar(32) NOT NULL,
  `image_browser_image_description_border_radius` varchar(32) NOT NULL,
  `image_browser_image_description_border_width` int(4) NOT NULL,
  `image_browser_image_description_border_style` varchar(16) NOT NULL,
  `image_browser_image_description_border_color` varchar(8) NOT NULL,
  `image_browser_image_description_bg_color` varchar(8) NOT NULL,
  `image_browser_image_description_align` varchar(8) NOT NULL,
  `image_browser_img_font_size` int(4) NOT NULL,
  `image_browser_img_font_family` varchar(16) NOT NULL,
  `image_browser_img_font_color` varchar(8) NOT NULL,
  `image_browser_full_padding` varchar(32) NOT NULL,
  `image_browser_full_border_radius` varchar(32) NOT NULL,
  `image_browser_full_border_width` int(4) NOT NULL,
  `image_browser_full_border_style` varchar(16) NOT NULL,
  `image_browser_full_border_color` varchar(8) NOT NULL,
  `image_browser_full_bg_color` varchar(8) NOT NULL,
  `image_browser_full_transparent` int(4) NOT NULL,
  `lightbox_info_pos` varchar(8) NOT NULL,
  `lightbox_info_align` varchar(8) NOT NULL,
  `lightbox_info_bg_color` varchar(8) NOT NULL,
  `lightbox_info_bg_transparent` int(4) NOT NULL,
  `lightbox_info_border_width` int(4) NOT NULL,
  `lightbox_info_border_style` varchar(16) NOT NULL,
  `lightbox_info_border_color` varchar(8) NOT NULL,
  `lightbox_info_border_radius` varchar(32) NOT NULL,
  `lightbox_info_padding` varchar(32) NOT NULL,
  `lightbox_info_margin` varchar(32) NOT NULL,
  `lightbox_title_color` varchar(8) NOT NULL,
  `lightbox_title_font_style` varchar(16) NOT NULL,
  `lightbox_title_font_weight` varchar(8) NOT NULL,
  `lightbox_title_font_size` int(4) NOT NULL,
  `lightbox_description_color` varchar(8) NOT NULL,
  `lightbox_description_font_style` varchar(16) NOT NULL,
  `lightbox_description_font_weight` varchar(8) NOT NULL,
  `lightbox_description_font_size` int(4) NOT NULL,
  `lightbox_rate_pos` varchar(8) NOT NULL,
  `lightbox_rate_align` varchar(8) NOT NULL,
  `lightbox_rate_icon` varchar(16) NOT NULL,
  `lightbox_rate_color` varchar(8) NOT NULL,
  `lightbox_rate_size` int(4) NOT NULL,
  `lightbox_rate_stars_count` int(4) NOT NULL,
  `lightbox_rate_padding` varchar(32) NOT NULL,
  `lightbox_rate_hover_color` varchar(8) NOT NULL,
  `lightbox_hit_pos` varchar(8) NOT NULL,
  `lightbox_hit_align` varchar(8) NOT NULL,
  `lightbox_hit_bg_color` varchar(8) NOT NULL,
  `lightbox_hit_bg_transparent` int(4) NOT NULL,
  `lightbox_hit_border_width` int(4) NOT NULL,
  `lightbox_hit_border_style` varchar(16) NOT NULL,
  `lightbox_hit_border_color` varchar(8) NOT NULL,
  `lightbox_hit_border_radius` varchar(32) NOT NULL,
  `lightbox_hit_padding` varchar(32) NOT NULL,
  `lightbox_hit_margin` varchar(32) NOT NULL,
  `lightbox_hit_color` varchar(8) NOT NULL,
  `lightbox_hit_font_style` varchar(16) NOT NULL,
  `lightbox_hit_font_weight` varchar(8) NOT NULL,
  `lightbox_hit_font_size` int(4) NOT NULL,
  `masonry_description_font_size` int(4) NOT NULL,
  `masonry_description_color` varchar(8) NOT NULL,
  `masonry_description_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_color` varchar(8) NOT NULL,
  `album_masonry_back_font_style` varchar(16) NOT NULL,
  `album_masonry_back_font_size` int(4) NOT NULL,
  `album_masonry_back_font_weight` varchar(8) NOT NULL,
  `album_masonry_back_padding` varchar(32) NOT NULL,
  `album_masonry_title_font_color` varchar(8) NOT NULL,
  `album_masonry_title_font_style` varchar(16) NOT NULL,
  `album_masonry_thumb_title_pos` varchar(8) NOT NULL,
  `album_masonry_title_font_size` int(4) NOT NULL,
  `album_masonry_title_font_weight` varchar(8) NOT NULL,
  `album_masonry_title_margin` varchar(32) NOT NULL,
  `album_masonry_title_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_margin` int(4) NOT NULL,
  `album_masonry_thumb_padding` int(4) NOT NULL,
  `album_masonry_thumb_border_radius` varchar(32) NOT NULL,
  `album_masonry_thumb_border_width` int(4) NOT NULL,
  `album_masonry_thumb_border_style` varchar(8) NOT NULL,
  `album_masonry_thumb_border_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumbs_bg_color` varchar(8) NOT NULL,
  `album_masonry_thumb_bg_transparent` int(4) NOT NULL,
  `album_masonry_thumb_box_shadow` varchar(32) NOT NULL,
  `album_masonry_thumb_transparent` int(4) NOT NULL,
  `album_masonry_thumb_align` varchar(8) NOT NULL,
  `album_masonry_thumb_hover_effect` varchar(64) NOT NULL,
  `album_masonry_thumb_hover_effect_value` varchar(64) NOT NULL,
  `album_masonry_thumb_transition` tinyint(1) NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `thumb_margin`, `thumb_padding`, `thumb_border_radius`, `thumb_border_width`, `thumb_border_style`, `thumb_border_color`, `thumb_bg_color`, `thumbs_bg_color`, `thumb_bg_transparent`, `thumb_box_shadow`, `thumb_transparent`, `thumb_align`, `thumb_hover_effect`, `thumb_hover_effect_value`, `thumb_transition`, `thumb_title_font_color`, `thumb_title_font_style`, `thumb_title_pos`, `thumb_title_font_size`, `thumb_title_font_weight`, `thumb_title_margin`, `thumb_title_shadow`, `page_nav_position`, `page_nav_align`, `page_nav_number`, `page_nav_font_size`, `page_nav_font_style`, `page_nav_font_color`, `page_nav_font_weight`, `page_nav_border_width`, `page_nav_border_style`, `page_nav_border_color`, `page_nav_border_radius`, `page_nav_margin`, `page_nav_padding`, `page_nav_button_bg_color`, `page_nav_button_bg_transparent`, `page_nav_box_shadow`, `page_nav_button_transition`, `page_nav_button_text`, `lightbox_overlay_bg_color`, `lightbox_overlay_bg_transparent`, `lightbox_bg_color`, `lightbox_ctrl_btn_pos`, `lightbox_ctrl_btn_align`, `lightbox_ctrl_btn_height`, `lightbox_ctrl_btn_margin_top`, `lightbox_ctrl_btn_margin_left`, `lightbox_ctrl_btn_transparent`, `lightbox_ctrl_btn_color`, `lightbox_toggle_btn_height`, `lightbox_toggle_btn_width`, `lightbox_ctrl_cont_bg_color`, `lightbox_ctrl_cont_transparent`, `lightbox_ctrl_cont_border_radius`, `lightbox_close_btn_transparent`, `lightbox_close_btn_bg_color`, `lightbox_close_btn_border_width`, `lightbox_close_btn_border_radius`, `lightbox_close_btn_border_style`, `lightbox_close_btn_border_color`, `lightbox_close_btn_box_shadow`, `lightbox_close_btn_color`, `lightbox_close_btn_size`, `lightbox_close_btn_width`, `lightbox_close_btn_height`, `lightbox_close_btn_top`, `lightbox_close_btn_right`, `lightbox_close_btn_full_color`, `lightbox_rl_btn_bg_color`, `lightbox_rl_btn_transparent`, `lightbox_rl_btn_border_radius`, `lightbox_rl_btn_border_width`, `lightbox_rl_btn_border_style`, `lightbox_rl_btn_border_color`, `lightbox_rl_btn_box_shadow`, `lightbox_rl_btn_color`, `lightbox_rl_btn_height`, `lightbox_rl_btn_width`, `lightbox_rl_btn_size`, `lightbox_close_rl_btn_hover_color`, `lightbox_comment_pos`, `lightbox_comment_width`, `lightbox_comment_bg_color`, `lightbox_comment_font_color`, `lightbox_comment_font_style`, `lightbox_comment_font_size`, `lightbox_comment_button_bg_color`, `lightbox_comment_button_border_color`, `lightbox_comment_button_border_width`, `lightbox_comment_button_border_style`, `lightbox_comment_button_border_radius`, `lightbox_comment_button_padding`, `lightbox_comment_input_bg_color`, `lightbox_comment_input_border_color`, `lightbox_comment_input_border_width`, `lightbox_comment_input_border_style`, `lightbox_comment_input_border_radius`, `lightbox_comment_input_padding`, `lightbox_comment_separator_width`, `lightbox_comment_separator_style`, `lightbox_comment_separator_color`, `lightbox_comment_author_font_size`, `lightbox_comment_date_font_size`, `lightbox_comment_body_font_size`, `lightbox_comment_share_button_color`, `lightbox_filmstrip_pos`, `lightbox_filmstrip_rl_bg_color`, `lightbox_filmstrip_rl_btn_size`, `lightbox_filmstrip_rl_btn_color`, `lightbox_filmstrip_thumb_margin`, `lightbox_filmstrip_thumb_border_width`, `lightbox_filmstrip_thumb_border_style`, `lightbox_filmstrip_thumb_border_color`, `lightbox_filmstrip_thumb_border_radius`, `lightbox_filmstrip_thumb_deactive_transparent`, `lightbox_filmstrip_thumb_active_border_width`, `lightbox_filmstrip_thumb_active_border_color`, `lightbox_rl_btn_style`, `album_compact_back_font_color`, `album_compact_back_font_style`, `album_compact_back_font_size`, `album_compact_back_font_weight`, `album_compact_back_padding`, `album_compact_title_font_color`, `album_compact_title_font_style`, `album_compact_thumb_title_pos`, `album_compact_title_font_size`, `album_compact_title_font_weight`, `album_compact_title_margin`, `album_compact_title_shadow`, `album_compact_thumb_margin`, `album_compact_thumb_padding`, `album_compact_thumb_border_radius`, `album_compact_thumb_border_width`, `album_compact_thumb_border_style`, `album_compact_thumb_border_color`, `album_compact_thumb_bg_color`, `album_compact_thumbs_bg_color`, `album_compact_thumb_bg_transparent`, `album_compact_thumb_box_shadow`, `album_compact_thumb_transparent`, `album_compact_thumb_align`, `album_compact_thumb_hover_effect`, `album_compact_thumb_hover_effect_value`, `album_compact_thumb_transition`, `album_extended_thumb_margin`, `album_extended_thumb_padding`, `album_extended_thumb_border_radius`, `album_extended_thumb_border_width`, `album_extended_thumb_border_style`, `album_extended_thumb_border_color`, `album_extended_thumb_bg_color`, `album_extended_thumbs_bg_color`, `album_extended_thumb_bg_transparent`, `album_extended_thumb_box_shadow`, `album_extended_thumb_transparent`, `album_extended_thumb_align`, `album_extended_thumb_hover_effect`, `album_extended_thumb_hover_effect_value`, `album_extended_thumb_transition`, `album_extended_back_font_color`, `album_extended_back_font_style`, `album_extended_back_font_size`, `album_extended_back_font_weight`, `album_extended_back_padding`, `album_extended_div_bg_color`, `album_extended_div_bg_transparent`, `album_extended_div_border_radius`, `album_extended_div_margin`, `album_extended_div_padding`, `album_extended_div_separator_width`, `album_extended_div_separator_style`, `album_extended_div_separator_color`, `album_extended_thumb_div_bg_color`, `album_extended_thumb_div_border_radius`, `album_extended_thumb_div_border_width`, `album_extended_thumb_div_border_style`, `album_extended_thumb_div_border_color`, `album_extended_thumb_div_padding`, `album_extended_text_div_bg_color`, `album_extended_text_div_border_radius`, `album_extended_text_div_border_width`, `album_extended_text_div_border_style`, `album_extended_text_div_border_color`, `album_extended_text_div_padding`, `album_extended_title_span_border_width`, `album_extended_title_span_border_style`, `album_extended_title_span_border_color`, `album_extended_title_font_color`, `album_extended_title_font_style`, `album_extended_title_font_size`, `album_extended_title_font_weight`, `album_extended_title_margin_bottom`, `album_extended_title_padding`, `album_extended_desc_span_border_width`, `album_extended_desc_span_border_style`, `album_extended_desc_span_border_color`, `album_extended_desc_font_color`, `album_extended_desc_font_style`, `album_extended_desc_font_size`, `album_extended_desc_font_weight`, `album_extended_desc_padding`, `album_extended_desc_more_color`, `album_extended_desc_more_size`, `masonry_thumb_padding`, `masonry_thumb_border_radius`, `masonry_thumb_border_width`, `masonry_thumb_border_style`, `masonry_thumb_border_color`, `masonry_thumbs_bg_color`, `masonry_thumb_bg_transparent`, `masonry_thumb_transparent`, `masonry_thumb_align`, `masonry_thumb_hover_effect`, `masonry_thumb_hover_effect_value`, `masonry_thumb_transition`, `slideshow_cont_bg_color`, `slideshow_close_btn_transparent`, `slideshow_rl_btn_bg_color`, `slideshow_rl_btn_border_radius`, `slideshow_rl_btn_border_width`, `slideshow_rl_btn_border_style`, `slideshow_rl_btn_border_color`, `slideshow_rl_btn_box_shadow`, `slideshow_rl_btn_color`, `slideshow_rl_btn_height`, `slideshow_rl_btn_size`, `slideshow_rl_btn_width`, `slideshow_close_rl_btn_hover_color`, `slideshow_filmstrip_pos`, `slideshow_filmstrip_thumb_border_width`, `slideshow_filmstrip_thumb_border_style`, `slideshow_filmstrip_thumb_border_color`, `slideshow_filmstrip_thumb_border_radius`, `slideshow_filmstrip_thumb_margin`, `slideshow_filmstrip_thumb_active_border_width`, `slideshow_filmstrip_thumb_active_border_color`, `slideshow_filmstrip_thumb_deactive_transparent`, `slideshow_filmstrip_rl_bg_color`, `slideshow_filmstrip_rl_btn_color`, `slideshow_filmstrip_rl_btn_size`, `slideshow_title_font_size`, `slideshow_title_font`, `slideshow_title_color`, `slideshow_title_opacity`, `slideshow_title_border_radius`, `slideshow_title_background_color`, `slideshow_title_padding`, `slideshow_description_font_size`, `slideshow_description_font`, `slideshow_description_color`, `slideshow_description_opacity`, `slideshow_description_border_radius`, `slideshow_description_background_color`, `slideshow_description_padding`, `slideshow_dots_width`, `slideshow_dots_height`, `slideshow_dots_border_radius`, `slideshow_dots_background_color`, `slideshow_dots_margin`, `slideshow_dots_active_background_color`, `slideshow_dots_active_border_width`, `slideshow_dots_active_border_color`, `slideshow_play_pause_btn_size`, `slideshow_rl_btn_style`, `blog_style_margin`, `blog_style_padding`, `blog_style_border_radius`, `blog_style_border_width`, `blog_style_border_style`, `blog_style_border_color`, `blog_style_bg_color`, `blog_style_box_shadow`, `blog_style_transparent`, `blog_style_align`, `blog_style_share_buttons_bg_color`, `blog_style_share_buttons_margin`, `blog_style_share_buttons_border_radius`, `blog_style_share_buttons_border_width`, `blog_style_share_buttons_border_style`, `blog_style_share_buttons_border_color`, `blog_style_share_buttons_align`, `blog_style_img_font_size`, `blog_style_img_font_family`, `blog_style_img_font_color`, `blog_style_share_buttons_color`, `blog_style_share_buttons_bg_transparent`, `blog_style_share_buttons_font_size`, `image_browser_margin`, `image_browser_padding`, `image_browser_border_radius`, `image_browser_border_width`, `image_browser_border_style`, `image_browser_border_color`, `image_browser_bg_color`, `image_browser_box_shadow`, `image_browser_transparent`, `image_browser_align`, `image_browser_image_description_margin`, `image_browser_image_description_padding`, `image_browser_image_description_border_radius`, `image_browser_image_description_border_width`, `image_browser_image_description_border_style`, `image_browser_image_description_border_color`, `image_browser_image_description_bg_color`, `image_browser_image_description_align`, `image_browser_img_font_size`, `image_browser_img_font_family`, `image_browser_img_font_color`, `image_browser_full_padding`, `image_browser_full_border_radius`, `image_browser_full_border_width`, `image_browser_full_border_style`, `image_browser_full_border_color`, `image_browser_full_bg_color`, `image_browser_full_transparent`, `lightbox_info_pos`, `lightbox_info_align`, `lightbox_info_bg_color`, `lightbox_info_bg_transparent`, `lightbox_info_border_width`, `lightbox_info_border_style`, `lightbox_info_border_color`, `lightbox_info_border_radius`, `lightbox_info_padding`, `lightbox_info_margin`, `lightbox_title_color`, `lightbox_title_font_style`, `lightbox_title_font_weight`, `lightbox_title_font_size`, `lightbox_description_color`, `lightbox_description_font_style`, `lightbox_description_font_weight`, `lightbox_description_font_size`, `lightbox_rate_pos`, `lightbox_rate_align`, `lightbox_rate_icon`, `lightbox_rate_color`, `lightbox_rate_size`, `lightbox_rate_stars_count`, `lightbox_rate_padding`, `lightbox_rate_hover_color`, `lightbox_hit_pos`, `lightbox_hit_align`, `lightbox_hit_bg_color`, `lightbox_hit_bg_transparent`, `lightbox_hit_border_width`, `lightbox_hit_border_style`, `lightbox_hit_border_color`, `lightbox_hit_border_radius`, `lightbox_hit_padding`, `lightbox_hit_margin`, `lightbox_hit_color`, `lightbox_hit_font_style`, `lightbox_hit_font_weight`, `lightbox_hit_font_size`, `masonry_description_font_size`, `masonry_description_color`, `masonry_description_font_style`, `album_masonry_back_font_color`, `album_masonry_back_font_style`, `album_masonry_back_font_size`, `album_masonry_back_font_weight`, `album_masonry_back_padding`, `album_masonry_title_font_color`, `album_masonry_title_font_style`, `album_masonry_thumb_title_pos`, `album_masonry_title_font_size`, `album_masonry_title_font_weight`, `album_masonry_title_margin`, `album_masonry_title_shadow`, `album_masonry_thumb_margin`, `album_masonry_thumb_padding`, `album_masonry_thumb_border_radius`, `album_masonry_thumb_border_width`, `album_masonry_thumb_border_style`, `album_masonry_thumb_border_color`, `album_masonry_thumb_bg_color`, `album_masonry_thumbs_bg_color`, `album_masonry_thumb_bg_transparent`, `album_masonry_thumb_box_shadow`, `album_masonry_thumb_transparent`, `album_masonry_thumb_align`, `album_masonry_thumb_hover_effect`, `album_masonry_thumb_hover_effect_value`, `album_masonry_thumb_transition`, `default_theme`) VALUES
(1, 'Theme 1', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'solid', 'E3E3E3', '0', '0', '3px 6px', 'FFFFFF', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 100, 'FFFFFF', 14, 100, '000000', 65, 4, 100, '000000', 2, '16px', 'none', 'FFFFFF', '0', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'CCCCCC', 'left', 400, '000000', 'CCCCCC', 'segoe ui', 12, '616161', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '2px', 1, 'solid', '383838', 14, 10, 12, 'CCCCCC', 'top', '3B3B3B', 20, 'FFFFFF', '0 1px', 1, 'solid', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, 2, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '', 100, 'left', 'scale', '1.1', 0, '000000', 'segoe ui', 20, 'bold', '0', 'FFFFFF', 0, '0 0 0 0', '0 0 5px 0', 10, 1, 'solid', 'E0E0E0', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 'FFFFFF', '0', 1, 'solid', 'E8E8E8', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'F2D22E', 12, 4, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 0, 100, 'center', 'scale', '1.1', 0, '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '0px 0px 0px #000000', 'FFFFFF', 40, 20, 40, 'CCCCCC', 'top', 1, 'solid', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '3B3B3B', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '0 0 0 0', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 12, 12, '5px', 'F2D22E', 3, 'FFFFFF', 1, '000000', 60, 'fa-chevron', '2px', '0', '0', 1, 'solid', 'F5F5F5', 'FFFFFF', '', 80, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'B3AFAF', 0, 20, '2px auto', '4px', '0', 1, 'none', 'F5F5F5', 'EBEBEB', '', 80, 'center', '0px 5px 0px 5px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'EBEBEB', 'center', 15, 'segoe ui', '000000', '4px', '0', 2, 'none', 'F7F7F7', 'F5F5F5', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 12, 'CCCCCC', 'segoe ui', '000000', 'segoe ui', 16, 'bold', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '2px', '0px 0px 0px #888888', 4, 0, '0', 0, 'none', 'CCCCCC', 'FFFFFF', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'scale', '1.1', 0, 1),
(2, 'Theme 2', 4, 4, '0', 5, 'none', 'FFFFFF', 'E8E8E8', 'FFFFFF', 0, '0px 0px 0px #888888', 100, 'center', 'rotate', '2deg', 1, 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 'bottom', 'center', 0, 12, 'segoe ui', '666666', 'bold', 1, 'none', 'E3E3E3', '0', '0', '3px 6px', 'FCFCFC', 100, '0', 1, 0, '000000', 70, '000000', 'bottom', 'center', 20, 10, 7, 80, 'FFFFFF', 14, 100, '000000', 80, 4, 95, '000000', 0, '16px', 'none', 'FFFFFF', '', 'FFFFFF', 10, 20, 20, '-10', '-10', 'FFFFFF', '000000', 80, '20px', 2, 'none', 'FFFFFF', '', 'FFFFFF', 40, 40, 20, 'FFFFFF', 'left', 400, '000000', 'CCCCCC', 'arial', 12, '333333', '666666', 1, 'none', '3px', '3px 10px', '333333', '666666', 1, 'none', '0', '3px', 1, 'solid', '2B2B2B', 14, 10, 12, 'FFFFFF', 'top', '2B2B2B', 20, 'FFFFFF', '0 1px', 1, 'none', '000000', '0', 80, 0, 'FFFFFF', 'fa-chevron', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, 2, 4, '0', 4, 'none', 'E8E8E8', 'E8E8E8', 'FFFFFF', 100, '', 100, 'left', 'rotate', '2deg', 0, '000000', 'segoe ui', 16, 'bold', '0', 'FFFFFF', 0, '0', '0 0 5px 0', 10, 1, 'none', 'CCCCCC', 'FFFFFF', '0', 0, 'none', 'CCCCCC', '0', 'FFFFFF', '0', 1, 'none', 'CCCCCC', '5px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 16, 'bold', 2, '2px', 1, 'none', 'CCCCCC', '000000', 'segoe ui', 14, 'normal', '2px', 'FFC933', 12, 4, '2px', 1, 'none', 'CCCCCC', 'FFFFFF', 0, 80, 'center', 'rotate', '2deg', 0, '000000', 100, '000000', '20px', 0, 'none', 'FFFFFF', '', 'FFFFFF', 40, 20, 40, 'DBDBDB', 'bottom', 1, 'none', '000000', '0', '0 1px', 0, 'FFFFFF', 80, '303030', 'FFFFFF', 20, 16, 'segoe ui', 'FFFFFF', 70, '5px', '000000', '5px 10px 5px 10px', 14, 'segoe ui', 'FFFFFF', 70, '0', '000000', '5px 10px 5px 10px', 10, 10, '10px', '292929', 1, '292929', 2, 'FFC933', 60, 'fa-chevron', '2px', '4px', '0', 1, 'none', 'CCCCCC', 'E8E8E8', '', 70, 'center', 'FFFFFF', '5px auto 10px auto', '0', 0, 'none', '000000', 'right', 16, 'segoe ui', '000000', 'A1A1A1', 0, 20, '2px auto', '4px', '2px', 1, 'none', 'E8E8E8', 'E8E8E8', '', 80, 'center', '24px 0px 0px 0px', '8px 8px 8px 8px', '0', 1, 'none', 'FFFFFF', 'E8E8E8', 'center', 14, 'segoe ui', '000000', '4px', '0', 1, 'solid', 'EDEDED', 'FFFFFF', 90, 'top', 'right', '000000', 70, 1, 'none', '000000', '5px', '5px', '15px', 'FFFFFF', 'segoe ui', 'bold', 18, 'FFFFFF', 'segoe ui', 'normal', 14, 'bottom', 'right', 'star', 'F9D062', 20, 5, '15px', 'F7B50E', 'bottom', 'left', '000000', 70, 1, 'none', '000000', '5px', '5px', '0 5px', 'FFFFFF', 'segoe ui', 'normal', 14, 12, 'CCCCCC', 'segoe ui', '000000', 'segoe ui', 14, 'normal', '0', 'CCCCCC', 'segoe ui', 'bottom', 16, 'bold', '5px', '', 4, 4, '0', 1, 'none', '000000', 'E8E8E8', 'FFFFFF', 100, '', 100, 'center', 'rotate', '2deg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-01-14 00:51:37', '2015-01-14 00:51:37', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress/', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress/', 'yes'),
(3, 'blogname', 'Mahasiswa Pecinta Islam', 'yes'),
(4, 'blogdescription', 'Al Kitab Al hadi Assaif Annashir', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mpi_pusat@ymail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"photo-gallery/photo-gallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:69:"C:\\xampp\\apps\\wordpress\\htdocs/wp-content/themes/profitmag/header.php";i:1;s:68:"C:\\xampp\\apps\\wordpress\\htdocs/wp-content/themes/profitmag/style.css";i:3;s:80:"C:\\xampp\\apps\\wordpress\\htdocs/wp-content/themes/profitmag/inc/custom-header.php";i:4;s:79:"C:\\xampp\\apps\\wordpress\\htdocs/wp-content/plugins/wpcat2tag-importer/readme.txt";i:5;s:91:"C:\\xampp\\apps\\wordpress\\htdocs/wp-content/plugins/wpcat2tag-importer/wpcat2tag-importer.php";}', 'no'),
(41, 'template', 'profitmag', 'yes'),
(42, 'stylesheet', 'profitmag', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, '_transient_random_seed', 'd0207be65ed0045a6bc1ec07cc27ed41', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:17:{s:19:"wp_inactive_widgets";a:3:{i:0;s:17:"recent-comments-2";i:1;s:12:"categories-2";i:2;s:10:"archives-2";}s:17:"right-sidebar-top";a:4:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:11:"tag_cloud-3";i:3;s:6:"meta-2";}s:20:"right-sidebar-middle";N;s:16:"left-sidebar-top";N;s:19:"left-sidebar-middle";N;s:12:"home-popular";N;s:14:"fo-top-col-one";N;s:14:"fo-top-col-two";N;s:16:"fo-top-col-three";N;s:15:"fo-top-col-four";N;s:15:"fo-top-col-five";N;s:14:"fo-top-col-six";N;s:17:"fo-bottom-col-one";N;s:17:"fo-bottom-col-two";N;s:19:"fo-bottom-col-three";N;s:18:"fo-bottom-col-four";N;s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1421392200;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1421405001;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1421405189;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1421412893;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(98, 'rewrite_rules', 'a:70:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.1.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.1-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.1";s:7:"version";s:3:"4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1421369802;s:15:"version_checked";s:3:"4.1";s:12:"translations";a:0:{}}', 'yes'),
(114, '_site_transient_timeout_browser_cd94554e3128d66afcbaab0c67c94302', '1421837003', 'yes'),
(115, '_site_transient_browser_cd94554e3128d66afcbaab0c67c94302', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"35.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(118, 'can_compress_scripts', '1', 'yes'),
(131, '_transient_timeout_plugin_slugs', '1421424486', 'no'),
(132, '_transient_plugin_slugs', 'a:13:{i:0;s:19:"akismet/akismet.php";i:1;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:2;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:3;s:41:"wpcat2tag-importer/wpcat2tag-importer.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:50:"google-analytics-for-wordpress/googleanalytics.php";i:6;s:36:"google-sitemap-generator/sitemap.php";i:7;s:9:"hello.php";i:8;s:19:"jetpack/jetpack.php";i:9;s:31:"photo-gallery/photo-gallery.php";i:10;s:27:"simple-tags/simple-tags.php";i:11;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:12;s:19:"wptouch/wptouch.php";}', 'no'),
(136, '_transient_twentyfifteen_categories', '1', 'yes'),
(137, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1421232315;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(138, 'current_theme', 'ProfitMag', 'yes'),
(139, 'theme_mods_twentyfourteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1421330297;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(148, '_transient_twentyfourteen_category_count', '1', 'yes'),
(156, '_site_transient_timeout_wporg_theme_feature_list', '1421339989', 'yes'),
(157, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(158, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1421369809;s:7:"checked";a:4:{s:9:"profitmag";s:4:"1.03";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(159, 'theme_mods_profitmag', 'a:4:{i:0;b:0;s:16:"header_textcolor";s:6:"000000";s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(170, 'category_children', 'a:0:{}', 'yes'),
(171, '_site_transient_timeout_popular_importers_en_US', '1421506892', 'yes'),
(172, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(174, 'recently_activated', 'a:0:{}', 'yes'),
(183, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1421348765', 'yes'),
(184, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4851";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3015";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2967";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2471";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2299";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1879";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1692";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1646";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1639";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1623";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1584";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1564";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1469";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1290";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1243";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1158";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1134";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1065";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1051";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"888";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"883";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"864";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"826";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"823";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"772";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"741";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"740";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"694";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"682";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"662";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"655";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"645";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"640";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"630";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"630";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"616";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"608";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"590";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"583";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"577";}}', 'yes'),
(185, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1421369807;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:13:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip";}s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";O:8:"stdClass":6:{s:2:"id";s:5:"46859";s:4:"slug";s:23:"all-in-one-wp-migration";s:6:"plugin";s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";s:11:"new_version";s:5:"2.0.4";s:3:"url";s:54:"https://wordpress.org/plugins/all-in-one-wp-migration/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.2.0.4.zip";}s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";O:8:"stdClass":6:{s:2:"id";s:3:"520";s:4:"slug";s:19:"all-in-one-seo-pack";s:6:"plugin";s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";s:11:"new_version";s:7:"2.2.4.2";s:3:"url";s:50:"https://wordpress.org/plugins/all-in-one-seo-pack/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.zip";}s:41:"wpcat2tag-importer/wpcat2tag-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14976";s:4:"slug";s:18:"wpcat2tag-importer";s:6:"plugin";s:41:"wpcat2tag-importer/wpcat2tag-importer.php";s:11:"new_version";s:3:"0.5";s:3:"url";s:49:"https://wordpress.org/plugins/wpcat2tag-importer/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/wpcat2tag-importer.0.5.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.0.3.zip";}s:50:"google-analytics-for-wordpress/googleanalytics.php";O:8:"stdClass":6:{s:2:"id";s:3:"965";s:4:"slug";s:30:"google-analytics-for-wordpress";s:6:"plugin";s:50:"google-analytics-for-wordpress/googleanalytics.php";s:11:"new_version";s:5:"5.2.8";s:3:"url";s:61:"https://wordpress.org/plugins/google-analytics-for-wordpress/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.5.2.8.zip";}s:36:"google-sitemap-generator/sitemap.php";O:8:"stdClass":6:{s:2:"id";s:3:"132";s:4:"slug";s:24:"google-sitemap-generator";s:6:"plugin";s:36:"google-sitemap-generator/sitemap.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:55:"https://wordpress.org/plugins/google-sitemap-generator/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.0.8.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:19:"jetpack/jetpack.php";O:8:"stdClass":6:{s:2:"id";s:5:"20101";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.3.3.zip";}s:31:"photo-gallery/photo-gallery.php";O:8:"stdClass":6:{s:2:"id";s:5:"47473";s:4:"slug";s:13:"photo-gallery";s:6:"plugin";s:31:"photo-gallery/photo-gallery.php";s:11:"new_version";s:5:"1.2.8";s:3:"url";s:44:"https://wordpress.org/plugins/photo-gallery/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/photo-gallery.1.2.8.zip";}s:27:"simple-tags/simple-tags.php";O:8:"stdClass":6:{s:2:"id";s:4:"1112";s:4:"slug";s:11:"simple-tags";s:6:"plugin";s:27:"simple-tags/simple-tags.php";s:11:"new_version";s:3:"2.4";s:3:"url";s:42:"https://wordpress.org/plugins/simple-tags/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/simple-tags.2.4.1.zip";}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":7:{s:2:"id";s:3:"951";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"0.9.5";s:14:"upgrade_notice";s:38:"Minor security fix, hat tip JD Grimes.";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-mail-smtp.0.9.5.zip";}s:19:"wptouch/wptouch.php";O:8:"stdClass":6:{s:2:"id";s:4:"3265";s:4:"slug";s:7:"wptouch";s:6:"plugin";s:19:"wptouch/wptouch.php";s:11:"new_version";s:5:"3.6.5";s:3:"url";s:38:"https://wordpress.org/plugins/wptouch/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/wptouch.3.6.5.zip";}}}', 'yes'),
(186, 'wd_bwg_version', '1.2.8', 'no'),
(187, 'wd_bwg_theme_version', '1.0.0', 'no'),
(189, '_transient_is_multi_author', '0', 'yes'),
(190, '_transient_profitmag_categories', '2', 'yes'),
(191, 'profitmag_options', 'a:63:{s:14:"webpage_layout";s:9:"Fullwidth";s:11:"show_search";i:1;s:14:"menu_alignment";s:4:"Left";s:12:"media_upload";s:0:"";s:16:"footer_copyright";s:23:"Mahasiswa Pecinta Islam";s:21:"featured_block_beside";s:1:"0";s:18:"featured_block_one";s:1:"0";s:15:"no_of_block_one";i:6;s:18:"featured_block_two";s:1:"0";s:15:"no_of_block_two";i:6;s:20:"featured_block_three";s:1:"0";s:17:"no_of_block_three";i:10;s:19:"featured_block_four";s:1:"0";s:16:"no_of_block_four";i:7;s:19:"featured_block_left";s:1:"0";s:16:"no_of_block_left";s:1:"3";s:20:"featured_block_right";s:1:"0";s:17:"no_of_block_right";i:3;s:14:"slider_options";s:18:"single_post_slider";s:7:"slider1";s:1:"0";s:7:"slider2";s:1:"0";s:7:"slider3";s:1:"0";s:7:"slider4";s:1:"0";s:10:"slider_cat";s:1:"0";s:20:"slider_show_controls";s:3:"yes";s:11:"slider_auto";s:3:"yes";s:12:"slider_speed";i:2000;s:14:"sidebar_layout";s:13:"right_sidebar";s:17:"left_cat_post_one";s:1:"0";s:23:"left_no_of_cat_post_one";i:3;s:23:"left_sidebar_middle_ads";s:0:"";s:17:"left_cat_post_two";s:1:"0";s:23:"left_no_of_cat_post_two";i:3;s:27:"left_sidebar_bottom_ads_one";s:0:"";s:27:"left_sidebar_bottom_ads_two";s:0:"";s:18:"right_cat_post_one";s:1:"0";s:24:"right_no_of_cat_post_one";i:3;s:24:"right_sidebar_middle_ads";s:0:"";s:18:"right_cat_post_two";s:1:"0";s:24:"right_no_of_cat_post_two";i:3;s:28:"right_sidebar_bottom_ads_one";s:0:"";s:28:"right_sidebar_bottom_ads_two";s:0:"";s:10:"header_ads";s:0:"";s:15:"mid_section_ads";s:0:"";s:8:"facebook";s:46:"https://www.facebook.com/MahasiswaPecintaIslam";s:7:"twitter";s:0:"";s:5:"gplus";s:0:"";s:7:"youtube";s:0:"";s:9:"pinterest";s:0:"";s:6:"flickr";s:0:"";s:5:"vimeo";s:0:"";s:11:"stumbleupon";s:0:"";s:7:"dribble";s:0:"";s:6:"tumblr";s:0:"";s:8:"linkedin";s:0:"";s:11:"sound_cloud";s:0:"";s:5:"skype";s:0:"";s:3:"rss";s:0:"";s:10:"custom_css";s:0:"";s:11:"custom_code";s:0:"";s:17:"responsive_design";i:0;s:11:"tc_activate";i:0;s:18:"show_social_header";i:0;}', 'yes'),
(192, '_transient_timeout_settings_errors', '1421338715', 'no'),
(193, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no'),
(196, 'widget_tag_cloud', 'a:2:{i:3;a:2:{s:5:"title";s:3:"Tag";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(199, '_site_transient_timeout_theme_roots', '1421370775', 'yes'),
(200, '_site_transient_theme_roots', 'a:4:{s:9:"profitmag";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1421232238:1'),
(3, 4, '_edit_last', '1'),
(4, 4, '_wp_page_template', 'default'),
(5, 4, '_edit_lock', '1421232339:1'),
(13, 8, '_menu_item_type', 'taxonomy'),
(14, 8, '_menu_item_menu_item_parent', '0'),
(15, 8, '_menu_item_object_id', '6'),
(16, 8, '_menu_item_object', 'category'),
(17, 8, '_menu_item_target', ''),
(18, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 8, '_menu_item_xfn', ''),
(20, 8, '_menu_item_url', ''),
(22, 9, '_menu_item_type', 'taxonomy'),
(23, 9, '_menu_item_menu_item_parent', '0'),
(24, 9, '_menu_item_object_id', '3'),
(25, 9, '_menu_item_object', 'category'),
(26, 9, '_menu_item_target', ''),
(27, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 9, '_menu_item_xfn', ''),
(29, 9, '_menu_item_url', ''),
(31, 10, '_menu_item_type', 'taxonomy'),
(32, 10, '_menu_item_menu_item_parent', '0'),
(33, 10, '_menu_item_object_id', '5'),
(34, 10, '_menu_item_object', 'category'),
(35, 10, '_menu_item_target', ''),
(36, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 10, '_menu_item_xfn', ''),
(38, 10, '_menu_item_url', ''),
(40, 11, '_menu_item_type', 'taxonomy'),
(41, 11, '_menu_item_menu_item_parent', '0'),
(42, 11, '_menu_item_object_id', '4'),
(43, 11, '_menu_item_object', 'category'),
(44, 11, '_menu_item_target', ''),
(45, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 11, '_menu_item_xfn', ''),
(47, 11, '_menu_item_url', ''),
(49, 12, '_menu_item_type', 'custom'),
(50, 12, '_menu_item_menu_item_parent', '0'),
(51, 12, '_menu_item_object_id', '12'),
(52, 12, '_menu_item_object', 'custom'),
(53, 12, '_menu_item_target', ''),
(54, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 12, '_menu_item_xfn', ''),
(56, 12, '_menu_item_url', 'http://127.0.0.1/wordpress/'),
(58, 13, '_menu_item_type', 'post_type'),
(59, 13, '_menu_item_menu_item_parent', '0'),
(60, 13, '_menu_item_object_id', '2'),
(61, 13, '_menu_item_object', 'page'),
(62, 13, '_menu_item_target', ''),
(63, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 13, '_menu_item_xfn', ''),
(65, 13, '_menu_item_url', ''),
(66, 13, '_menu_item_orphaned', '1421335811'),
(67, 2, '_wp_trash_meta_status', 'publish'),
(68, 2, '_wp_trash_meta_time', '1421335842'),
(69, 4, '_wp_trash_meta_status', 'publish'),
(70, 4, '_wp_trash_meta_time', '1421335842'),
(71, 15, '_edit_last', '1'),
(72, 15, '_edit_lock', '1421336308:1'),
(73, 16, '_menu_item_type', 'post_type'),
(74, 16, '_menu_item_menu_item_parent', '0'),
(75, 16, '_menu_item_object_id', '15'),
(76, 16, '_menu_item_object', 'page'),
(77, 16, '_menu_item_target', ''),
(78, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 16, '_menu_item_xfn', ''),
(80, 16, '_menu_item_url', ''),
(81, 18, '_edit_last', '1'),
(82, 18, '_edit_lock', '1421336465:1'),
(83, 20, '_edit_last', '1'),
(84, 20, '_edit_lock', '1421336556:1'),
(85, 22, '_menu_item_type', 'post_type'),
(86, 22, '_menu_item_menu_item_parent', '0'),
(87, 22, '_menu_item_object_id', '15'),
(88, 22, '_menu_item_object', 'page'),
(89, 22, '_menu_item_target', ''),
(90, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 22, '_menu_item_xfn', ''),
(92, 22, '_menu_item_url', ''),
(93, 22, '_menu_item_orphaned', '1421336827'),
(94, 23, '_menu_item_type', 'post_type'),
(95, 23, '_menu_item_menu_item_parent', '16'),
(96, 23, '_menu_item_object_id', '20'),
(97, 23, '_menu_item_object', 'page'),
(98, 23, '_menu_item_target', ''),
(99, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 23, '_menu_item_xfn', ''),
(101, 23, '_menu_item_url', ''),
(103, 24, '_menu_item_type', 'post_type'),
(104, 24, '_menu_item_menu_item_parent', '16'),
(105, 24, '_menu_item_object_id', '18'),
(106, 24, '_menu_item_object', 'page'),
(107, 24, '_menu_item_target', ''),
(108, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 24, '_menu_item_xfn', ''),
(110, 24, '_menu_item_url', ''),
(112, 1, 'post_views_count', '0'),
(113, 25, '_edit_last', '1'),
(114, 25, '_edit_lock', '1421338200:1'),
(117, 27, '_wp_attached_file', '2015/01/altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg'),
(118, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:645;s:4:"file";s:59:"2015/01/altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg";s:5:"sizes";a:18:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-300x242.jpg";s:5:"width";i:300;s:6:"height";i:242;s:9:"mime-type";s:10:"image/jpeg";}s:11:"home-slider";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-660x365.jpg";s:5:"width";i:660;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}s:13:"slider-beside";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-240x172.jpg";s:5:"width";i:240;s:6:"height";i:172;s:9:"mime-type";s:10:"image/jpeg";}s:15:"three-col-thumb";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-265x153.jpg";s:5:"width";i:265;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:14:"five-col-thumb";a:4:{s:4:"file";s:58:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-148x85.jpg";s:5:"width";i:148;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:17:"block4-main-thumb";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-487x304.jpg";s:5:"width";i:487;s:6:"height";i:304;s:9:"mime-type";s:10:"image/jpeg";}s:17:"block4-post-thumb";a:4:{s:4:"file";s:58:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-100x85.jpg";s:5:"width";i:100;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:16:"block-left-right";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-174x111.jpg";s:5:"width";i:174;s:6:"height";i:111;s:9:"mime-type";s:10:"image/jpeg";}s:13:"popular-thumb";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-193x112.jpg";s:5:"width";i:193;s:6:"height";i:112;s:9:"mime-type";s:10:"image/jpeg";}s:12:"gallery-full";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-800x537.jpg";s:5:"width";i:800;s:6:"height";i:537;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:57:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-71x40.jpg";s:5:"width";i:71;s:6:"height";i:40;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-thumb";a:4:{s:4:"file";s:57:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-95x62.jpg";s:5:"width";i:95;s:6:"height";i:62;s:9:"mime-type";s:10:"image/jpeg";}s:14:"sidebar-medium";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-272x137.jpg";s:5:"width";i:272;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:15:"sidebar-gallery";a:4:{s:4:"file";s:57:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-83x83.jpg";s:5:"width";i:83;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}s:12:"single-thumb";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-563x353.jpg";s:5:"width";i:563;s:6:"height";i:353;s:9:"mime-type";s:10:"image/jpeg";}s:13:"comment-thumb";a:4:{s:4:"file";s:58:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-117x91.jpg";s:5:"width";i:117;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";}s:13:"archive-thumb";a:4:{s:4:"file";s:59:"altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-200x140.jpg";s:5:"width";i:200;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(119, 28, '_wp_attached_file', '2015/01/cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg'),
(120, 28, '_wp_attachment_context', 'custom-header'),
(121, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:325;s:6:"height";i:311;s:4:"file";s:67:"2015/01/cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-300x287.jpg";s:5:"width";i:300;s:6:"height";i:287;s:9:"mime-type";s:10:"image/jpeg";}s:13:"slider-beside";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-240x172.jpg";s:5:"width";i:240;s:6:"height";i:172;s:9:"mime-type";s:10:"image/jpeg";}s:15:"three-col-thumb";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-265x153.jpg";s:5:"width";i:265;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:14:"five-col-thumb";a:4:{s:4:"file";s:66:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-148x85.jpg";s:5:"width";i:148;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:17:"block4-main-thumb";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-325x304.jpg";s:5:"width";i:325;s:6:"height";i:304;s:9:"mime-type";s:10:"image/jpeg";}s:17:"block4-post-thumb";a:4:{s:4:"file";s:66:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-100x85.jpg";s:5:"width";i:100;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:16:"block-left-right";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-174x111.jpg";s:5:"width";i:174;s:6:"height";i:111;s:9:"mime-type";s:10:"image/jpeg";}s:13:"popular-thumb";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-193x112.jpg";s:5:"width";i:193;s:6:"height";i:112;s:9:"mime-type";s:10:"image/jpeg";}s:13:"gallery-thumb";a:4:{s:4:"file";s:65:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-71x40.jpg";s:5:"width";i:71;s:6:"height";i:40;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-thumb";a:4:{s:4:"file";s:65:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-95x62.jpg";s:5:"width";i:95;s:6:"height";i:62;s:9:"mime-type";s:10:"image/jpeg";}s:14:"sidebar-medium";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-272x137.jpg";s:5:"width";i:272;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:15:"sidebar-gallery";a:4:{s:4:"file";s:65:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-83x83.jpg";s:5:"width";i:83;s:6:"height";i:83;s:9:"mime-type";s:10:"image/jpeg";}s:13:"comment-thumb";a:4:{s:4:"file";s:66:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-117x91.jpg";s:5:"width";i:117;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";}s:13:"archive-thumb";a:4:{s:4:"file";s:67:"cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl-200x140.jpg";s:5:"width";i:200;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-01-14 00:51:37', '2015-01-14 00:51:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-01-14 00:51:37', '2015-01-14 00:51:37', '', 0, 'http:/?p=1', 0, 'post', '', 1),
(2, 1, '2015-01-14 00:51:37', '2015-01-14 00:51:37', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http:/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-01-15 15:30:42', '2015-01-15 15:30:42', '', 0, 'http:/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-01-14 10:43:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-01-14 10:43:23', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2015-01-14 10:46:51', '2015-01-14 10:46:51', '', 'sample subpage', '', 'trash', 'open', 'open', '', 'sample-subpage', '', '', '2015-01-15 15:30:42', '2015-01-15 15:30:42', '', 2, 'http://127.0.0.1/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-01-14 10:46:51', '2015-01-14 10:46:51', '', 'sample subpage', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-01-14 10:46:51', '2015-01-14 10:46:51', '', 4, 'http://127.0.0.1/wordpress/2015/01/14/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-01-15 15:28:36', '2015-01-15 15:28:36', 'Pengumuman resmi dari MPI Pusat dan daerah', 'I''lan', '', 'publish', 'open', 'open', '', 'ilan', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 0, 'http://127.0.0.1/wordpress/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2015-01-15 15:28:36', '2015-01-15 15:28:36', 'berita dan laporan mengenai kegiatan MPI baik daerah maupun pusat', '', '', 'publish', 'open', 'open', '', '9', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 0, 'http://127.0.0.1/wordpress/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2015-01-15 15:28:37', '2015-01-15 15:28:37', 'tulisan yang bersifat keilmuan', '', '', 'publish', 'open', 'open', '', '10', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 0, 'http://127.0.0.1/wordpress/?p=10', 4, 'nav_menu_item', '', 0),
(11, 1, '2015-01-15 15:28:37', '2015-01-15 15:28:37', 'Artikel yang memuat opini dari MPI dan anggotanya', '', '', 'publish', 'open', 'open', '', '11', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 0, 'http://127.0.0.1/wordpress/?p=11', 5, 'nav_menu_item', '', 0),
(12, 1, '2015-01-15 15:30:19', '2015-01-15 15:30:19', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 0, 'http://127.0.0.1/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2015-01-15 15:30:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-01-15 15:30:10', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2015-01-15 15:30:42', '2015-01-15 15:30:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http:/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-01-15 15:30:42', '2015-01-15 15:30:42', '', 2, 'http://127.0.0.1/wordpress/2015/01/15/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-01-15 15:40:43', '2015-01-15 15:40:43', 'Mahasiswa Pecinta Islam (MPI) adalah organisasi dakwah dan pergerakan mahasiswa yang didirikan dalam rangka ikut berpartisipasi menegakkan Islam bersama dengan elemen umat Islam lain, sesuai kompetensi mahasiswa. Tujuan pendirian MPI bukan menjadikan mahasiswa sebagai santri-santri yang hanya belajar Islam namun melalaikan kuliahnya. MPI bertujuan untuk memoles ilmu dan keahlian mahasiswa dengan spirit cinta dan pembelaan terhadap Islam sehingga akan memberi manfaat seluas-luasnya bagi Islam dan umat islam.\r\n\r\nSemboyan MPI adalah <em>Al-Kitab Al-Hadiy, As-Sayfu An-Nashir</em> [Kitab - Al-Quran - sebagai Petunjuk, Pedang sebagai Penolong]. Maksudnya adalah MPI akan mendakwahkan Islam dengan panduan Al-Qur''an dan menolongnya dengan pedang jika diperlukan. Kalimat ini merupakan kutipan dari perkataan Syaikh Al Islam Ibnu Taymiyyah, yang menggambarkan misi yang dibawa Islam ke panggung dunia.\r\n\r\nSaat ini, MPI telah berdiri di beberapa daerah seperti: Jakarta, Bandung, Banten, Semarang, Solo, Jogja, Malang, Surabaya, Lampung, dan Riau.', 'About us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-01-15 15:40:43', '2015-01-15 15:40:43', '', 0, 'http://127.0.0.1/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-01-15 15:40:43', '2015-01-15 15:40:43', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 0, 'http://127.0.0.1/wordpress/2015/01/15/16/', 6, 'nav_menu_item', '', 0),
(17, 1, '2015-01-15 15:40:43', '2015-01-15 15:40:43', 'Mahasiswa Pecinta Islam (MPI) adalah organisasi dakwah dan pergerakan mahasiswa yang didirikan dalam rangka ikut berpartisipasi menegakkan Islam bersama dengan elemen umat Islam lain, sesuai kompetensi mahasiswa. Tujuan pendirian MPI bukan menjadikan mahasiswa sebagai santri-santri yang hanya belajar Islam namun melalaikan kuliahnya. MPI bertujuan untuk memoles ilmu dan keahlian mahasiswa dengan spirit cinta dan pembelaan terhadap Islam sehingga akan memberi manfaat seluas-luasnya bagi Islam dan umat islam.\r\n\r\nSemboyan MPI adalah <em>Al-Kitab Al-Hadiy, As-Sayfu An-Nashir</em> [Kitab - Al-Quran - sebagai Petunjuk, Pedang sebagai Penolong]. Maksudnya adalah MPI akan mendakwahkan Islam dengan panduan Al-Qur''an dan menolongnya dengan pedang jika diperlukan. Kalimat ini merupakan kutipan dari perkataan Syaikh Al Islam Ibnu Taymiyyah, yang menggambarkan misi yang dibawa Islam ke panggung dunia.\r\n\r\nSaat ini, MPI telah berdiri di beberapa daerah seperti: Jakarta, Bandung, Banten, Semarang, Solo, Jogja, Malang, Surabaya, Lampung, dan Riau.', 'About us', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-15 15:40:43', '2015-01-15 15:40:43', '', 15, 'http://127.0.0.1/wordpress/2015/01/15/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2015-01-15 15:43:08', '2015-01-15 15:43:08', '<ol>\r\n	<li>MPI Jakarta</li>\r\n	<li>MPI Bandung</li>\r\n	<li>MPI Banten</li>\r\n	<li>MPI Semarang</li>\r\n	<li>MPI Solo</li>\r\n	<li>MPI Jogja</li>\r\n	<li>MPI Malang</li>\r\n	<li>MPI Surabaya</li>\r\n	<li>MPI Lampung</li>\r\n	<li>MPI Riau</li>\r\n</ol>', 'Kontak MPI Daerah', '', 'publish', 'open', 'open', '', 'kontak-mpi-daerah', '', '', '2015-01-15 15:43:08', '2015-01-15 15:43:08', '', 15, 'http://127.0.0.1/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2015-01-15 15:43:08', '2015-01-15 15:43:08', '<ol>\r\n	<li>MPI Jakarta</li>\r\n	<li>MPI Bandung</li>\r\n	<li>MPI Banten</li>\r\n	<li>MPI Semarang</li>\r\n	<li>MPI Solo</li>\r\n	<li>MPI Jogja</li>\r\n	<li>MPI Malang</li>\r\n	<li>MPI Surabaya</li>\r\n	<li>MPI Lampung</li>\r\n	<li>MPI Riau</li>\r\n</ol>', 'Kontak MPI Daerah', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-01-15 15:43:08', '2015-01-15 15:43:08', '', 18, 'http://127.0.0.1/wordpress/2015/01/15/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2015-01-15 15:44:15', '2015-01-15 15:44:15', '<ol>\r\n	<li>MPI Jakarta</li>\r\n	<li>MPI Bandung</li>\r\n	<li>MPI Banten</li>\r\n	<li>MPI Semarang</li>\r\n	<li>MPI Solo</li>\r\n	<li>MPI Jogja</li>\r\n	<li>MPI Malang</li>\r\n	<li>MPI Surabaya</li>\r\n	<li>MPI Lampung</li>\r\n	<li>MPI Riau</li>\r\n</ol>', 'Jadwal Kajian Rutin MPI', '', 'publish', 'open', 'open', '', 'jadwal-kajian-rutin-mpi', '', '', '2015-01-15 15:44:15', '2015-01-15 15:44:15', '', 15, 'http://127.0.0.1/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-01-15 15:44:15', '2015-01-15 15:44:15', '<ol>\r\n	<li>MPI Jakarta</li>\r\n	<li>MPI Bandung</li>\r\n	<li>MPI Banten</li>\r\n	<li>MPI Semarang</li>\r\n	<li>MPI Solo</li>\r\n	<li>MPI Jogja</li>\r\n	<li>MPI Malang</li>\r\n	<li>MPI Surabaya</li>\r\n	<li>MPI Lampung</li>\r\n	<li>MPI Riau</li>\r\n</ol>', 'Jadwal Kajian Rutin MPI', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-01-15 15:44:15', '2015-01-15 15:44:15', '', 20, 'http://127.0.0.1/wordpress/2015/01/15/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-01-15 15:47:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-01-15 15:47:06', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2015-01-15 15:48:04', '2015-01-15 15:48:04', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2015-01-15 15:48:04', '2015-01-15 15:48:04', '', 15, 'http://127.0.0.1/wordpress/?p=23', 7, 'nav_menu_item', '', 0),
(24, 1, '2015-01-15 15:48:05', '2015-01-15 15:48:05', ' ', '', '', 'publish', 'open', 'open', '', '24', '', '', '2015-01-15 15:48:05', '2015-01-15 15:48:05', '', 15, 'http://127.0.0.1/wordpress/?p=24', 8, 'nav_menu_item', '', 0),
(25, 1, '2015-01-15 16:11:17', '2015-01-15 16:11:17', 'This post is a test', 'Test Posts', '', 'publish', 'open', 'open', '', 'test-posts', '', '', '2015-01-15 16:11:17', '2015-01-15 16:11:17', '', 0, 'http://127.0.0.1/wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2015-01-15 16:11:17', '2015-01-15 16:11:17', 'This post is a test', 'Test Posts', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-01-15 16:11:17', '2015-01-15 16:11:17', '', 25, 'http://127.0.0.1/wordpress/2015/01/15/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-01-15 16:23:25', '2015-01-15 16:23:25', '', 'altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl', '', 'inherit', 'open', 'open', '', 'altarunr4hjh05gbjznwhygtmypmud9mpp2babgaoexdugl', '', '', '2015-01-15 16:23:25', '2015-01-15 16:23:25', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2015/01/altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2015-01-15 16:23:49', '2015-01-15 16:23:49', 'http://127.0.0.1/wordpress/wp-content/uploads/2015/01/cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg', 'cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg', '', 'inherit', 'open', 'open', '', 'cropped-altarunr4hjh05gbjznwhygtmypmud9mpp2babgaoexdugl-jpg', '', '', '2015-01-15 16:23:49', '2015-01-15 16:23:49', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2015/01/cropped-altArUNr4hJH05gbJZNWhygTMYPMUD9MPp2bABGAOexDUgl.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Posts', 'posts', 0),
(3, 'Kegiatan', 'kegiatan', 0),
(4, 'Opini', 'opini', 0),
(5, 'Makalah', 'makalah', 0),
(6, 'I''lan', 'pengumuman', 0),
(7, 'New Post', 'recent_posts', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(16, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 6, 0),
(25, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'category', 'berita dan laporan mengenai kegiatan MPI baik daerah maupun pusat', 0, 0),
(4, 4, 'category', 'Artikel yang memuat opini dari MPI dan anggotanya', 0, 0),
(5, 5, 'category', 'tulisan yang bersifat keilmuan', 0, 0),
(6, 6, 'category', 'Pengumuman resmi dari MPI Pusat dan daerah', 0, 1),
(7, 7, 'category', 'masukkan postingan baru ke kategori ini, hapus postingan terlama jika telah mencapai 10 postingan baru. ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminwp'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"40e51adeafee3d2c8fbe053a025b8d0be087a432c9d3cc86a112ac56e1459683";a:4:{s:10:"expiration";i:1421405000;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:5:"login";i:1421232200;}s:64:"236495b14e235ded7043d092d448bc05420862de38db8ac86458e580bfa53c20";a:4:{s:10:"expiration";i:1422538763;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:5:"login";i:1421329163;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1421336440');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminwp', '$P$B4Bpeusz6i345UQFXFVhsdC/gN3/xL/', 'adminwp', 'mpi_pusat@ymail.com', '', '2015-01-14 00:51:36', '', 0, 'adminwp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_option`
--
ALTER TABLE `wp_bwg_option`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_option`
--
ALTER TABLE `wp_bwg_option`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
