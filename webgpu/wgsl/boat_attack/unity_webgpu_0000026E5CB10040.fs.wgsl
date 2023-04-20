diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_8,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat19 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat33 : f32;

@group(1) @binding(4) var<uniform> x_288 : LightShadows;

var<private> u_xlatb33 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_352 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_536 : UnityPerDraw;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb19 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_797 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu45 : u32;

fn main_1() {
  var x_83 : f32;
  var x_96 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_439 : f32;
  var x_450 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_931 : f32;
  var x_942 : f32;
  var txVec1 : vec3<f32>;
  var x_1388 : f32;
  var x_1401 : f32;
  var x_1459 : f32;
  var x_1470 : vec3<f32>;
  var x_1603 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb42 = (x_55 == 0.0f);
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat44;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_81 : bool = u_xlatb42;
  if (x_81) {
    let x_87 : f32 = u_xlat2.x;
    x_83 = x_87;
  } else {
    let x_92 : f32 = x_28.unity_MatrixV[0i].z;
    x_83 = x_92;
  }
  let x_93 : f32 = x_83;
  u_xlat3.x = x_93;
  let x_95 : bool = u_xlatb42;
  if (x_95) {
    let x_101 : f32 = u_xlat2.y;
    x_96 = x_101;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_96 = x_105;
  }
  let x_106 : f32 = x_96;
  u_xlat3.y = x_106;
  let x_108 : bool = u_xlatb42;
  if (x_108) {
    let x_113 : f32 = u_xlat2.z;
    x_109 = x_113;
  } else {
    let x_116 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_116;
  }
  let x_117 : f32 = x_109;
  u_xlat3.z = x_117;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat42;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_137 : vec2<f32> = vs_TEXCOORD8;
  let x_139 : f32 = x_28.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_137, x_139);
  u_xlat4 = x_140;
  let x_146 : vec2<f32> = vs_TEXCOORD8;
  let x_148 : f32 = x_28.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_146, x_148);
  u_xlat5 = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec3<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_158, vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : f32 = u_xlat42;
  u_xlat42 = (x_162 + 0.5f);
  let x_165 : f32 = u_xlat42;
  let x_167 : vec3<f32> = u_xlat5;
  let x_168 : vec3<f32> = (vec3<f32>(x_165, x_165, x_165) * x_167);
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : f32 = u_xlat4.w;
  u_xlat42 = max(x_172, 0.00009999999747378752f);
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : f32 = u_xlat42;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) / vec3<f32>(x_177, x_177, x_177));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : f32 = x_42.x_Metallic;
  u_xlat42 = ((-(x_184) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_189 : f32 = u_xlat42;
  let x_192 : f32 = x_42.x_Smoothness;
  u_xlat44 = (-(x_189) + x_192);
  let x_195 : f32 = u_xlat42;
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_195, x_195, x_195) * vec3<f32>(x_197.y, x_197.z, x_197.w));
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = x_42.x_BaseColor;
  let x_208 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : f32 = x_42.x_Metallic;
  let x_214 : f32 = x_42.x_Metallic;
  let x_216 : f32 = x_42.x_Metallic;
  let x_217 : vec3<f32> = vec3<f32>(x_212, x_214, x_216);
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat42 = (-(x_231) + 1.0f);
  let x_236 : f32 = u_xlat42;
  let x_237 : f32 = u_xlat42;
  u_xlat45 = (x_236 * x_237);
  let x_239 : f32 = u_xlat45;
  u_xlat45 = max(x_239, 0.0078125f);
  let x_243 : f32 = u_xlat45;
  let x_244 : f32 = u_xlat45;
  u_xlat46 = (x_243 * x_244);
  let x_246 : f32 = u_xlat44;
  u_xlat44 = (x_246 + 1.0f);
  let x_248 : f32 = u_xlat44;
  u_xlat44 = clamp(x_248, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat45;
  u_xlat5.x = ((x_250 * 4.0f) + 2.0f);
  let x_260 : vec4<f32> = vs_TEXCOORD6;
  let x_261 : vec2<f32> = vec2<f32>(x_260.x, x_260.y);
  let x_264 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_261.x, x_261.y, x_264);
  let x_277 : vec3<f32> = txVec0;
  let x_279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_277.xy, x_277.z);
  u_xlat19 = x_279;
  let x_291 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_291) + 1.0f);
  let x_294 : f32 = u_xlat19;
  let x_296 : f32 = x_288.x_MainLightShadowParams.x;
  let x_298 : f32 = u_xlat33;
  u_xlat19 = ((x_294 * x_296) + x_298);
  let x_302 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_302);
  let x_306 : f32 = vs_TEXCOORD6.z;
  u_xlatb47 = (x_306 >= 1.0f);
  let x_308 : bool = u_xlatb47;
  let x_309 : bool = u_xlatb33;
  u_xlatb33 = (x_308 | x_309);
  let x_311 : bool = u_xlatb33;
  let x_312 : f32 = u_xlat19;
  u_xlat19 = select(x_312, 1.0f, x_311);
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_317 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_319 : vec3<f32> = (x_315 + -(x_317));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat6;
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_322.x, x_322.y, x_322.z), vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_328 : f32 = u_xlat33;
  let x_330 : f32 = x_288.x_MainLightShadowParams.z;
  let x_333 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat47 = ((x_328 * x_330) + x_333);
  let x_335 : f32 = u_xlat47;
  u_xlat47 = clamp(x_335, 0.0f, 1.0f);
  let x_337 : f32 = u_xlat19;
  u_xlat6.x = (-(x_337) + 1.0f);
  let x_341 : f32 = u_xlat47;
  let x_343 : f32 = u_xlat6.x;
  let x_345 : f32 = u_xlat19;
  u_xlat19 = ((x_341 * x_343) + x_345);
  let x_354 : f32 = x_352.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_354 == -1.0f));
  let x_357 : bool = u_xlatb47;
  if (x_357) {
    let x_360 : vec3<f32> = vs_TEXCOORD1;
    let x_363 : vec4<f32> = x_352.x_MainLightWorldToLight[1i];
    let x_365 : vec2<f32> = (vec2<f32>(x_360.y, x_360.y) * vec2<f32>(x_363.x, x_363.y));
    let x_366 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
    let x_369 : vec4<f32> = x_352.x_MainLightWorldToLight[0i];
    let x_371 : vec3<f32> = vs_TEXCOORD1;
    let x_374 : vec4<f32> = u_xlat6;
    let x_376 : vec2<f32> = ((vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_371.x, x_371.x)) + vec2<f32>(x_374.x, x_374.y));
    let x_377 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
    let x_380 : vec4<f32> = x_352.x_MainLightWorldToLight[2i];
    let x_382 : vec3<f32> = vs_TEXCOORD1;
    let x_385 : vec4<f32> = u_xlat6;
    let x_387 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_382.z, x_382.z)) + vec2<f32>(x_385.x, x_385.y));
    let x_388 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
    let x_390 : vec4<f32> = u_xlat6;
    let x_394 : vec4<f32> = x_352.x_MainLightWorldToLight[3i];
    let x_396 : vec2<f32> = (vec2<f32>(x_390.x, x_390.y) + vec2<f32>(x_394.x, x_394.y));
    let x_397 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat6;
    let x_403 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_404 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_411 : vec4<f32> = u_xlat6;
    let x_414 : f32 = x_28.x_GlobalMipBias.x;
    let x_415 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_411.x, x_411.y), x_414);
    u_xlat6 = x_415;
    let x_420 : f32 = x_352.x_MainLightCookieTextureFormat;
    let x_422 : f32 = x_352.x_MainLightCookieTextureFormat;
    let x_424 : f32 = x_352.x_MainLightCookieTextureFormat;
    let x_426 : f32 = x_352.x_MainLightCookieTextureFormat;
    let x_427 : vec4<f32> = vec4<f32>(x_420, x_422, x_424, x_426);
    let x_435 : vec4<bool> = (vec4<f32>(x_427.x, x_427.y, x_427.z, x_427.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_435.x, x_435.y);
    let x_438 : bool = u_xlatb7.y;
    if (x_438) {
      let x_443 : f32 = u_xlat6.w;
      x_439 = x_443;
    } else {
      let x_446 : f32 = u_xlat6.x;
      x_439 = x_446;
    }
    let x_447 : f32 = x_439;
    u_xlat47 = x_447;
    let x_449 : bool = u_xlatb7.x;
    if (x_449) {
      let x_453 : vec4<f32> = u_xlat6;
      x_450 = vec3<f32>(x_453.x, x_453.y, x_453.z);
    } else {
      let x_456 : f32 = u_xlat47;
      x_450 = vec3<f32>(x_456, x_456, x_456);
    }
    let x_458 : vec3<f32> = x_450;
    let x_459 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_465 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = x_28.x_MainLightColor;
  let x_470 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec3<f32> = u_xlat3;
  let x_475 : vec3<f32> = u_xlat2;
  u_xlat47 = dot(-(x_473), x_475);
  let x_477 : f32 = u_xlat47;
  let x_478 : f32 = u_xlat47;
  u_xlat47 = (x_477 + x_478);
  let x_481 : vec3<f32> = u_xlat2;
  let x_482 : f32 = u_xlat47;
  let x_486 : vec3<f32> = u_xlat3;
  let x_488 : vec3<f32> = ((x_481 * -(vec3<f32>(x_482, x_482, x_482))) + -(x_486));
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec3<f32> = u_xlat2;
  let x_492 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_491, x_492);
  let x_494 : f32 = u_xlat47;
  u_xlat47 = clamp(x_494, 0.0f, 1.0f);
  let x_496 : f32 = u_xlat47;
  u_xlat47 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat47;
  let x_500 : f32 = u_xlat47;
  u_xlat47 = (x_499 * x_500);
  let x_502 : f32 = u_xlat47;
  let x_503 : f32 = u_xlat47;
  u_xlat47 = (x_502 * x_503);
  let x_506 : f32 = u_xlat42;
  u_xlat48 = ((-(x_506) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_512 : f32 = u_xlat42;
  let x_513 : f32 = u_xlat48;
  u_xlat42 = (x_512 * x_513);
  let x_515 : f32 = u_xlat42;
  u_xlat42 = (x_515 * 6.0f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_528 : f32 = u_xlat42;
  let x_529 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_526.x, x_526.y, x_526.z), x_528);
  u_xlat7 = x_529;
  let x_531 : f32 = u_xlat7.w;
  u_xlat42 = (x_531 + -1.0f);
  let x_538 : f32 = x_536.unity_SpecCube0_HDR.w;
  let x_539 : f32 = u_xlat42;
  u_xlat42 = ((x_538 * x_539) + 1.0f);
  let x_542 : f32 = u_xlat42;
  u_xlat42 = max(x_542, 0.0f);
  let x_544 : f32 = u_xlat42;
  u_xlat42 = log2(x_544);
  let x_546 : f32 = u_xlat42;
  let x_548 : f32 = x_536.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_546 * x_548);
  let x_550 : f32 = u_xlat42;
  u_xlat42 = exp2(x_550);
  let x_552 : f32 = u_xlat42;
  let x_554 : f32 = x_536.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_552 * x_554);
  let x_556 : vec4<f32> = u_xlat7;
  let x_558 : f32 = u_xlat42;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(x_558, x_558, x_558));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_565 : f32 = u_xlat45;
  let x_567 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_565, x_565) * vec2<f32>(x_567, x_567)) + vec2<f32>(-1.0f, 1.0f));
  let x_573 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_573);
  let x_576 : vec4<f32> = u_xlat0;
  let x_579 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_576.x, x_576.y, x_576.z)) + vec3<f32>(x_579, x_579, x_579));
  let x_582 : f32 = u_xlat47;
  let x_584 : vec3<f32> = u_xlat22;
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_582, x_582, x_582) * x_584) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : f32 = u_xlat42;
  let x_591 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : vec3<f32> = u_xlat22;
  let x_596 : vec3<f32> = (vec3<f32>(x_593.x, x_593.y, x_593.z) * x_595);
  let x_597 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec3<f32> = u_xlat15;
  let x_603 : vec4<f32> = u_xlat7;
  let x_605 : vec3<f32> = ((vec3<f32>(x_599.x, x_599.y, x_599.z) * x_601) + vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : f32 = u_xlat19;
  let x_610 : f32 = x_536.unity_LightData.z;
  u_xlat42 = (x_608 * x_610);
  let x_612 : vec3<f32> = u_xlat2;
  let x_614 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat44 = dot(x_612, vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : f32 = u_xlat44;
  u_xlat44 = clamp(x_617, 0.0f, 1.0f);
  let x_619 : f32 = u_xlat42;
  let x_620 : f32 = u_xlat44;
  u_xlat42 = (x_619 * x_620);
  let x_622 : f32 = u_xlat42;
  let x_624 : vec4<f32> = u_xlat6;
  let x_626 : vec3<f32> = (vec3<f32>(x_622, x_622, x_622) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec3<f32> = u_xlat3;
  let x_631 : vec4<f32> = x_28.x_MainLightPosition;
  let x_633 : vec3<f32> = (x_629 + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat7;
  let x_638 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_636.x, x_636.y, x_636.z), vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : f32 = u_xlat42;
  u_xlat42 = max(x_641, 1.17549435e-38f);
  let x_644 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_644);
  let x_646 : f32 = u_xlat42;
  let x_648 : vec4<f32> = u_xlat7;
  let x_650 : vec3<f32> = (vec3<f32>(x_646, x_646, x_646) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec3<f32> = u_xlat2;
  let x_654 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_653, vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : f32 = u_xlat42;
  u_xlat42 = clamp(x_657, 0.0f, 1.0f);
  let x_660 : vec4<f32> = x_28.x_MainLightPosition;
  let x_662 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : f32 = u_xlat44;
  u_xlat44 = clamp(x_665, 0.0f, 1.0f);
  let x_667 : f32 = u_xlat42;
  let x_668 : f32 = u_xlat42;
  u_xlat42 = (x_667 * x_668);
  let x_670 : f32 = u_xlat42;
  let x_672 : f32 = u_xlat8.x;
  u_xlat42 = ((x_670 * x_672) + 1.00001001358032226562f);
  let x_676 : f32 = u_xlat44;
  let x_677 : f32 = u_xlat44;
  u_xlat44 = (x_676 * x_677);
  let x_679 : f32 = u_xlat42;
  let x_680 : f32 = u_xlat42;
  u_xlat42 = (x_679 * x_680);
  let x_682 : f32 = u_xlat44;
  u_xlat44 = max(x_682, 0.10000000149011611938f);
  let x_685 : f32 = u_xlat42;
  let x_686 : f32 = u_xlat44;
  u_xlat42 = (x_685 * x_686);
  let x_689 : f32 = u_xlat5.x;
  let x_690 : f32 = u_xlat42;
  u_xlat42 = (x_689 * x_690);
  let x_692 : f32 = u_xlat46;
  let x_693 : f32 = u_xlat42;
  u_xlat42 = (x_692 / x_693);
  let x_695 : vec4<f32> = u_xlat0;
  let x_697 : f32 = u_xlat42;
  let x_700 : vec3<f32> = u_xlat15;
  let x_701 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(x_697, x_697, x_697)) + x_700);
  let x_702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_705 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_707 : f32 = x_536.unity_LightData.y;
  u_xlat42 = min(x_705, x_707);
  let x_711 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_711));
  let x_714 : f32 = u_xlat33;
  let x_717 : f32 = x_288.x_AdditionalShadowFadeParams.x;
  let x_720 : f32 = x_288.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_714 * x_717) + x_720);
  let x_722 : f32 = u_xlat44;
  u_xlat44 = clamp(x_722, 0.0f, 1.0f);
  let x_726 : f32 = x_352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_728 : f32 = x_352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_730 : f32 = x_352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_732 : f32 = x_352.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_733 : vec4<f32> = vec4<f32>(x_726, x_728, x_730, x_732);
  let x_739 : vec4<bool> = (vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb19 = vec2<bool>(x_739.x, x_739.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_751 : u32 = u_xlatu_loop_1;
    let x_752 : u32 = u_xlatu42;
    if ((x_751 < x_752)) {
    } else {
      break;
    }
    let x_755 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_755 >> 2u);
    let x_759 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_759 & 3u));
    let x_762 : u32 = u_xlatu47;
    let x_765 : vec4<f32> = x_536.unity_LightIndices[bitcast<i32>(x_762)];
    let x_775 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_780 : vec4<u32> = indexable[x_775];
    u_xlat47 = dot(x_765, bitcast<vec4<f32>>(x_780));
    let x_784 : f32 = u_xlat47;
    u_xlati47 = i32(x_784);
    let x_787 : vec3<f32> = vs_TEXCOORD1;
    let x_798 : i32 = u_xlati47;
    let x_800 : vec4<f32> = x_797.x_AdditionalLightsPosition[x_798];
    let x_803 : i32 = u_xlati47;
    let x_805 : vec4<f32> = x_797.x_AdditionalLightsPosition[x_803];
    u_xlat9 = ((-(x_787) * vec3<f32>(x_800.w, x_800.w, x_800.w)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
    let x_808 : vec3<f32> = u_xlat9;
    let x_809 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_808, x_809);
    let x_811 : f32 = u_xlat48;
    u_xlat48 = max(x_811, 0.00006103515625f);
    let x_815 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_815);
    let x_818 : f32 = u_xlat49;
    let x_820 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_818, x_818, x_818) * x_820);
    let x_823 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_823);
    let x_825 : f32 = u_xlat48;
    let x_826 : i32 = u_xlati47;
    let x_828 : f32 = x_797.x_AdditionalLightsAttenuation[x_826].x;
    u_xlat48 = (x_825 * x_828);
    let x_830 : f32 = u_xlat48;
    let x_832 : f32 = u_xlat48;
    u_xlat48 = ((-(x_830) * x_832) + 1.0f);
    let x_835 : f32 = u_xlat48;
    u_xlat48 = max(x_835, 0.0f);
    let x_837 : f32 = u_xlat48;
    let x_838 : f32 = u_xlat48;
    u_xlat48 = (x_837 * x_838);
    let x_840 : f32 = u_xlat48;
    let x_841 : f32 = u_xlat51;
    u_xlat48 = (x_840 * x_841);
    let x_843 : i32 = u_xlati47;
    let x_845 : vec4<f32> = x_797.x_AdditionalLightsSpotDir[x_843];
    let x_847 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), x_847);
    let x_849 : f32 = u_xlat51;
    let x_850 : i32 = u_xlati47;
    let x_852 : f32 = x_797.x_AdditionalLightsAttenuation[x_850].z;
    let x_854 : i32 = u_xlati47;
    let x_856 : f32 = x_797.x_AdditionalLightsAttenuation[x_854].w;
    u_xlat51 = ((x_849 * x_852) + x_856);
    let x_858 : f32 = u_xlat51;
    u_xlat51 = clamp(x_858, 0.0f, 1.0f);
    let x_860 : f32 = u_xlat51;
    let x_861 : f32 = u_xlat51;
    u_xlat51 = (x_860 * x_861);
    let x_863 : f32 = u_xlat48;
    let x_864 : f32 = u_xlat51;
    u_xlat48 = (x_863 * x_864);
    let x_868 : i32 = u_xlati47;
    let x_870 : f32 = x_288.x_AdditionalShadowParams[x_868].w;
    u_xlati51 = i32(x_870);
    let x_873 : i32 = u_xlati51;
    u_xlatb52 = (x_873 >= 0i);
    let x_875 : bool = u_xlatb52;
    if (x_875) {
      let x_879 : i32 = u_xlati47;
      let x_881 : f32 = x_288.x_AdditionalShadowParams[x_879].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_881, x_881, x_881, x_881))));
      let x_885 : bool = u_xlatb52;
      if (x_885) {
        let x_890 : vec3<f32> = u_xlat10;
        let x_893 : vec3<f32> = u_xlat10;
        let x_896 : vec4<bool> = (abs(vec4<f32>(x_890.z, x_890.z, x_890.y, x_890.z)) >= abs(vec4<f32>(x_893.x, x_893.y, x_893.x, x_893.x)));
        let x_898 : vec3<bool> = vec3<bool>(x_896.x, x_896.y, x_896.z);
        let x_899 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_898.x, x_898.y, x_898.z, x_899.w);
        let x_902 : bool = u_xlatb11.y;
        let x_904 : bool = u_xlatb11.x;
        u_xlatb52 = (x_902 & x_904);
        let x_906 : vec3<f32> = u_xlat10;
        let x_909 : vec4<bool> = (-(vec4<f32>(x_906.z, x_906.y, x_906.z, x_906.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_910 : vec3<bool> = vec3<bool>(x_909.x, x_909.y, x_909.w);
        let x_911 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_910.x, x_910.y, x_911.z, x_910.z);
        let x_915 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_915);
        let x_920 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_920);
        let x_926 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_926);
        let x_930 : bool = u_xlatb11.z;
        if (x_930) {
          let x_935 : f32 = u_xlat11.y;
          x_931 = x_935;
        } else {
          let x_937 : f32 = u_xlat53;
          x_931 = x_937;
        }
        let x_938 : f32 = x_931;
        u_xlat25.x = x_938;
        let x_941 : bool = u_xlatb52;
        if (x_941) {
          let x_946 : f32 = u_xlat11.x;
          x_942 = x_946;
        } else {
          let x_949 : f32 = u_xlat25.x;
          x_942 = x_949;
        }
        let x_950 : f32 = x_942;
        u_xlat52 = x_950;
        let x_951 : i32 = u_xlati47;
        let x_953 : f32 = x_288.x_AdditionalShadowParams[x_951].w;
        u_xlat11.x = trunc(x_953);
        let x_956 : f32 = u_xlat52;
        let x_958 : f32 = u_xlat11.x;
        u_xlat52 = (x_956 + x_958);
        let x_960 : f32 = u_xlat52;
        u_xlati51 = i32(x_960);
      }
      let x_962 : i32 = u_xlati51;
      u_xlati51 = (x_962 << bitcast<u32>(2i));
      let x_964 : vec3<f32> = vs_TEXCOORD1;
      let x_967 : i32 = u_xlati51;
      let x_970 : i32 = u_xlati51;
      let x_974 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_964.y, x_964.y, x_964.y, x_964.y) * x_974);
      let x_976 : i32 = u_xlati51;
      let x_978 : i32 = u_xlati51;
      let x_981 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[(x_976 / 4i)][(x_978 % 4i)];
      let x_982 : vec3<f32> = vs_TEXCOORD1;
      let x_985 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_981 * vec4<f32>(x_982.x, x_982.x, x_982.x, x_982.x)) + x_985);
      let x_987 : i32 = u_xlati51;
      let x_990 : i32 = u_xlati51;
      let x_994 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_987 + 2i) / 4i)][((x_990 + 2i) % 4i)];
      let x_995 : vec3<f32> = vs_TEXCOORD1;
      let x_998 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_994 * vec4<f32>(x_995.z, x_995.z, x_995.z, x_995.z)) + x_998);
      let x_1000 : vec4<f32> = u_xlat11;
      let x_1001 : i32 = u_xlati51;
      let x_1004 : i32 = u_xlati51;
      let x_1008 : vec4<f32> = x_288.x_AdditionalLightsWorldToShadow[((x_1001 + 3i) / 4i)][((x_1004 + 3i) % 4i)];
      u_xlat11 = (x_1000 + x_1008);
      let x_1010 : vec4<f32> = u_xlat11;
      let x_1012 : vec4<f32> = u_xlat11;
      let x_1014 : vec3<f32> = (vec3<f32>(x_1010.x, x_1010.y, x_1010.z) / vec3<f32>(x_1012.w, x_1012.w, x_1012.w));
      let x_1015 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
      let x_1018 : vec4<f32> = u_xlat11;
      let x_1019 : vec2<f32> = vec2<f32>(x_1018.x, x_1018.y);
      let x_1021 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1019.x, x_1019.y, x_1021);
      let x_1029 : vec3<f32> = txVec1;
      let x_1031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
      u_xlat51 = x_1031;
      let x_1032 : i32 = u_xlati47;
      let x_1034 : f32 = x_288.x_AdditionalShadowParams[x_1032].x;
      u_xlat52 = (1.0f + -(x_1034));
      let x_1037 : f32 = u_xlat51;
      let x_1038 : i32 = u_xlati47;
      let x_1040 : f32 = x_288.x_AdditionalShadowParams[x_1038].x;
      let x_1042 : f32 = u_xlat52;
      u_xlat51 = ((x_1037 * x_1040) + x_1042);
      let x_1045 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1045);
      let x_1048 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1048 >= 1.0f);
      let x_1051 : bool = u_xlatb52;
      let x_1053 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1051 | x_1053);
      let x_1055 : bool = u_xlatb52;
      let x_1056 : f32 = u_xlat51;
      u_xlat51 = select(x_1056, 1.0f, x_1055);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1059 : f32 = u_xlat51;
    u_xlat52 = (-(x_1059) + 1.0f);
    let x_1062 : f32 = u_xlat44;
    let x_1063 : f32 = u_xlat52;
    let x_1065 : f32 = u_xlat51;
    u_xlat51 = ((x_1062 * x_1063) + x_1065);
    let x_1068 : i32 = u_xlati47;
    u_xlati52 = (1i << bitcast<u32>((x_1068 & 31i)));
    let x_1072 : i32 = u_xlati52;
    let x_1075 : f32 = x_352.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1072) & bitcast<u32>(x_1075)));
    let x_1079 : i32 = u_xlati52;
    if ((x_1079 != 0i)) {
      let x_1083 : i32 = u_xlati47;
      let x_1085 : f32 = x_352.x_AdditionalLightsLightTypes[x_1083].el;
      u_xlati52 = i32(x_1085);
      let x_1088 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1088 != 0i));
      let x_1092 : i32 = u_xlati47;
      u_xlati25 = (x_1092 << bitcast<u32>(2i));
      let x_1094 : i32 = u_xlati11;
      if ((x_1094 != 0i)) {
        let x_1098 : vec3<f32> = vs_TEXCOORD1;
        let x_1100 : i32 = u_xlati25;
        let x_1103 : i32 = u_xlati25;
        let x_1107 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1100 + 1i) / 4i)][((x_1103 + 1i) % 4i)];
        let x_1109 : vec3<f32> = (vec3<f32>(x_1098.y, x_1098.y, x_1098.y) * vec3<f32>(x_1107.x, x_1107.y, x_1107.w));
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1109.z);
        let x_1112 : i32 = u_xlati25;
        let x_1114 : i32 = u_xlati25;
        let x_1117 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[(x_1112 / 4i)][(x_1114 % 4i)];
        let x_1119 : vec3<f32> = vs_TEXCOORD1;
        let x_1122 : vec4<f32> = u_xlat11;
        let x_1124 : vec3<f32> = ((vec3<f32>(x_1117.x, x_1117.y, x_1117.w) * vec3<f32>(x_1119.x, x_1119.x, x_1119.x)) + vec3<f32>(x_1122.x, x_1122.z, x_1122.w));
        let x_1125 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1124.x, x_1125.y, x_1124.y, x_1124.z);
        let x_1127 : i32 = u_xlati25;
        let x_1130 : i32 = u_xlati25;
        let x_1134 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1127 + 2i) / 4i)][((x_1130 + 2i) % 4i)];
        let x_1136 : vec3<f32> = vs_TEXCOORD1;
        let x_1139 : vec4<f32> = u_xlat11;
        let x_1141 : vec3<f32> = ((vec3<f32>(x_1134.x, x_1134.y, x_1134.w) * vec3<f32>(x_1136.z, x_1136.z, x_1136.z)) + vec3<f32>(x_1139.x, x_1139.z, x_1139.w));
        let x_1142 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
        let x_1144 : vec4<f32> = u_xlat11;
        let x_1146 : i32 = u_xlati25;
        let x_1149 : i32 = u_xlati25;
        let x_1153 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1146 + 3i) / 4i)][((x_1149 + 3i) % 4i)];
        let x_1155 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.z, x_1144.w) + vec3<f32>(x_1153.x, x_1153.y, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1155.z);
        let x_1158 : vec4<f32> = u_xlat11;
        let x_1160 : vec4<f32> = u_xlat11;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.z) / vec2<f32>(x_1160.w, x_1160.w));
        let x_1163 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1163.y, x_1162.y, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat11;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1169 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat11;
        let x_1175 : vec2<f32> = clamp(vec2<f32>(x_1171.x, x_1171.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1175.x, x_1176.y, x_1175.y, x_1176.w);
        let x_1178 : i32 = u_xlati47;
        let x_1180 : vec4<f32> = x_352.x_AdditionalLightsCookieAtlasUVRects[x_1178];
        let x_1182 : vec4<f32> = u_xlat11;
        let x_1185 : i32 = u_xlati47;
        let x_1187 : vec4<f32> = x_352.x_AdditionalLightsCookieAtlasUVRects[x_1185];
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1182.x, x_1182.z)) + vec2<f32>(x_1187.z, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1190.w);
      } else {
        let x_1193 : i32 = u_xlati52;
        u_xlatb52 = (x_1193 == 1i);
        let x_1195 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1195);
        let x_1197 : i32 = u_xlati52;
        if ((x_1197 != 0i)) {
          let x_1202 : vec3<f32> = vs_TEXCOORD1;
          let x_1204 : i32 = u_xlati25;
          let x_1207 : i32 = u_xlati25;
          let x_1211 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1204 + 1i) / 4i)][((x_1207 + 1i) % 4i)];
          let x_1213 : vec2<f32> = (vec2<f32>(x_1202.y, x_1202.y) * vec2<f32>(x_1211.x, x_1211.y));
          let x_1214 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
          let x_1216 : i32 = u_xlati25;
          let x_1218 : i32 = u_xlati25;
          let x_1221 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[(x_1216 / 4i)][(x_1218 % 4i)];
          let x_1223 : vec3<f32> = vs_TEXCOORD1;
          let x_1226 : vec4<f32> = u_xlat12;
          let x_1228 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1223.x, x_1223.x)) + vec2<f32>(x_1226.x, x_1226.y));
          let x_1229 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1228.x, x_1228.y, x_1229.z, x_1229.w);
          let x_1231 : i32 = u_xlati25;
          let x_1234 : i32 = u_xlati25;
          let x_1238 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1231 + 2i) / 4i)][((x_1234 + 2i) % 4i)];
          let x_1240 : vec3<f32> = vs_TEXCOORD1;
          let x_1243 : vec4<f32> = u_xlat12;
          let x_1245 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1240.z, x_1240.z)) + vec2<f32>(x_1243.x, x_1243.y));
          let x_1246 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
          let x_1248 : vec4<f32> = u_xlat12;
          let x_1250 : i32 = u_xlati25;
          let x_1253 : i32 = u_xlati25;
          let x_1257 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1250 + 3i) / 4i)][((x_1253 + 3i) % 4i)];
          let x_1259 : vec2<f32> = (vec2<f32>(x_1248.x, x_1248.y) + vec2<f32>(x_1257.x, x_1257.y));
          let x_1260 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1260.w);
          let x_1262 : vec4<f32> = u_xlat12;
          let x_1265 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1266 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
          let x_1268 : vec4<f32> = u_xlat12;
          let x_1270 : vec2<f32> = fract(vec2<f32>(x_1268.x, x_1268.y));
          let x_1271 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
          let x_1273 : i32 = u_xlati47;
          let x_1275 : vec4<f32> = x_352.x_AdditionalLightsCookieAtlasUVRects[x_1273];
          let x_1277 : vec4<f32> = u_xlat12;
          let x_1280 : i32 = u_xlati47;
          let x_1282 : vec4<f32> = x_352.x_AdditionalLightsCookieAtlasUVRects[x_1280];
          let x_1284 : vec2<f32> = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1282.z, x_1282.w));
          let x_1285 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1284.x, x_1285.y, x_1284.y, x_1285.w);
        } else {
          let x_1288 : vec3<f32> = vs_TEXCOORD1;
          let x_1290 : i32 = u_xlati25;
          let x_1293 : i32 = u_xlati25;
          let x_1297 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1290 + 1i) / 4i)][((x_1293 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1288.y, x_1288.y, x_1288.y, x_1288.y) * x_1297);
          let x_1299 : i32 = u_xlati25;
          let x_1301 : i32 = u_xlati25;
          let x_1304 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[(x_1299 / 4i)][(x_1301 % 4i)];
          let x_1305 : vec3<f32> = vs_TEXCOORD1;
          let x_1308 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1304 * vec4<f32>(x_1305.x, x_1305.x, x_1305.x, x_1305.x)) + x_1308);
          let x_1310 : i32 = u_xlati25;
          let x_1313 : i32 = u_xlati25;
          let x_1317 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1310 + 2i) / 4i)][((x_1313 + 2i) % 4i)];
          let x_1318 : vec3<f32> = vs_TEXCOORD1;
          let x_1321 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1317 * vec4<f32>(x_1318.z, x_1318.z, x_1318.z, x_1318.z)) + x_1321);
          let x_1323 : vec4<f32> = u_xlat12;
          let x_1324 : i32 = u_xlati25;
          let x_1327 : i32 = u_xlati25;
          let x_1331 : vec4<f32> = x_352.x_AdditionalLightsWorldToLights[((x_1324 + 3i) / 4i)][((x_1327 + 3i) % 4i)];
          u_xlat12 = (x_1323 + x_1331);
          let x_1333 : vec4<f32> = u_xlat12;
          let x_1335 : vec4<f32> = u_xlat12;
          let x_1337 : vec3<f32> = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) / vec3<f32>(x_1335.w, x_1335.w, x_1335.w));
          let x_1338 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
          let x_1340 : vec4<f32> = u_xlat12;
          let x_1342 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
          let x_1345 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1345);
          let x_1347 : f32 = u_xlat52;
          let x_1349 : vec4<f32> = u_xlat12;
          let x_1351 : vec3<f32> = (vec3<f32>(x_1347, x_1347, x_1347) * vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
          let x_1352 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
          let x_1354 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1354.x, x_1354.y, x_1354.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1359 : f32 = u_xlat52;
          u_xlat52 = max(x_1359, 0.00000099999999747524f);
          let x_1362 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1362);
          let x_1365 : f32 = u_xlat52;
          let x_1367 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1365, x_1365, x_1365) * vec3<f32>(x_1367.z, x_1367.x, x_1367.y));
          let x_1371 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1371);
          let x_1375 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1375, 0.0f, 1.0f);
          let x_1380 : vec3<f32> = u_xlat13;
          let x_1382 : vec4<bool> = (vec4<f32>(x_1380.y, x_1380.y, x_1380.z, x_1380.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1383 : vec2<bool> = vec2<bool>(x_1382.x, x_1382.z);
          let x_1384 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1383.x, x_1384.y, x_1383.y);
          let x_1387 : bool = u_xlatb25.x;
          if (x_1387) {
            let x_1392 : f32 = u_xlat13.x;
            x_1388 = x_1392;
          } else {
            let x_1395 : f32 = u_xlat13.x;
            x_1388 = -(x_1395);
          }
          let x_1397 : f32 = x_1388;
          u_xlat25.x = x_1397;
          let x_1400 : bool = u_xlatb25.z;
          if (x_1400) {
            let x_1405 : f32 = u_xlat13.x;
            x_1401 = x_1405;
          } else {
            let x_1408 : f32 = u_xlat13.x;
            x_1401 = -(x_1408);
          }
          let x_1410 : f32 = x_1401;
          u_xlat25.z = x_1410;
          let x_1412 : vec4<f32> = u_xlat12;
          let x_1414 : f32 = u_xlat52;
          let x_1417 : vec3<f32> = u_xlat25;
          let x_1419 : vec2<f32> = ((vec2<f32>(x_1412.x, x_1412.y) * vec2<f32>(x_1414, x_1414)) + vec2<f32>(x_1417.x, x_1417.z));
          let x_1420 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1419.x, x_1420.y, x_1419.y);
          let x_1422 : vec3<f32> = u_xlat25;
          let x_1425 : vec2<f32> = ((vec2<f32>(x_1422.x, x_1422.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1426 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1425.x, x_1426.y, x_1425.y);
          let x_1428 : vec3<f32> = u_xlat25;
          let x_1432 : vec2<f32> = clamp(vec2<f32>(x_1428.x, x_1428.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1433 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1432.x, x_1433.y, x_1432.y);
          let x_1435 : i32 = u_xlati47;
          let x_1437 : vec4<f32> = x_352.x_AdditionalLightsCookieAtlasUVRects[x_1435];
          let x_1439 : vec3<f32> = u_xlat25;
          let x_1442 : i32 = u_xlati47;
          let x_1444 : vec4<f32> = x_352.x_AdditionalLightsCookieAtlasUVRects[x_1442];
          let x_1446 : vec2<f32> = ((vec2<f32>(x_1437.x, x_1437.y) * vec2<f32>(x_1439.x, x_1439.z)) + vec2<f32>(x_1444.z, x_1444.w));
          let x_1447 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1446.x, x_1447.y, x_1446.y, x_1447.w);
        }
      }
      let x_1454 : vec4<f32> = u_xlat11;
      let x_1456 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1454.x, x_1454.z), 0.0f);
      u_xlat11 = x_1456;
      let x_1458 : bool = u_xlatb19.y;
      if (x_1458) {
        let x_1463 : f32 = u_xlat11.w;
        x_1459 = x_1463;
      } else {
        let x_1466 : f32 = u_xlat11.x;
        x_1459 = x_1466;
      }
      let x_1467 : f32 = x_1459;
      u_xlat52 = x_1467;
      let x_1469 : bool = u_xlatb19.x;
      if (x_1469) {
        let x_1473 : vec4<f32> = u_xlat11;
        x_1470 = vec3<f32>(x_1473.x, x_1473.y, x_1473.z);
      } else {
        let x_1476 : f32 = u_xlat52;
        x_1470 = vec3<f32>(x_1476, x_1476, x_1476);
      }
      let x_1478 : vec3<f32> = x_1470;
      let x_1479 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1485 : vec4<f32> = u_xlat11;
    let x_1487 : i32 = u_xlati47;
    let x_1489 : vec4<f32> = x_797.x_AdditionalLightsColor[x_1487];
    let x_1491 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) * vec3<f32>(x_1489.x, x_1489.y, x_1489.z));
    let x_1492 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
    let x_1494 : f32 = u_xlat48;
    let x_1495 : f32 = u_xlat51;
    u_xlat47 = (x_1494 * x_1495);
    let x_1497 : vec3<f32> = u_xlat2;
    let x_1498 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1497, x_1498);
    let x_1500 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1500, 0.0f, 1.0f);
    let x_1502 : f32 = u_xlat47;
    let x_1503 : f32 = u_xlat48;
    u_xlat47 = (x_1502 * x_1503);
    let x_1505 : f32 = u_xlat47;
    let x_1507 : vec4<f32> = u_xlat11;
    let x_1509 : vec3<f32> = (vec3<f32>(x_1505, x_1505, x_1505) * vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
    let x_1510 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
    let x_1512 : vec3<f32> = u_xlat9;
    let x_1513 : f32 = u_xlat49;
    let x_1516 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1512 * vec3<f32>(x_1513, x_1513, x_1513)) + x_1516);
    let x_1518 : vec3<f32> = u_xlat9;
    let x_1519 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1518, x_1519);
    let x_1521 : f32 = u_xlat47;
    u_xlat47 = max(x_1521, 1.17549435e-38f);
    let x_1523 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1523);
    let x_1525 : f32 = u_xlat47;
    let x_1527 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1525, x_1525, x_1525) * x_1527);
    let x_1529 : vec3<f32> = u_xlat2;
    let x_1530 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1529, x_1530);
    let x_1532 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1532, 0.0f, 1.0f);
    let x_1534 : vec3<f32> = u_xlat10;
    let x_1535 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1534, x_1535);
    let x_1537 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1537, 0.0f, 1.0f);
    let x_1539 : f32 = u_xlat47;
    let x_1540 : f32 = u_xlat47;
    u_xlat47 = (x_1539 * x_1540);
    let x_1542 : f32 = u_xlat47;
    let x_1544 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1542 * x_1544) + 1.00001001358032226562f);
    let x_1547 : f32 = u_xlat48;
    let x_1548 : f32 = u_xlat48;
    u_xlat48 = (x_1547 * x_1548);
    let x_1550 : f32 = u_xlat47;
    let x_1551 : f32 = u_xlat47;
    u_xlat47 = (x_1550 * x_1551);
    let x_1553 : f32 = u_xlat48;
    u_xlat48 = max(x_1553, 0.10000000149011611938f);
    let x_1555 : f32 = u_xlat47;
    let x_1556 : f32 = u_xlat48;
    u_xlat47 = (x_1555 * x_1556);
    let x_1559 : f32 = u_xlat5.x;
    let x_1560 : f32 = u_xlat47;
    u_xlat47 = (x_1559 * x_1560);
    let x_1562 : f32 = u_xlat46;
    let x_1563 : f32 = u_xlat47;
    u_xlat47 = (x_1562 / x_1563);
    let x_1565 : vec4<f32> = u_xlat0;
    let x_1567 : f32 = u_xlat47;
    let x_1570 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1565.x, x_1565.y, x_1565.z) * vec3<f32>(x_1567, x_1567, x_1567)) + x_1570);
    let x_1572 : vec3<f32> = u_xlat9;
    let x_1573 : vec4<f32> = u_xlat11;
    let x_1576 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1572 * vec3<f32>(x_1573.x, x_1573.y, x_1573.z)) + x_1576);

    continuing {
      let x_1578 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1578 + bitcast<u32>(1i));
    }
  }
  let x_1580 : vec4<f32> = u_xlat7;
  let x_1582 : vec4<f32> = u_xlat6;
  let x_1585 : vec4<f32> = u_xlat4;
  let x_1587 : vec3<f32> = ((vec3<f32>(x_1580.x, x_1580.y, x_1580.z) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z)) + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1592 : vec3<f32> = u_xlat22;
  let x_1593 : vec4<f32> = u_xlat0;
  let x_1595 : vec3<f32> = (x_1592 + vec3<f32>(x_1593.x, x_1593.y, x_1593.z));
  let x_1596 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1600 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_1600 == 1.0f);
  let x_1602 : bool = u_xlatb0;
  if (x_1602) {
    let x_1607 : f32 = u_xlat1.x;
    x_1603 = x_1607;
  } else {
    x_1603 = 1.0f;
  }
  let x_1609 : f32 = x_1603;
  SV_Target0.w = x_1609;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


