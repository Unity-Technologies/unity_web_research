diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_42 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_123 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_133 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_231 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat43 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_692 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1133 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_350 : f32;
  var x_396 : f32;
  var x_476 : f32;
  var x_488 : f32;
  var x_499 : f32;
  var txVec1 : vec3<f32>;
  var x_776 : f32;
  var x_787 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1284 : f32;
  var x_1294 : f32;
  var txVec2 : vec3<f32>;
  var x_1724 : f32;
  var x_1737 : f32;
  var x_1795 : f32;
  var x_1806 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0 = dot(x_12, x_13);
  let x_15 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_15);
  let x_18 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_18);
  let x_32 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_32);
  let x_47 : f32 = x_42.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_47 >= 0.0f);
  let x_54 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_54);
  let x_59 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_59);
  let x_63 : f32 = u_xlat14.y;
  let x_65 : f32 = u_xlat14.x;
  u_xlat14.x = (x_63 * x_65);
  let x_69 : vec4<f32> = vs_INTERP4;
  let x_71 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_69.y, x_69.z, x_69.x) * vec3<f32>(x_71.z, x_71.x, x_71.y));
  let x_74 : vec3<f32> = vs_INTERP9;
  let x_76 : vec4<f32> = vs_INTERP4;
  let x_79 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y)) + -(x_79));
  let x_82 : vec3<f32> = u_xlat14;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_82.x, x_82.x, x_82.x) * x_84);
  let x_86 : f32 = u_xlat0;
  let x_88 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_86, x_86, x_86) * x_88);
  let x_92 : f32 = u_xlat0;
  let x_94 : vec4<f32> = vs_INTERP4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec3<f32> = u_xlat14;
  let x_101 : f32 = u_xlat0;
  let x_103 : vec3<f32> = (x_100 * vec3<f32>(x_101, x_101, x_101));
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_119 : vec4<f32> = vs_INTERP5;
  let x_126 : f32 = x_123.x_GlobalMipBias.x;
  let x_127 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_119.x, x_119.y), x_126);
  u_xlat4 = x_127;
  let x_129 : vec4<f32> = u_xlat4;
  let x_137 : vec4<f32> = x_133.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_146 : vec4<f32> = vs_INTERP5;
  let x_149 : f32 = x_123.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_146.x, x_146.y), x_149);
  u_xlat6 = vec4<f32>(x_150.w, x_150.x, x_150.y, x_150.z);
  let x_153 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_153.y, x_153.z, x_153.w, x_153.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_160 : vec4<f32> = u_xlat7;
  let x_161 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_160, x_161);
  let x_163 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_163);
  let x_166 : f32 = u_xlat0;
  let x_168 : vec4<f32> = u_xlat7;
  u_xlat20 = (vec3<f32>(x_166, x_166, x_166) * vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_173 : f32 = vs_INTERP6.y;
  u_xlat0 = (x_173 * 200.0f);
  let x_176 : f32 = u_xlat0;
  u_xlat0 = min(x_176, 1.0f);
  let x_178 : f32 = u_xlat0;
  let x_180 : vec4<f32> = u_xlat4;
  let x_182 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat3;
  let x_187 : vec3<f32> = u_xlat20;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.y, x_187.y, x_187.y));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec3<f32> = u_xlat20;
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.x, x_192.x) * vec3<f32>(x_194.x, x_194.y, x_194.z)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat20;
  let x_204 : vec3<f32> = u_xlat1;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_202.z, x_202.z, x_202.z) * x_204) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec3<f32> = u_xlat1;
  let x_210 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_209, x_210);
  let x_212 : f32 = u_xlat0;
  u_xlat0 = max(x_212, 1.17549435e-38f);
  let x_215 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_215);
  let x_217 : f32 = u_xlat0;
  let x_219 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_217, x_217, x_217) * x_219);
  let x_222 : vec3<f32> = vs_INTERP8;
  let x_233 : vec4<f32> = x_231.x_MainLightWorldToShadow[0i][1i];
  let x_235 : vec3<f32> = (vec3<f32>(x_222.y, x_222.y, x_222.y) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : vec4<f32> = x_231.x_MainLightWorldToShadow[0i][0i];
  let x_241 : vec3<f32> = vs_INTERP8;
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_251 : vec4<f32> = x_231.x_MainLightWorldToShadow[0i][2i];
  let x_253 : vec3<f32> = vs_INTERP8;
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.z, x_253.z, x_253.z)) + vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = x_231.x_MainLightWorldToShadow[0i][3i];
  let x_266 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_272 : vec2<f32> = vec2<f32>(x_271.x, x_271.y);
  let x_274 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_272.x, x_272.y, x_274);
  let x_286 : vec3<f32> = txVec0;
  let x_288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_286.xy, x_286.z);
  u_xlat0 = x_288;
  let x_292 : f32 = x_231.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_292) + 1.0f);
  let x_295 : f32 = u_xlat0;
  let x_297 : f32 = x_231.x_MainLightShadowParams.x;
  let x_299 : f32 = u_xlat43;
  u_xlat0 = ((x_295 * x_297) + x_299);
  let x_303 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_303);
  let x_307 : f32 = u_xlat2.z;
  u_xlatb16 = (x_307 >= 1.0f);
  let x_309 : bool = u_xlatb16;
  let x_310 : bool = u_xlatb2;
  u_xlatb2 = (x_309 | x_310);
  let x_312 : bool = u_xlatb2;
  let x_313 : f32 = u_xlat0;
  u_xlat0 = select(x_313, 1.0f, x_312);
  let x_315 : vec3<f32> = u_xlat1;
  let x_317 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat1.x = dot(x_315, -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_323 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_323, 0.0f, 1.0f);
  let x_326 : f32 = u_xlat0;
  let x_329 : vec4<f32> = x_123.x_MainLightColor;
  let x_331 : vec3<f32> = (vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_334.x, x_334.x, x_334.x) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec3<f32> = u_xlat1;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_339 * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_345 : f32 = u_xlat4.w;
  u_xlatb0 = (x_345 >= 0.40000000596046447754f);
  let x_348 : bool = u_xlatb0;
  if (x_348) {
    let x_354 : f32 = u_xlat4.w;
    x_350 = x_354;
  } else {
    x_350 = 0.0f;
  }
  let x_356 : f32 = x_350;
  u_xlat0 = x_356;
  let x_358 : f32 = u_xlat4.w;
  u_xlat2.x = (x_358 + -0.40000000596046447754f);
  let x_364 : f32 = u_xlat4.w;
  u_xlat16 = dpdxCoarse(x_364);
  let x_368 : f32 = u_xlat4.w;
  u_xlat30 = dpdyCoarse(x_368);
  let x_370 : f32 = u_xlat30;
  let x_372 : f32 = u_xlat16;
  u_xlat16 = (abs(x_370) + abs(x_372));
  let x_375 : f32 = u_xlat16;
  u_xlat16 = max(x_375, 0.00009999999747378752f);
  let x_379 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat16;
  u_xlat2.x = (x_379 / x_380);
  let x_384 : f32 = u_xlat2.x;
  u_xlat2.x = (x_384 + 0.5f);
  let x_389 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_389, 0.0f, 1.0f);
  let x_393 : f32 = x_123.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_393 == 0.0f));
  let x_395 : bool = u_xlatb16;
  if (x_395) {
    let x_400 : f32 = u_xlat2.x;
    x_396 = x_400;
  } else {
    let x_402 : f32 = u_xlat0;
    x_396 = x_402;
  }
  let x_403 : f32 = x_396;
  u_xlat0 = x_403;
  let x_404 : f32 = u_xlat0;
  u_xlat2.x = (x_404 + -0.00009999999747378752f);
  let x_409 : f32 = u_xlat2.x;
  u_xlatb2 = (x_409 < 0.0f);
  let x_411 : bool = u_xlatb2;
  if (((select(0i, 1i, x_411) * -1i) != 0i)) {
    discard;
  }
  let x_419 : vec3<f32> = u_xlat14;
  let x_420 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_419 * vec3<f32>(x_420.y, x_420.y, x_420.y));
  let x_423 : vec3<f32> = u_xlat20;
  let x_425 : vec4<f32> = vs_INTERP4;
  let x_428 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_423.x, x_423.x, x_423.x) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + x_428);
  let x_430 : vec3<f32> = u_xlat20;
  let x_432 : vec3<f32> = vs_INTERP9;
  let x_434 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_430.z, x_430.z, x_430.z) * x_432) + x_434);
  let x_436 : vec3<f32> = u_xlat14;
  let x_437 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_436, x_437);
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_441);
  let x_444 : vec3<f32> = u_xlat14;
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat14 = (x_444 * vec3<f32>(x_445.x, x_445.x, x_445.x));
  let x_450 : f32 = x_123.unity_OrthoParams.w;
  u_xlatb2 = (x_450 == 0.0f);
  let x_452 : vec3<f32> = vs_INTERP8;
  let x_457 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_458 : vec3<f32> = (-(x_452) + x_457);
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat3;
  let x_463 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_466);
  let x_468 : f32 = u_xlat30;
  let x_470 : vec4<f32> = u_xlat3;
  let x_472 : vec3<f32> = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : bool = u_xlatb2;
  if (x_475) {
    let x_480 : f32 = u_xlat3.x;
    x_476 = x_480;
  } else {
    let x_484 : f32 = x_123.unity_MatrixV[0i].z;
    x_476 = x_484;
  }
  let x_485 : f32 = x_476;
  u_xlat4.x = x_485;
  let x_487 : bool = u_xlatb2;
  if (x_487) {
    let x_492 : f32 = u_xlat3.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = x_123.unity_MatrixV[1i].z;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat4.y = x_496;
  let x_498 : bool = u_xlatb2;
  if (x_498) {
    let x_503 : f32 = u_xlat3.z;
    x_499 = x_503;
  } else {
    let x_506 : f32 = x_123.unity_MatrixV[2i].z;
    x_499 = x_506;
  }
  let x_507 : f32 = x_499;
  u_xlat4.z = x_507;
  let x_516 : vec2<f32> = vs_INTERP0;
  let x_518 : f32 = x_123.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_516, x_518);
  u_xlat3 = x_519;
  let x_524 : vec2<f32> = vs_INTERP0;
  let x_526 : f32 = x_123.x_GlobalMipBias.x;
  let x_527 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_524, x_526);
  let x_528 : vec3<f32> = vec3<f32>(x_527.x, x_527.y, x_527.z);
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_528.x, x_529.y, x_528.y, x_528.z);
  let x_531 : vec4<f32> = u_xlat3;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec3<f32> = u_xlat14;
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_538, vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_544 : f32 = u_xlat3.x;
  u_xlat3.x = (x_544 + 0.5f);
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec4<f32> = u_xlat3;
  let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.z, x_547.w) * vec3<f32>(x_549.x, x_549.x, x_549.x));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_551.x, x_552.y, x_551.y, x_551.z);
  let x_555 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_555, 0.00009999999747378752f);
  let x_558 : vec4<f32> = u_xlat2;
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec3<f32> = (vec3<f32>(x_558.x, x_558.z, x_558.w) / vec3<f32>(x_560.x, x_560.x, x_560.x));
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_562.x, x_563.y, x_562.y, x_562.z);
  let x_566 : f32 = u_xlat6.x;
  u_xlat6.x = x_566;
  let x_569 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_569, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat0;
  u_xlat0 = min(x_572, 1.0f);
  let x_574 : vec3<f32> = u_xlat5;
  let x_577 : vec3<f32> = (x_574 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_582 : f32 = u_xlat6.x;
  u_xlat45 = (-(x_582) + 1.0f);
  let x_586 : f32 = u_xlat45;
  let x_587 : f32 = u_xlat45;
  u_xlat46 = (x_586 * x_587);
  let x_589 : f32 = u_xlat46;
  u_xlat46 = max(x_589, 0.0078125f);
  let x_592 : f32 = u_xlat46;
  let x_593 : f32 = u_xlat46;
  u_xlat5.x = (x_592 * x_593);
  let x_598 : f32 = u_xlat6.x;
  u_xlat19 = (x_598 + 0.04000002145767211914f);
  let x_601 : f32 = u_xlat19;
  u_xlat19 = min(x_601, 1.0f);
  let x_604 : f32 = u_xlat46;
  u_xlat33 = ((x_604 * 4.0f) + 2.0f);
  let x_610 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_610, 1.0f);
  let x_614 : vec4<f32> = vs_INTERP3;
  let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
  let x_617 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_615.x, x_615.y, x_617);
  let x_624 : vec3<f32> = txVec1;
  let x_626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_624.xy, x_624.z);
  u_xlat6.x = x_626;
  let x_629 : f32 = u_xlat6.x;
  let x_631 : f32 = x_231.x_MainLightShadowParams.x;
  let x_633 : f32 = u_xlat43;
  u_xlat43 = ((x_629 * x_631) + x_633);
  let x_637 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_637);
  let x_641 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_641 >= 1.0f);
  let x_645 : bool = u_xlatb20.x;
  let x_646 : bool = u_xlatb6;
  u_xlatb6 = (x_645 | x_646);
  let x_648 : bool = u_xlatb6;
  let x_649 : f32 = u_xlat43;
  u_xlat43 = select(x_649, 1.0f, x_648);
  let x_651 : vec3<f32> = vs_INTERP8;
  let x_653 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_655 : vec3<f32> = (x_651 + -(x_653));
  let x_656 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat6;
  let x_660 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_658.x, x_658.y, x_658.z), vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_665 : f32 = u_xlat6.x;
  let x_667 : f32 = x_231.x_MainLightShadowParams.z;
  let x_670 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_665 * x_667) + x_670);
  let x_674 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_674, 0.0f, 1.0f);
  let x_678 : f32 = u_xlat43;
  u_xlat34 = (-(x_678) + 1.0f);
  let x_682 : f32 = u_xlat20.x;
  let x_683 : f32 = u_xlat34;
  let x_685 : f32 = u_xlat43;
  u_xlat43 = ((x_682 * x_683) + x_685);
  let x_694 : f32 = x_692.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_694 == -1.0f));
  let x_698 : bool = u_xlatb20.x;
  if (x_698) {
    let x_701 : vec3<f32> = vs_INTERP8;
    let x_704 : vec4<f32> = x_692.x_MainLightWorldToLight[1i];
    let x_706 : vec2<f32> = (vec2<f32>(x_701.y, x_701.y) * vec2<f32>(x_704.x, x_704.y));
    let x_707 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_706.x, x_706.y, x_707.z);
    let x_710 : vec4<f32> = x_692.x_MainLightWorldToLight[0i];
    let x_712 : vec3<f32> = vs_INTERP8;
    let x_715 : vec3<f32> = u_xlat20;
    let x_717 : vec2<f32> = ((vec2<f32>(x_710.x, x_710.y) * vec2<f32>(x_712.x, x_712.x)) + vec2<f32>(x_715.x, x_715.y));
    let x_718 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_717.x, x_717.y, x_718.z);
    let x_721 : vec4<f32> = x_692.x_MainLightWorldToLight[2i];
    let x_723 : vec3<f32> = vs_INTERP8;
    let x_726 : vec3<f32> = u_xlat20;
    let x_728 : vec2<f32> = ((vec2<f32>(x_721.x, x_721.y) * vec2<f32>(x_723.z, x_723.z)) + vec2<f32>(x_726.x, x_726.y));
    let x_729 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_728.x, x_728.y, x_729.z);
    let x_731 : vec3<f32> = u_xlat20;
    let x_734 : vec4<f32> = x_692.x_MainLightWorldToLight[3i];
    let x_736 : vec2<f32> = (vec2<f32>(x_731.x, x_731.y) + vec2<f32>(x_734.x, x_734.y));
    let x_737 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_736.x, x_736.y, x_737.z);
    let x_739 : vec3<f32> = u_xlat20;
    let x_743 : vec2<f32> = ((vec2<f32>(x_739.x, x_739.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_744 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_743.x, x_743.y, x_744.z);
    let x_751 : vec3<f32> = u_xlat20;
    let x_754 : f32 = x_123.x_GlobalMipBias.x;
    let x_755 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_751.x, x_751.y), x_754);
    u_xlat7 = x_755;
    let x_757 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_759 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_761 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_763 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_764 : vec4<f32> = vec4<f32>(x_757, x_759, x_761, x_763);
    let x_772 : vec4<bool> = (vec4<f32>(x_764.x, x_764.y, x_764.z, x_764.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_772.x, x_772.y);
    let x_775 : bool = u_xlatb20.y;
    if (x_775) {
      let x_780 : f32 = u_xlat7.w;
      x_776 = x_780;
    } else {
      let x_783 : f32 = u_xlat7.x;
      x_776 = x_783;
    }
    let x_784 : f32 = x_776;
    u_xlat34 = x_784;
    let x_786 : bool = u_xlatb20.x;
    if (x_786) {
      let x_790 : vec4<f32> = u_xlat7;
      x_787 = vec3<f32>(x_790.x, x_790.y, x_790.z);
    } else {
      let x_793 : f32 = u_xlat34;
      x_787 = vec3<f32>(x_793, x_793, x_793);
    }
    let x_795 : vec3<f32> = x_787;
    u_xlat20 = x_795;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_800 : vec3<f32> = u_xlat20;
  let x_802 : vec4<f32> = x_123.x_MainLightColor;
  u_xlat20 = (x_800 * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat4;
  let x_808 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_805.x, x_805.y, x_805.z)), x_808);
  let x_812 : f32 = u_xlat7.x;
  let x_814 : f32 = u_xlat7.x;
  u_xlat7.x = (x_812 + x_814);
  let x_817 : vec3<f32> = u_xlat14;
  let x_818 : vec4<f32> = u_xlat7;
  let x_822 : vec4<f32> = u_xlat4;
  let x_825 : vec3<f32> = ((x_817 * -(vec3<f32>(x_818.x, x_818.x, x_818.x))) + -(vec3<f32>(x_822.x, x_822.y, x_822.z)));
  let x_826 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_829 : vec3<f32> = u_xlat14;
  let x_830 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_829, vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : f32 = u_xlat49;
  u_xlat49 = clamp(x_833, 0.0f, 1.0f);
  let x_835 : f32 = u_xlat49;
  u_xlat49 = (-(x_835) + 1.0f);
  let x_838 : f32 = u_xlat49;
  let x_839 : f32 = u_xlat49;
  u_xlat49 = (x_838 * x_839);
  let x_841 : f32 = u_xlat49;
  let x_842 : f32 = u_xlat49;
  u_xlat49 = (x_841 * x_842);
  let x_845 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_845) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_852 : f32 = u_xlat45;
  let x_854 : f32 = u_xlat8.x;
  u_xlat45 = (x_852 * x_854);
  let x_856 : f32 = u_xlat45;
  u_xlat45 = (x_856 * 6.0f);
  let x_867 : vec4<f32> = u_xlat7;
  let x_869 : f32 = u_xlat45;
  let x_870 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_867.x, x_867.y, x_867.z), x_869);
  u_xlat8 = x_870;
  let x_872 : f32 = u_xlat8.w;
  u_xlat45 = (x_872 + -1.0f);
  let x_875 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_876 : f32 = u_xlat45;
  u_xlat45 = ((x_875 * x_876) + 1.0f);
  let x_879 : f32 = u_xlat45;
  u_xlat45 = max(x_879, 0.0f);
  let x_881 : f32 = u_xlat45;
  u_xlat45 = log2(x_881);
  let x_883 : f32 = u_xlat45;
  let x_885 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_883 * x_885);
  let x_887 : f32 = u_xlat45;
  u_xlat45 = exp2(x_887);
  let x_889 : f32 = u_xlat45;
  let x_891 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_889 * x_891);
  let x_893 : vec4<f32> = u_xlat8;
  let x_895 : f32 = u_xlat45;
  let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(x_895, x_895, x_895));
  let x_898 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : f32 = u_xlat46;
  let x_902 : f32 = u_xlat46;
  let x_906 : vec2<f32> = ((vec2<f32>(x_900, x_900) * vec2<f32>(x_902, x_902)) + vec2<f32>(-1.0f, 1.0f));
  let x_907 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
  let x_910 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_910);
  let x_912 : f32 = u_xlat19;
  u_xlat46 = (x_912 + -0.03999999910593032837f);
  let x_915 : f32 = u_xlat49;
  let x_916 : f32 = u_xlat46;
  u_xlat46 = ((x_915 * x_916) + 0.03999999910593032837f);
  let x_920 : f32 = u_xlat45;
  let x_921 : f32 = u_xlat46;
  u_xlat45 = (x_920 * x_921);
  let x_923 : f32 = u_xlat45;
  let x_925 : vec4<f32> = u_xlat7;
  let x_927 : vec3<f32> = (vec3<f32>(x_923, x_923, x_923) * vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec4<f32> = u_xlat2;
  let x_932 : vec4<f32> = u_xlat3;
  let x_935 : vec4<f32> = u_xlat7;
  let x_937 : vec3<f32> = ((vec3<f32>(x_930.x, x_930.z, x_930.w) * vec3<f32>(x_932.x, x_932.y, x_932.z)) + vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_938.y, x_937.y, x_937.z);
  let x_940 : f32 = u_xlat43;
  let x_942 : f32 = x_42.unity_LightData.z;
  u_xlat43 = (x_940 * x_942);
  let x_944 : vec3<f32> = u_xlat14;
  let x_946 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat45 = dot(x_944, vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat45;
  u_xlat45 = clamp(x_949, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat43;
  let x_952 : f32 = u_xlat45;
  u_xlat43 = (x_951 * x_952);
  let x_954 : f32 = u_xlat43;
  let x_956 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_954, x_954, x_954) * x_956);
  let x_958 : vec4<f32> = u_xlat4;
  let x_961 : vec4<f32> = x_123.x_MainLightPosition;
  let x_963 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) + vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat7;
  let x_968 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : f32 = u_xlat43;
  u_xlat43 = max(x_971, 1.17549435e-38f);
  let x_973 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_973);
  let x_975 : f32 = u_xlat43;
  let x_977 : vec4<f32> = u_xlat7;
  let x_979 : vec3<f32> = (vec3<f32>(x_975, x_975, x_975) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec3<f32> = u_xlat14;
  let x_983 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_982, vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : f32 = u_xlat43;
  u_xlat43 = clamp(x_986, 0.0f, 1.0f);
  let x_989 : vec4<f32> = x_123.x_MainLightPosition;
  let x_991 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_989.x, x_989.y, x_989.z), vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : f32 = u_xlat45;
  u_xlat45 = clamp(x_994, 0.0f, 1.0f);
  let x_996 : f32 = u_xlat43;
  let x_997 : f32 = u_xlat43;
  u_xlat43 = (x_996 * x_997);
  let x_999 : f32 = u_xlat43;
  let x_1001 : f32 = u_xlat8.x;
  u_xlat43 = ((x_999 * x_1001) + 1.00001001358032226562f);
  let x_1005 : f32 = u_xlat45;
  let x_1006 : f32 = u_xlat45;
  u_xlat45 = (x_1005 * x_1006);
  let x_1008 : f32 = u_xlat43;
  let x_1009 : f32 = u_xlat43;
  u_xlat43 = (x_1008 * x_1009);
  let x_1011 : f32 = u_xlat45;
  u_xlat45 = max(x_1011, 0.10000000149011611938f);
  let x_1014 : f32 = u_xlat43;
  let x_1015 : f32 = u_xlat45;
  u_xlat43 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat33;
  let x_1018 : f32 = u_xlat43;
  u_xlat43 = (x_1017 * x_1018);
  let x_1021 : f32 = u_xlat5.x;
  let x_1022 : f32 = u_xlat43;
  u_xlat43 = (x_1021 / x_1022);
  let x_1024 : f32 = u_xlat43;
  let x_1028 : vec4<f32> = u_xlat3;
  let x_1030 : vec3<f32> = ((vec3<f32>(x_1024, x_1024, x_1024) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1033 : vec3<f32> = u_xlat20;
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1033 * vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1039 : f32 = x_123.x_AdditionalLightsCount.x;
  let x_1041 : f32 = x_42.unity_LightData.y;
  u_xlat43 = min(x_1039, x_1041);
  let x_1045 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1045));
  let x_1049 : f32 = u_xlat6.x;
  let x_1052 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_1055 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1049 * x_1052) + x_1055);
  let x_1057 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1057, 0.0f, 1.0f);
  let x_1061 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1063 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1065 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1067 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1068 : vec4<f32> = vec4<f32>(x_1061, x_1063, x_1065, x_1067);
  let x_1074 : vec4<bool> = (vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1074.x, x_1074.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1087 : u32 = u_xlatu_loop_1;
    let x_1088 : u32 = u_xlatu43;
    if ((x_1087 < x_1088)) {
    } else {
      break;
    }
    let x_1091 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_1091 >> 2u);
    let x_1095 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_1095 & 3u));
    let x_1098 : u32 = u_xlatu19;
    let x_1101 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_1098)];
    let x_1111 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1116 : vec4<u32> = indexable[x_1111];
    u_xlat19 = dot(x_1101, bitcast<vec4<f32>>(x_1116));
    let x_1120 : f32 = u_xlat19;
    u_xlati19 = i32(x_1120);
    let x_1123 : vec3<f32> = vs_INTERP8;
    let x_1134 : i32 = u_xlati19;
    let x_1136 : vec4<f32> = x_1133.x_AdditionalLightsPosition[x_1134];
    let x_1139 : i32 = u_xlati19;
    let x_1141 : vec4<f32> = x_1133.x_AdditionalLightsPosition[x_1139];
    u_xlat9 = ((-(x_1123) * vec3<f32>(x_1136.w, x_1136.w, x_1136.w)) + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
    let x_1144 : vec3<f32> = u_xlat9;
    let x_1145 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1144, x_1145);
    let x_1149 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1149, 0.00006103515625f);
    let x_1155 : f32 = u_xlat6.x;
    u_xlat35 = inverseSqrt(x_1155);
    let x_1158 : f32 = u_xlat35;
    let x_1160 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1158, x_1158, x_1158) * x_1160);
    let x_1163 : f32 = u_xlat6.x;
    u_xlat49 = (1.0f / x_1163);
    let x_1166 : f32 = u_xlat6.x;
    let x_1167 : i32 = u_xlati19;
    let x_1169 : f32 = x_1133.x_AdditionalLightsAttenuation[x_1167].x;
    u_xlat6.x = (x_1166 * x_1169);
    let x_1173 : f32 = u_xlat6.x;
    let x_1176 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1173) * x_1176) + 1.0f);
    let x_1181 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1181, 0.0f);
    let x_1185 : f32 = u_xlat6.x;
    let x_1187 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1185 * x_1187);
    let x_1191 : f32 = u_xlat6.x;
    let x_1192 : f32 = u_xlat49;
    u_xlat6.x = (x_1191 * x_1192);
    let x_1195 : i32 = u_xlati19;
    let x_1197 : vec4<f32> = x_1133.x_AdditionalLightsSpotDir[x_1195];
    let x_1199 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), x_1199);
    let x_1201 : f32 = u_xlat49;
    let x_1202 : i32 = u_xlati19;
    let x_1204 : f32 = x_1133.x_AdditionalLightsAttenuation[x_1202].z;
    let x_1206 : i32 = u_xlati19;
    let x_1208 : f32 = x_1133.x_AdditionalLightsAttenuation[x_1206].w;
    u_xlat49 = ((x_1201 * x_1204) + x_1208);
    let x_1210 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1210, 0.0f, 1.0f);
    let x_1212 : f32 = u_xlat49;
    let x_1213 : f32 = u_xlat49;
    u_xlat49 = (x_1212 * x_1213);
    let x_1216 : f32 = u_xlat6.x;
    let x_1217 : f32 = u_xlat49;
    u_xlat6.x = (x_1216 * x_1217);
    let x_1222 : i32 = u_xlati19;
    let x_1224 : f32 = x_231.x_AdditionalShadowParams[x_1222].w;
    u_xlati49 = i32(x_1224);
    let x_1227 : i32 = u_xlati49;
    u_xlatb51 = (x_1227 >= 0i);
    let x_1229 : bool = u_xlatb51;
    if (x_1229) {
      let x_1233 : i32 = u_xlati19;
      let x_1235 : f32 = x_231.x_AdditionalShadowParams[x_1233].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1235, x_1235, x_1235, x_1235))));
      let x_1239 : bool = u_xlatb51;
      if (x_1239) {
        let x_1244 : vec3<f32> = u_xlat10;
        let x_1247 : vec3<f32> = u_xlat10;
        let x_1250 : vec4<bool> = (abs(vec4<f32>(x_1244.z, x_1244.z, x_1244.y, x_1244.z)) >= abs(vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.x)));
        let x_1252 : vec3<bool> = vec3<bool>(x_1250.x, x_1250.y, x_1250.z);
        let x_1253 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
        let x_1256 : bool = u_xlatb11.y;
        let x_1258 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1256 & x_1258);
        let x_1260 : vec3<f32> = u_xlat10;
        let x_1263 : vec4<bool> = (-(vec4<f32>(x_1260.z, x_1260.y, x_1260.z, x_1260.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1264 : vec3<bool> = vec3<bool>(x_1263.x, x_1263.y, x_1263.w);
        let x_1265 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1264.x, x_1264.y, x_1265.z, x_1264.z);
        let x_1269 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1269);
        let x_1274 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1274);
        let x_1280 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1280);
        let x_1283 : bool = u_xlatb11.z;
        if (x_1283) {
          let x_1288 : f32 = u_xlat11.y;
          x_1284 = x_1288;
        } else {
          let x_1290 : f32 = u_xlat52;
          x_1284 = x_1290;
        }
        let x_1291 : f32 = x_1284;
        u_xlat52 = x_1291;
        let x_1293 : bool = u_xlatb51;
        if (x_1293) {
          let x_1298 : f32 = u_xlat11.x;
          x_1294 = x_1298;
        } else {
          let x_1300 : f32 = u_xlat52;
          x_1294 = x_1300;
        }
        let x_1301 : f32 = x_1294;
        u_xlat51 = x_1301;
        let x_1302 : i32 = u_xlati19;
        let x_1304 : f32 = x_231.x_AdditionalShadowParams[x_1302].w;
        u_xlat52 = trunc(x_1304);
        let x_1306 : f32 = u_xlat51;
        let x_1307 : f32 = u_xlat52;
        u_xlat51 = (x_1306 + x_1307);
        let x_1309 : f32 = u_xlat51;
        u_xlati49 = i32(x_1309);
      }
      let x_1311 : i32 = u_xlati49;
      u_xlati49 = (x_1311 << bitcast<u32>(2i));
      let x_1313 : vec3<f32> = vs_INTERP8;
      let x_1316 : i32 = u_xlati49;
      let x_1319 : i32 = u_xlati49;
      let x_1323 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1316 + 1i) / 4i)][((x_1319 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1313.y, x_1313.y, x_1313.y, x_1313.y) * x_1323);
      let x_1325 : i32 = u_xlati49;
      let x_1327 : i32 = u_xlati49;
      let x_1330 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_1325 / 4i)][(x_1327 % 4i)];
      let x_1331 : vec3<f32> = vs_INTERP8;
      let x_1334 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1330 * vec4<f32>(x_1331.x, x_1331.x, x_1331.x, x_1331.x)) + x_1334);
      let x_1336 : i32 = u_xlati49;
      let x_1339 : i32 = u_xlati49;
      let x_1343 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1336 + 2i) / 4i)][((x_1339 + 2i) % 4i)];
      let x_1344 : vec3<f32> = vs_INTERP8;
      let x_1347 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1343 * vec4<f32>(x_1344.z, x_1344.z, x_1344.z, x_1344.z)) + x_1347);
      let x_1349 : vec4<f32> = u_xlat11;
      let x_1350 : i32 = u_xlati49;
      let x_1353 : i32 = u_xlati49;
      let x_1357 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1350 + 3i) / 4i)][((x_1353 + 3i) % 4i)];
      u_xlat11 = (x_1349 + x_1357);
      let x_1359 : vec4<f32> = u_xlat11;
      let x_1361 : vec4<f32> = u_xlat11;
      let x_1363 : vec3<f32> = (vec3<f32>(x_1359.x, x_1359.y, x_1359.z) / vec3<f32>(x_1361.w, x_1361.w, x_1361.w));
      let x_1364 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
      let x_1367 : vec4<f32> = u_xlat11;
      let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
      let x_1370 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
      let x_1378 : vec3<f32> = txVec2;
      let x_1380 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
      u_xlat49 = x_1380;
      let x_1381 : i32 = u_xlati19;
      let x_1383 : f32 = x_231.x_AdditionalShadowParams[x_1381].x;
      u_xlat51 = (1.0f + -(x_1383));
      let x_1386 : f32 = u_xlat49;
      let x_1387 : i32 = u_xlati19;
      let x_1389 : f32 = x_231.x_AdditionalShadowParams[x_1387].x;
      let x_1391 : f32 = u_xlat51;
      u_xlat49 = ((x_1386 * x_1389) + x_1391);
      let x_1394 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1394);
      let x_1398 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1398 >= 1.0f);
      let x_1400 : bool = u_xlatb51;
      let x_1401 : bool = u_xlatb52;
      u_xlatb51 = (x_1400 | x_1401);
      let x_1403 : bool = u_xlatb51;
      let x_1404 : f32 = u_xlat49;
      u_xlat49 = select(x_1404, 1.0f, x_1403);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1407 : f32 = u_xlat49;
    u_xlat51 = (-(x_1407) + 1.0f);
    let x_1410 : f32 = u_xlat45;
    let x_1411 : f32 = u_xlat51;
    let x_1413 : f32 = u_xlat49;
    u_xlat49 = ((x_1410 * x_1411) + x_1413);
    let x_1416 : i32 = u_xlati19;
    u_xlati51 = (1i << bitcast<u32>((x_1416 & 31i)));
    let x_1420 : i32 = u_xlati51;
    let x_1423 : f32 = x_692.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1420) & bitcast<u32>(x_1423)));
    let x_1427 : i32 = u_xlati51;
    if ((x_1427 != 0i)) {
      let x_1431 : i32 = u_xlati19;
      let x_1433 : f32 = x_692.x_AdditionalLightsLightTypes[x_1431].el;
      u_xlati51 = i32(x_1433);
      let x_1436 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1436 != 0i));
      let x_1440 : i32 = u_xlati19;
      u_xlati11 = (x_1440 << bitcast<u32>(2i));
      let x_1442 : i32 = u_xlati52;
      if ((x_1442 != 0i)) {
        let x_1447 : vec3<f32> = vs_INTERP8;
        let x_1449 : i32 = u_xlati11;
        let x_1452 : i32 = u_xlati11;
        let x_1456 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1449 + 1i) / 4i)][((x_1452 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1447.y, x_1447.y, x_1447.y) * vec3<f32>(x_1456.x, x_1456.y, x_1456.w));
        let x_1459 : i32 = u_xlati11;
        let x_1461 : i32 = u_xlati11;
        let x_1464 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[(x_1459 / 4i)][(x_1461 % 4i)];
        let x_1466 : vec3<f32> = vs_INTERP8;
        let x_1469 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1464.x, x_1464.y, x_1464.w) * vec3<f32>(x_1466.x, x_1466.x, x_1466.x)) + x_1469);
        let x_1471 : i32 = u_xlati11;
        let x_1474 : i32 = u_xlati11;
        let x_1478 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1471 + 2i) / 4i)][((x_1474 + 2i) % 4i)];
        let x_1480 : vec3<f32> = vs_INTERP8;
        let x_1483 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1478.x, x_1478.y, x_1478.w) * vec3<f32>(x_1480.z, x_1480.z, x_1480.z)) + x_1483);
        let x_1485 : vec3<f32> = u_xlat25;
        let x_1486 : i32 = u_xlati11;
        let x_1489 : i32 = u_xlati11;
        let x_1493 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1486 + 3i) / 4i)][((x_1489 + 3i) % 4i)];
        u_xlat25 = (x_1485 + vec3<f32>(x_1493.x, x_1493.y, x_1493.w));
        let x_1496 : vec3<f32> = u_xlat25;
        let x_1498 : vec3<f32> = u_xlat25;
        let x_1500 : vec2<f32> = (vec2<f32>(x_1496.x, x_1496.y) / vec2<f32>(x_1498.z, x_1498.z));
        let x_1501 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1500.x, x_1500.y, x_1501.z);
        let x_1503 : vec3<f32> = u_xlat25;
        let x_1506 : vec2<f32> = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1507 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1506.x, x_1506.y, x_1507.z);
        let x_1509 : vec3<f32> = u_xlat25;
        let x_1513 : vec2<f32> = clamp(vec2<f32>(x_1509.x, x_1509.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1514 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1513.x, x_1513.y, x_1514.z);
        let x_1516 : i32 = u_xlati19;
        let x_1518 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1516];
        let x_1520 : vec3<f32> = u_xlat25;
        let x_1523 : i32 = u_xlati19;
        let x_1525 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1523];
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1525.z, x_1525.w));
        let x_1528 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1527.x, x_1527.y, x_1528.z);
      } else {
        let x_1531 : i32 = u_xlati51;
        u_xlatb51 = (x_1531 == 1i);
        let x_1533 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1533);
        let x_1535 : i32 = u_xlati51;
        if ((x_1535 != 0i)) {
          let x_1540 : vec3<f32> = vs_INTERP8;
          let x_1542 : i32 = u_xlati11;
          let x_1545 : i32 = u_xlati11;
          let x_1549 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1542 + 1i) / 4i)][((x_1545 + 1i) % 4i)];
          let x_1551 : vec2<f32> = (vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(x_1549.x, x_1549.y));
          let x_1552 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1551.x, x_1551.y, x_1552.z, x_1552.w);
          let x_1554 : i32 = u_xlati11;
          let x_1556 : i32 = u_xlati11;
          let x_1559 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[(x_1554 / 4i)][(x_1556 % 4i)];
          let x_1561 : vec3<f32> = vs_INTERP8;
          let x_1564 : vec4<f32> = u_xlat12;
          let x_1566 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1561.x, x_1561.x)) + vec2<f32>(x_1564.x, x_1564.y));
          let x_1567 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
          let x_1569 : i32 = u_xlati11;
          let x_1572 : i32 = u_xlati11;
          let x_1576 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1569 + 2i) / 4i)][((x_1572 + 2i) % 4i)];
          let x_1578 : vec3<f32> = vs_INTERP8;
          let x_1581 : vec4<f32> = u_xlat12;
          let x_1583 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.y) * vec2<f32>(x_1578.z, x_1578.z)) + vec2<f32>(x_1581.x, x_1581.y));
          let x_1584 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1583.x, x_1583.y, x_1584.z, x_1584.w);
          let x_1586 : vec4<f32> = u_xlat12;
          let x_1588 : i32 = u_xlati11;
          let x_1591 : i32 = u_xlati11;
          let x_1595 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1588 + 3i) / 4i)][((x_1591 + 3i) % 4i)];
          let x_1597 : vec2<f32> = (vec2<f32>(x_1586.x, x_1586.y) + vec2<f32>(x_1595.x, x_1595.y));
          let x_1598 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1597.x, x_1597.y, x_1598.z, x_1598.w);
          let x_1600 : vec4<f32> = u_xlat12;
          let x_1603 : vec2<f32> = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1604 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1603.x, x_1603.y, x_1604.z, x_1604.w);
          let x_1606 : vec4<f32> = u_xlat12;
          let x_1608 : vec2<f32> = fract(vec2<f32>(x_1606.x, x_1606.y));
          let x_1609 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1608.x, x_1608.y, x_1609.z, x_1609.w);
          let x_1611 : i32 = u_xlati19;
          let x_1613 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1611];
          let x_1615 : vec4<f32> = u_xlat12;
          let x_1618 : i32 = u_xlati19;
          let x_1620 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1618];
          let x_1622 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.y) * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1620.z, x_1620.w));
          let x_1623 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1622.x, x_1622.y, x_1623.z);
        } else {
          let x_1626 : vec3<f32> = vs_INTERP8;
          let x_1628 : i32 = u_xlati11;
          let x_1631 : i32 = u_xlati11;
          let x_1635 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1628 + 1i) / 4i)][((x_1631 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1626.y, x_1626.y, x_1626.y, x_1626.y) * x_1635);
          let x_1637 : i32 = u_xlati11;
          let x_1639 : i32 = u_xlati11;
          let x_1642 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[(x_1637 / 4i)][(x_1639 % 4i)];
          let x_1643 : vec3<f32> = vs_INTERP8;
          let x_1646 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1642 * vec4<f32>(x_1643.x, x_1643.x, x_1643.x, x_1643.x)) + x_1646);
          let x_1648 : i32 = u_xlati11;
          let x_1651 : i32 = u_xlati11;
          let x_1655 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1648 + 2i) / 4i)][((x_1651 + 2i) % 4i)];
          let x_1656 : vec3<f32> = vs_INTERP8;
          let x_1659 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1655 * vec4<f32>(x_1656.z, x_1656.z, x_1656.z, x_1656.z)) + x_1659);
          let x_1661 : vec4<f32> = u_xlat12;
          let x_1662 : i32 = u_xlati11;
          let x_1665 : i32 = u_xlati11;
          let x_1669 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1662 + 3i) / 4i)][((x_1665 + 3i) % 4i)];
          u_xlat12 = (x_1661 + x_1669);
          let x_1671 : vec4<f32> = u_xlat12;
          let x_1673 : vec4<f32> = u_xlat12;
          let x_1675 : vec3<f32> = (vec3<f32>(x_1671.x, x_1671.y, x_1671.z) / vec3<f32>(x_1673.w, x_1673.w, x_1673.w));
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
          let x_1678 : vec4<f32> = u_xlat12;
          let x_1680 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1678.x, x_1678.y, x_1678.z), vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
          let x_1683 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1683);
          let x_1685 : f32 = u_xlat51;
          let x_1687 : vec4<f32> = u_xlat12;
          let x_1689 : vec3<f32> = (vec3<f32>(x_1685, x_1685, x_1685) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
          let x_1690 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
          let x_1692 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1692.x, x_1692.y, x_1692.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1697 : f32 = u_xlat51;
          u_xlat51 = max(x_1697, 0.00000099999999747524f);
          let x_1700 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1700);
          let x_1703 : f32 = u_xlat51;
          let x_1705 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1703, x_1703, x_1703) * vec3<f32>(x_1705.z, x_1705.x, x_1705.y));
          let x_1709 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1709);
          let x_1713 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1713, 0.0f, 1.0f);
          let x_1716 : vec3<f32> = u_xlat13;
          let x_1718 : vec4<bool> = (vec4<f32>(x_1716.y, x_1716.y, x_1716.y, x_1716.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1719 : vec2<bool> = vec2<bool>(x_1718.x, x_1718.w);
          let x_1720 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1719.x, x_1720.y, x_1720.z, x_1719.y);
          let x_1723 : bool = u_xlatb11.x;
          if (x_1723) {
            let x_1728 : f32 = u_xlat13.x;
            x_1724 = x_1728;
          } else {
            let x_1731 : f32 = u_xlat13.x;
            x_1724 = -(x_1731);
          }
          let x_1733 : f32 = x_1724;
          u_xlat11.x = x_1733;
          let x_1736 : bool = u_xlatb11.w;
          if (x_1736) {
            let x_1741 : f32 = u_xlat13.x;
            x_1737 = x_1741;
          } else {
            let x_1744 : f32 = u_xlat13.x;
            x_1737 = -(x_1744);
          }
          let x_1746 : f32 = x_1737;
          u_xlat11.w = x_1746;
          let x_1748 : vec4<f32> = u_xlat12;
          let x_1750 : f32 = u_xlat51;
          let x_1753 : vec4<f32> = u_xlat11;
          let x_1755 : vec2<f32> = ((vec2<f32>(x_1748.x, x_1748.y) * vec2<f32>(x_1750, x_1750)) + vec2<f32>(x_1753.x, x_1753.w));
          let x_1756 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1755.x, x_1756.y, x_1756.z, x_1755.y);
          let x_1758 : vec4<f32> = u_xlat11;
          let x_1761 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1762 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1761.x, x_1762.y, x_1762.z, x_1761.y);
          let x_1764 : vec4<f32> = u_xlat11;
          let x_1768 : vec2<f32> = clamp(vec2<f32>(x_1764.x, x_1764.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1769 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1768.x, x_1769.y, x_1769.z, x_1768.y);
          let x_1771 : i32 = u_xlati19;
          let x_1773 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1771];
          let x_1775 : vec4<f32> = u_xlat11;
          let x_1778 : i32 = u_xlati19;
          let x_1780 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1778];
          let x_1782 : vec2<f32> = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1775.x, x_1775.w)) + vec2<f32>(x_1780.z, x_1780.w));
          let x_1783 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1782.x, x_1782.y, x_1783.z);
        }
      }
      let x_1790 : vec3<f32> = u_xlat25;
      let x_1792 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1790.x, x_1790.y), 0.0f);
      u_xlat11 = x_1792;
      let x_1794 : bool = u_xlatb7.y;
      if (x_1794) {
        let x_1799 : f32 = u_xlat11.w;
        x_1795 = x_1799;
      } else {
        let x_1802 : f32 = u_xlat11.x;
        x_1795 = x_1802;
      }
      let x_1803 : f32 = x_1795;
      u_xlat51 = x_1803;
      let x_1805 : bool = u_xlatb7.x;
      if (x_1805) {
        let x_1809 : vec4<f32> = u_xlat11;
        x_1806 = vec3<f32>(x_1809.x, x_1809.y, x_1809.z);
      } else {
        let x_1812 : f32 = u_xlat51;
        x_1806 = vec3<f32>(x_1812, x_1812, x_1812);
      }
      let x_1814 : vec3<f32> = x_1806;
      let x_1815 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1821 : vec4<f32> = u_xlat11;
    let x_1823 : i32 = u_xlati19;
    let x_1825 : vec4<f32> = x_1133.x_AdditionalLightsColor[x_1823];
    let x_1827 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.y, x_1821.z) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
    let x_1828 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
    let x_1831 : f32 = u_xlat6.x;
    let x_1832 : f32 = u_xlat49;
    u_xlat19 = (x_1831 * x_1832);
    let x_1834 : vec3<f32> = u_xlat14;
    let x_1835 : vec3<f32> = u_xlat10;
    u_xlat6.x = dot(x_1834, x_1835);
    let x_1839 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1839, 0.0f, 1.0f);
    let x_1842 : f32 = u_xlat19;
    let x_1844 : f32 = u_xlat6.x;
    u_xlat19 = (x_1842 * x_1844);
    let x_1846 : f32 = u_xlat19;
    let x_1848 : vec4<f32> = u_xlat11;
    let x_1850 : vec3<f32> = (vec3<f32>(x_1846, x_1846, x_1846) * vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
    let x_1851 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
    let x_1853 : vec3<f32> = u_xlat9;
    let x_1854 : f32 = u_xlat35;
    let x_1857 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1853 * vec3<f32>(x_1854, x_1854, x_1854)) + vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
    let x_1860 : vec3<f32> = u_xlat9;
    let x_1861 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_1860, x_1861);
    let x_1863 : f32 = u_xlat19;
    u_xlat19 = max(x_1863, 1.17549435e-38f);
    let x_1865 : f32 = u_xlat19;
    u_xlat19 = inverseSqrt(x_1865);
    let x_1867 : f32 = u_xlat19;
    let x_1869 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1867, x_1867, x_1867) * x_1869);
    let x_1871 : vec3<f32> = u_xlat14;
    let x_1872 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_1871, x_1872);
    let x_1874 : f32 = u_xlat19;
    u_xlat19 = clamp(x_1874, 0.0f, 1.0f);
    let x_1876 : vec3<f32> = u_xlat10;
    let x_1877 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1876, x_1877);
    let x_1881 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1881, 0.0f, 1.0f);
    let x_1884 : f32 = u_xlat19;
    let x_1885 : f32 = u_xlat19;
    u_xlat19 = (x_1884 * x_1885);
    let x_1887 : f32 = u_xlat19;
    let x_1889 : f32 = u_xlat8.x;
    u_xlat19 = ((x_1887 * x_1889) + 1.00001001358032226562f);
    let x_1893 : f32 = u_xlat6.x;
    let x_1895 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1893 * x_1895);
    let x_1898 : f32 = u_xlat19;
    let x_1899 : f32 = u_xlat19;
    u_xlat19 = (x_1898 * x_1899);
    let x_1902 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1902, 0.10000000149011611938f);
    let x_1905 : f32 = u_xlat19;
    let x_1907 : f32 = u_xlat6.x;
    u_xlat19 = (x_1905 * x_1907);
    let x_1909 : f32 = u_xlat33;
    let x_1910 : f32 = u_xlat19;
    u_xlat19 = (x_1909 * x_1910);
    let x_1913 : f32 = u_xlat5.x;
    let x_1914 : f32 = u_xlat19;
    u_xlat19 = (x_1913 / x_1914);
    let x_1916 : f32 = u_xlat19;
    let x_1919 : vec4<f32> = u_xlat3;
    u_xlat9 = ((vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
    let x_1922 : vec3<f32> = u_xlat9;
    let x_1923 : vec4<f32> = u_xlat11;
    let x_1926 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1922 * vec3<f32>(x_1923.x, x_1923.y, x_1923.z)) + x_1926);

    continuing {
      let x_1928 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1928 + bitcast<u32>(1i));
    }
  }
  let x_1930 : vec4<f32> = u_xlat2;
  let x_1932 : f32 = u_xlat47;
  let x_1935 : vec3<f32> = u_xlat20;
  u_xlat14 = ((vec3<f32>(x_1930.x, x_1930.z, x_1930.w) * vec3<f32>(x_1932, x_1932, x_1932)) + x_1935);
  let x_1937 : vec3<f32> = u_xlat22;
  let x_1938 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_1937 + x_1938);
  let x_1942 : vec4<f32> = vs_INTERP6;
  let x_1944 : vec3<f32> = u_xlat1;
  let x_1946 : vec3<f32> = u_xlat14;
  let x_1947 : vec3<f32> = ((vec3<f32>(x_1942.w, x_1942.w, x_1942.w) * x_1944) + x_1946);
  let x_1948 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : bool = u_xlatb16;
  let x_1951 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1951, x_1950);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


