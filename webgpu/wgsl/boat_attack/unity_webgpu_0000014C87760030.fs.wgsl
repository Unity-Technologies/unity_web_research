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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_123 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_133 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_231 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat43 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_719 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati19 : i32;

@group(1) @binding(1) var<uniform> x_1160 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_350 : f32;
  var x_396 : f32;
  var x_481 : f32;
  var x_494 : f32;
  var x_506 : f32;
  var txVec1 : vec3<f32>;
  var x_803 : f32;
  var x_814 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1311 : f32;
  var x_1321 : f32;
  var txVec2 : vec3<f32>;
  var x_1751 : f32;
  var x_1764 : f32;
  var x_1822 : f32;
  var x_1833 : vec3<f32>;
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
  let x_447 : vec3<f32> = (x_444 * vec3<f32>(x_445.x, x_445.x, x_445.x));
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_452 : f32 = x_123.unity_OrthoParams.w;
  u_xlatb14.x = (x_452 == 0.0f);
  let x_455 : vec3<f32> = vs_INTERP8;
  let x_460 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_461 : vec3<f32> = (-(x_455) + x_460);
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_461.x, x_462.y, x_461.y, x_461.z);
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_465.x, x_465.z, x_465.w), vec3<f32>(x_467.x, x_467.z, x_467.w));
  let x_470 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_470);
  let x_472 : f32 = u_xlat28;
  let x_474 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.z, x_474.w));
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_476.x, x_477.y, x_476.y, x_476.z);
  let x_480 : bool = u_xlatb14.x;
  if (x_480) {
    let x_485 : f32 = u_xlat2.x;
    x_481 = x_485;
  } else {
    let x_489 : f32 = x_123.unity_MatrixV[0i].z;
    x_481 = x_489;
  }
  let x_490 : f32 = x_481;
  u_xlat4.x = x_490;
  let x_493 : bool = u_xlatb14.x;
  if (x_493) {
    let x_498 : f32 = u_xlat2.z;
    x_494 = x_498;
  } else {
    let x_501 : f32 = x_123.unity_MatrixV[1i].z;
    x_494 = x_501;
  }
  let x_502 : f32 = x_494;
  u_xlat4.y = x_502;
  let x_505 : bool = u_xlatb14.x;
  if (x_505) {
    let x_510 : f32 = u_xlat2.w;
    x_506 = x_510;
  } else {
    let x_513 : f32 = x_123.unity_MatrixV[2i].z;
    x_506 = x_513;
  }
  let x_514 : f32 = x_506;
  u_xlat4.z = x_514;
  u_xlat3.w = 1.0f;
  let x_519 : vec4<f32> = x_42.unity_SHAr;
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_42.unity_SHAg;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_42.unity_SHAb;
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_531, x_532);
  let x_536 : vec4<f32> = u_xlat3;
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_536.y, x_536.z, x_536.z, x_536.x) * vec4<f32>(x_538.x, x_538.y, x_538.z, x_538.z));
  let x_544 : vec4<f32> = x_42.unity_SHBr;
  let x_545 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_544, x_545);
  let x_550 : vec4<f32> = x_42.unity_SHBg;
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_550, x_551);
  let x_556 : vec4<f32> = x_42.unity_SHBb;
  let x_557 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_556, x_557);
  let x_561 : f32 = u_xlat3.y;
  let x_563 : f32 = u_xlat3.y;
  u_xlat14.x = (x_561 * x_563);
  let x_567 : f32 = u_xlat3.x;
  let x_569 : f32 = u_xlat3.x;
  let x_572 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_567 * x_569) + -(x_572));
  let x_578 : vec4<f32> = x_42.unity_SHC;
  let x_580 : vec3<f32> = u_xlat14;
  let x_583 : vec3<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(x_580.x, x_580.x, x_580.x)) + x_583);
  let x_585 : vec3<f32> = u_xlat14;
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_585 + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_589, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_593 : f32 = u_xlat6.x;
  u_xlat6.x = x_593;
  let x_596 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_596, 0.0f, 1.0f);
  let x_599 : f32 = u_xlat0;
  u_xlat0 = min(x_599, 1.0f);
  let x_601 : vec3<f32> = u_xlat5;
  let x_604 : vec3<f32> = (x_601 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_605.y, x_604.y, x_604.z);
  let x_609 : f32 = u_xlat6.x;
  u_xlat45 = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat45;
  let x_614 : f32 = u_xlat45;
  u_xlat46 = (x_613 * x_614);
  let x_616 : f32 = u_xlat46;
  u_xlat46 = max(x_616, 0.0078125f);
  let x_619 : f32 = u_xlat46;
  let x_620 : f32 = u_xlat46;
  u_xlat5.x = (x_619 * x_620);
  let x_625 : f32 = u_xlat6.x;
  u_xlat19 = (x_625 + 0.04000002145767211914f);
  let x_628 : f32 = u_xlat19;
  u_xlat19 = min(x_628, 1.0f);
  let x_631 : f32 = u_xlat46;
  u_xlat33 = ((x_631 * 4.0f) + 2.0f);
  let x_637 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_637, 1.0f);
  let x_641 : vec4<f32> = vs_INTERP3;
  let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
  let x_644 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_642.x, x_642.y, x_644);
  let x_651 : vec3<f32> = txVec1;
  let x_653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_651.xy, x_651.z);
  u_xlat6.x = x_653;
  let x_656 : f32 = u_xlat6.x;
  let x_658 : f32 = x_231.x_MainLightShadowParams.x;
  let x_660 : f32 = u_xlat43;
  u_xlat43 = ((x_656 * x_658) + x_660);
  let x_664 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_664);
  let x_668 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_668 >= 1.0f);
  let x_672 : bool = u_xlatb20.x;
  let x_673 : bool = u_xlatb6;
  u_xlatb6 = (x_672 | x_673);
  let x_675 : bool = u_xlatb6;
  let x_676 : f32 = u_xlat43;
  u_xlat43 = select(x_676, 1.0f, x_675);
  let x_678 : vec3<f32> = vs_INTERP8;
  let x_680 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_682 : vec3<f32> = (x_678 + -(x_680));
  let x_683 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat6;
  let x_687 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_692 : f32 = u_xlat6.x;
  let x_694 : f32 = x_231.x_MainLightShadowParams.z;
  let x_697 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_692 * x_694) + x_697);
  let x_701 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_701, 0.0f, 1.0f);
  let x_705 : f32 = u_xlat43;
  u_xlat34 = (-(x_705) + 1.0f);
  let x_709 : f32 = u_xlat20.x;
  let x_710 : f32 = u_xlat34;
  let x_712 : f32 = u_xlat43;
  u_xlat43 = ((x_709 * x_710) + x_712);
  let x_721 : f32 = x_719.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_721 == -1.0f));
  let x_725 : bool = u_xlatb20.x;
  if (x_725) {
    let x_728 : vec3<f32> = vs_INTERP8;
    let x_731 : vec4<f32> = x_719.x_MainLightWorldToLight[1i];
    let x_733 : vec2<f32> = (vec2<f32>(x_728.y, x_728.y) * vec2<f32>(x_731.x, x_731.y));
    let x_734 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_733.x, x_733.y, x_734.z);
    let x_737 : vec4<f32> = x_719.x_MainLightWorldToLight[0i];
    let x_739 : vec3<f32> = vs_INTERP8;
    let x_742 : vec3<f32> = u_xlat20;
    let x_744 : vec2<f32> = ((vec2<f32>(x_737.x, x_737.y) * vec2<f32>(x_739.x, x_739.x)) + vec2<f32>(x_742.x, x_742.y));
    let x_745 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_744.x, x_744.y, x_745.z);
    let x_748 : vec4<f32> = x_719.x_MainLightWorldToLight[2i];
    let x_750 : vec3<f32> = vs_INTERP8;
    let x_753 : vec3<f32> = u_xlat20;
    let x_755 : vec2<f32> = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_750.z, x_750.z)) + vec2<f32>(x_753.x, x_753.y));
    let x_756 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_755.x, x_755.y, x_756.z);
    let x_758 : vec3<f32> = u_xlat20;
    let x_761 : vec4<f32> = x_719.x_MainLightWorldToLight[3i];
    let x_763 : vec2<f32> = (vec2<f32>(x_758.x, x_758.y) + vec2<f32>(x_761.x, x_761.y));
    let x_764 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_763.x, x_763.y, x_764.z);
    let x_766 : vec3<f32> = u_xlat20;
    let x_770 : vec2<f32> = ((vec2<f32>(x_766.x, x_766.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_771 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_770.x, x_770.y, x_771.z);
    let x_778 : vec3<f32> = u_xlat20;
    let x_781 : f32 = x_123.x_GlobalMipBias.x;
    let x_782 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_778.x, x_778.y), x_781);
    u_xlat7 = x_782;
    let x_784 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_786 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_788 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_790 : f32 = x_719.x_MainLightCookieTextureFormat;
    let x_791 : vec4<f32> = vec4<f32>(x_784, x_786, x_788, x_790);
    let x_799 : vec4<bool> = (vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_799.x, x_799.y);
    let x_802 : bool = u_xlatb20.y;
    if (x_802) {
      let x_807 : f32 = u_xlat7.w;
      x_803 = x_807;
    } else {
      let x_810 : f32 = u_xlat7.x;
      x_803 = x_810;
    }
    let x_811 : f32 = x_803;
    u_xlat34 = x_811;
    let x_813 : bool = u_xlatb20.x;
    if (x_813) {
      let x_817 : vec4<f32> = u_xlat7;
      x_814 = vec3<f32>(x_817.x, x_817.y, x_817.z);
    } else {
      let x_820 : f32 = u_xlat34;
      x_814 = vec3<f32>(x_820, x_820, x_820);
    }
    let x_822 : vec3<f32> = x_814;
    u_xlat20 = x_822;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_827 : vec3<f32> = u_xlat20;
  let x_829 : vec4<f32> = x_123.x_MainLightColor;
  u_xlat20 = (x_827 * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat4;
  let x_835 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(vec3<f32>(x_832.x, x_832.y, x_832.z)), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_840 : f32 = u_xlat7.x;
  let x_842 : f32 = u_xlat7.x;
  u_xlat7.x = (x_840 + x_842);
  let x_845 : vec4<f32> = u_xlat3;
  let x_847 : vec4<f32> = u_xlat7;
  let x_851 : vec4<f32> = u_xlat4;
  let x_854 : vec3<f32> = ((vec3<f32>(x_845.x, x_845.y, x_845.z) * -(vec3<f32>(x_847.x, x_847.x, x_847.x))) + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_858 : vec4<f32> = u_xlat3;
  let x_860 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(vec3<f32>(x_858.x, x_858.y, x_858.z), vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : f32 = u_xlat49;
  u_xlat49 = clamp(x_863, 0.0f, 1.0f);
  let x_865 : f32 = u_xlat49;
  u_xlat49 = (-(x_865) + 1.0f);
  let x_868 : f32 = u_xlat49;
  let x_869 : f32 = u_xlat49;
  u_xlat49 = (x_868 * x_869);
  let x_871 : f32 = u_xlat49;
  let x_872 : f32 = u_xlat49;
  u_xlat49 = (x_871 * x_872);
  let x_874 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_874) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_881 : f32 = u_xlat45;
  let x_883 : f32 = u_xlat8.x;
  u_xlat45 = (x_881 * x_883);
  let x_885 : f32 = u_xlat45;
  u_xlat45 = (x_885 * 6.0f);
  let x_896 : vec4<f32> = u_xlat7;
  let x_898 : f32 = u_xlat45;
  let x_899 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_896.x, x_896.y, x_896.z), x_898);
  u_xlat8 = x_899;
  let x_901 : f32 = u_xlat8.w;
  u_xlat45 = (x_901 + -1.0f);
  let x_904 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_905 : f32 = u_xlat45;
  u_xlat45 = ((x_904 * x_905) + 1.0f);
  let x_908 : f32 = u_xlat45;
  u_xlat45 = max(x_908, 0.0f);
  let x_910 : f32 = u_xlat45;
  u_xlat45 = log2(x_910);
  let x_912 : f32 = u_xlat45;
  let x_914 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_912 * x_914);
  let x_916 : f32 = u_xlat45;
  u_xlat45 = exp2(x_916);
  let x_918 : f32 = u_xlat45;
  let x_920 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_918 * x_920);
  let x_922 : vec4<f32> = u_xlat8;
  let x_924 : f32 = u_xlat45;
  let x_926 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(x_924, x_924, x_924));
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : f32 = u_xlat46;
  let x_931 : f32 = u_xlat46;
  let x_935 : vec2<f32> = ((vec2<f32>(x_929, x_929) * vec2<f32>(x_931, x_931)) + vec2<f32>(-1.0f, 1.0f));
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
  let x_939 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_939);
  let x_941 : f32 = u_xlat19;
  u_xlat46 = (x_941 + -0.03999999910593032837f);
  let x_944 : f32 = u_xlat49;
  let x_945 : f32 = u_xlat46;
  u_xlat46 = ((x_944 * x_945) + 0.03999999910593032837f);
  let x_949 : f32 = u_xlat45;
  let x_950 : f32 = u_xlat46;
  u_xlat45 = (x_949 * x_950);
  let x_952 : f32 = u_xlat45;
  let x_954 : vec4<f32> = u_xlat7;
  let x_956 : vec3<f32> = (vec3<f32>(x_952, x_952, x_952) * vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec3<f32> = u_xlat14;
  let x_960 : vec4<f32> = u_xlat2;
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_959 * vec3<f32>(x_960.x, x_960.z, x_960.w)) + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : f32 = u_xlat43;
  let x_968 : f32 = x_42.unity_LightData.z;
  u_xlat43 = (x_966 * x_968);
  let x_970 : vec4<f32> = u_xlat3;
  let x_973 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : f32 = u_xlat45;
  u_xlat45 = clamp(x_976, 0.0f, 1.0f);
  let x_978 : f32 = u_xlat43;
  let x_979 : f32 = u_xlat45;
  u_xlat43 = (x_978 * x_979);
  let x_981 : f32 = u_xlat43;
  let x_983 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_981, x_981, x_981) * x_983);
  let x_985 : vec4<f32> = u_xlat4;
  let x_988 : vec4<f32> = x_123.x_MainLightPosition;
  let x_990 : vec3<f32> = (vec3<f32>(x_985.x, x_985.y, x_985.z) + vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec4<f32> = u_xlat7;
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : f32 = u_xlat43;
  u_xlat43 = max(x_998, 1.17549435e-38f);
  let x_1000 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1000);
  let x_1002 : f32 = u_xlat43;
  let x_1004 : vec4<f32> = u_xlat7;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1002, x_1002, x_1002) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat3;
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1014, 0.0f, 1.0f);
  let x_1017 : vec4<f32> = x_123.x_MainLightPosition;
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1022, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat43;
  let x_1025 : f32 = u_xlat43;
  u_xlat43 = (x_1024 * x_1025);
  let x_1027 : f32 = u_xlat43;
  let x_1029 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1027 * x_1029) + 1.00001001358032226562f);
  let x_1033 : f32 = u_xlat45;
  let x_1034 : f32 = u_xlat45;
  u_xlat45 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat43;
  let x_1037 : f32 = u_xlat43;
  u_xlat43 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat45;
  u_xlat45 = max(x_1039, 0.10000000149011611938f);
  let x_1042 : f32 = u_xlat43;
  let x_1043 : f32 = u_xlat45;
  u_xlat43 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat33;
  let x_1046 : f32 = u_xlat43;
  u_xlat43 = (x_1045 * x_1046);
  let x_1049 : f32 = u_xlat5.x;
  let x_1050 : f32 = u_xlat43;
  u_xlat43 = (x_1049 / x_1050);
  let x_1052 : f32 = u_xlat43;
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1058 : vec3<f32> = ((vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1056.x, x_1056.z, x_1056.w));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat20;
  let x_1062 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1061 * vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1067 : f32 = x_123.x_AdditionalLightsCount.x;
  let x_1069 : f32 = x_42.unity_LightData.y;
  u_xlat43 = min(x_1067, x_1069);
  let x_1073 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1073));
  let x_1077 : f32 = u_xlat6.x;
  let x_1080 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_1083 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1077 * x_1080) + x_1083);
  let x_1085 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1085, 0.0f, 1.0f);
  let x_1089 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1091 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1093 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1095 : f32 = x_719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1096 : vec4<f32> = vec4<f32>(x_1089, x_1091, x_1093, x_1095);
  let x_1102 : vec4<bool> = (vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1102.x, x_1102.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1115 : u32 = u_xlatu_loop_1;
    let x_1116 : u32 = u_xlatu43;
    if ((x_1115 < x_1116)) {
    } else {
      break;
    }
    let x_1119 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_1119 >> 2u);
    let x_1123 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_1123 & 3u));
    let x_1126 : u32 = u_xlatu19;
    let x_1129 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_1126)];
    let x_1139 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1144 : vec4<u32> = indexable[x_1139];
    u_xlat19 = dot(x_1129, bitcast<vec4<f32>>(x_1144));
    let x_1148 : f32 = u_xlat19;
    u_xlati19 = i32(x_1148);
    let x_1150 : vec3<f32> = vs_INTERP8;
    let x_1161 : i32 = u_xlati19;
    let x_1163 : vec4<f32> = x_1160.x_AdditionalLightsPosition[x_1161];
    let x_1166 : i32 = u_xlati19;
    let x_1168 : vec4<f32> = x_1160.x_AdditionalLightsPosition[x_1166];
    u_xlat9 = ((-(x_1150) * vec3<f32>(x_1163.w, x_1163.w, x_1163.w)) + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
    let x_1171 : vec3<f32> = u_xlat9;
    let x_1172 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1171, x_1172);
    let x_1176 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1176, 0.00006103515625f);
    let x_1182 : f32 = u_xlat6.x;
    u_xlat35 = inverseSqrt(x_1182);
    let x_1185 : f32 = u_xlat35;
    let x_1187 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1185, x_1185, x_1185) * x_1187);
    let x_1190 : f32 = u_xlat6.x;
    u_xlat49 = (1.0f / x_1190);
    let x_1193 : f32 = u_xlat6.x;
    let x_1194 : i32 = u_xlati19;
    let x_1196 : f32 = x_1160.x_AdditionalLightsAttenuation[x_1194].x;
    u_xlat6.x = (x_1193 * x_1196);
    let x_1200 : f32 = u_xlat6.x;
    let x_1203 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1200) * x_1203) + 1.0f);
    let x_1208 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1208, 0.0f);
    let x_1212 : f32 = u_xlat6.x;
    let x_1214 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1212 * x_1214);
    let x_1218 : f32 = u_xlat6.x;
    let x_1219 : f32 = u_xlat49;
    u_xlat6.x = (x_1218 * x_1219);
    let x_1222 : i32 = u_xlati19;
    let x_1224 : vec4<f32> = x_1160.x_AdditionalLightsSpotDir[x_1222];
    let x_1226 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), x_1226);
    let x_1228 : f32 = u_xlat49;
    let x_1229 : i32 = u_xlati19;
    let x_1231 : f32 = x_1160.x_AdditionalLightsAttenuation[x_1229].z;
    let x_1233 : i32 = u_xlati19;
    let x_1235 : f32 = x_1160.x_AdditionalLightsAttenuation[x_1233].w;
    u_xlat49 = ((x_1228 * x_1231) + x_1235);
    let x_1237 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1237, 0.0f, 1.0f);
    let x_1239 : f32 = u_xlat49;
    let x_1240 : f32 = u_xlat49;
    u_xlat49 = (x_1239 * x_1240);
    let x_1243 : f32 = u_xlat6.x;
    let x_1244 : f32 = u_xlat49;
    u_xlat6.x = (x_1243 * x_1244);
    let x_1249 : i32 = u_xlati19;
    let x_1251 : f32 = x_231.x_AdditionalShadowParams[x_1249].w;
    u_xlati49 = i32(x_1251);
    let x_1254 : i32 = u_xlati49;
    u_xlatb51 = (x_1254 >= 0i);
    let x_1256 : bool = u_xlatb51;
    if (x_1256) {
      let x_1260 : i32 = u_xlati19;
      let x_1262 : f32 = x_231.x_AdditionalShadowParams[x_1260].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1262, x_1262, x_1262, x_1262))));
      let x_1266 : bool = u_xlatb51;
      if (x_1266) {
        let x_1271 : vec3<f32> = u_xlat10;
        let x_1274 : vec3<f32> = u_xlat10;
        let x_1277 : vec4<bool> = (abs(vec4<f32>(x_1271.z, x_1271.z, x_1271.y, x_1271.z)) >= abs(vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.x)));
        let x_1279 : vec3<bool> = vec3<bool>(x_1277.x, x_1277.y, x_1277.z);
        let x_1280 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
        let x_1283 : bool = u_xlatb11.y;
        let x_1285 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1283 & x_1285);
        let x_1287 : vec3<f32> = u_xlat10;
        let x_1290 : vec4<bool> = (-(vec4<f32>(x_1287.z, x_1287.y, x_1287.z, x_1287.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1291 : vec3<bool> = vec3<bool>(x_1290.x, x_1290.y, x_1290.w);
        let x_1292 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1291.x, x_1291.y, x_1292.z, x_1291.z);
        let x_1296 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1296);
        let x_1301 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1301);
        let x_1307 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1307);
        let x_1310 : bool = u_xlatb11.z;
        if (x_1310) {
          let x_1315 : f32 = u_xlat11.y;
          x_1311 = x_1315;
        } else {
          let x_1317 : f32 = u_xlat52;
          x_1311 = x_1317;
        }
        let x_1318 : f32 = x_1311;
        u_xlat52 = x_1318;
        let x_1320 : bool = u_xlatb51;
        if (x_1320) {
          let x_1325 : f32 = u_xlat11.x;
          x_1321 = x_1325;
        } else {
          let x_1327 : f32 = u_xlat52;
          x_1321 = x_1327;
        }
        let x_1328 : f32 = x_1321;
        u_xlat51 = x_1328;
        let x_1329 : i32 = u_xlati19;
        let x_1331 : f32 = x_231.x_AdditionalShadowParams[x_1329].w;
        u_xlat52 = trunc(x_1331);
        let x_1333 : f32 = u_xlat51;
        let x_1334 : f32 = u_xlat52;
        u_xlat51 = (x_1333 + x_1334);
        let x_1336 : f32 = u_xlat51;
        u_xlati49 = i32(x_1336);
      }
      let x_1338 : i32 = u_xlati49;
      u_xlati49 = (x_1338 << bitcast<u32>(2i));
      let x_1340 : vec3<f32> = vs_INTERP8;
      let x_1343 : i32 = u_xlati49;
      let x_1346 : i32 = u_xlati49;
      let x_1350 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1343 + 1i) / 4i)][((x_1346 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1340.y, x_1340.y, x_1340.y, x_1340.y) * x_1350);
      let x_1352 : i32 = u_xlati49;
      let x_1354 : i32 = u_xlati49;
      let x_1357 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_1352 / 4i)][(x_1354 % 4i)];
      let x_1358 : vec3<f32> = vs_INTERP8;
      let x_1361 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1357 * vec4<f32>(x_1358.x, x_1358.x, x_1358.x, x_1358.x)) + x_1361);
      let x_1363 : i32 = u_xlati49;
      let x_1366 : i32 = u_xlati49;
      let x_1370 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1363 + 2i) / 4i)][((x_1366 + 2i) % 4i)];
      let x_1371 : vec3<f32> = vs_INTERP8;
      let x_1374 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1370 * vec4<f32>(x_1371.z, x_1371.z, x_1371.z, x_1371.z)) + x_1374);
      let x_1376 : vec4<f32> = u_xlat11;
      let x_1377 : i32 = u_xlati49;
      let x_1380 : i32 = u_xlati49;
      let x_1384 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1377 + 3i) / 4i)][((x_1380 + 3i) % 4i)];
      u_xlat11 = (x_1376 + x_1384);
      let x_1386 : vec4<f32> = u_xlat11;
      let x_1388 : vec4<f32> = u_xlat11;
      let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.y, x_1386.z) / vec3<f32>(x_1388.w, x_1388.w, x_1388.w));
      let x_1391 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
      let x_1394 : vec4<f32> = u_xlat11;
      let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
      let x_1397 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
      let x_1405 : vec3<f32> = txVec2;
      let x_1407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
      u_xlat49 = x_1407;
      let x_1408 : i32 = u_xlati19;
      let x_1410 : f32 = x_231.x_AdditionalShadowParams[x_1408].x;
      u_xlat51 = (1.0f + -(x_1410));
      let x_1413 : f32 = u_xlat49;
      let x_1414 : i32 = u_xlati19;
      let x_1416 : f32 = x_231.x_AdditionalShadowParams[x_1414].x;
      let x_1418 : f32 = u_xlat51;
      u_xlat49 = ((x_1413 * x_1416) + x_1418);
      let x_1421 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1421);
      let x_1425 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1425 >= 1.0f);
      let x_1427 : bool = u_xlatb51;
      let x_1428 : bool = u_xlatb52;
      u_xlatb51 = (x_1427 | x_1428);
      let x_1430 : bool = u_xlatb51;
      let x_1431 : f32 = u_xlat49;
      u_xlat49 = select(x_1431, 1.0f, x_1430);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1434 : f32 = u_xlat49;
    u_xlat51 = (-(x_1434) + 1.0f);
    let x_1437 : f32 = u_xlat45;
    let x_1438 : f32 = u_xlat51;
    let x_1440 : f32 = u_xlat49;
    u_xlat49 = ((x_1437 * x_1438) + x_1440);
    let x_1443 : i32 = u_xlati19;
    u_xlati51 = (1i << bitcast<u32>((x_1443 & 31i)));
    let x_1447 : i32 = u_xlati51;
    let x_1450 : f32 = x_719.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1447) & bitcast<u32>(x_1450)));
    let x_1454 : i32 = u_xlati51;
    if ((x_1454 != 0i)) {
      let x_1458 : i32 = u_xlati19;
      let x_1460 : f32 = x_719.x_AdditionalLightsLightTypes[x_1458].el;
      u_xlati51 = i32(x_1460);
      let x_1463 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1463 != 0i));
      let x_1467 : i32 = u_xlati19;
      u_xlati11 = (x_1467 << bitcast<u32>(2i));
      let x_1469 : i32 = u_xlati52;
      if ((x_1469 != 0i)) {
        let x_1474 : vec3<f32> = vs_INTERP8;
        let x_1476 : i32 = u_xlati11;
        let x_1479 : i32 = u_xlati11;
        let x_1483 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1476 + 1i) / 4i)][((x_1479 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1474.y, x_1474.y, x_1474.y) * vec3<f32>(x_1483.x, x_1483.y, x_1483.w));
        let x_1486 : i32 = u_xlati11;
        let x_1488 : i32 = u_xlati11;
        let x_1491 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[(x_1486 / 4i)][(x_1488 % 4i)];
        let x_1493 : vec3<f32> = vs_INTERP8;
        let x_1496 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1491.x, x_1491.y, x_1491.w) * vec3<f32>(x_1493.x, x_1493.x, x_1493.x)) + x_1496);
        let x_1498 : i32 = u_xlati11;
        let x_1501 : i32 = u_xlati11;
        let x_1505 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1498 + 2i) / 4i)][((x_1501 + 2i) % 4i)];
        let x_1507 : vec3<f32> = vs_INTERP8;
        let x_1510 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1505.x, x_1505.y, x_1505.w) * vec3<f32>(x_1507.z, x_1507.z, x_1507.z)) + x_1510);
        let x_1512 : vec3<f32> = u_xlat25;
        let x_1513 : i32 = u_xlati11;
        let x_1516 : i32 = u_xlati11;
        let x_1520 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1513 + 3i) / 4i)][((x_1516 + 3i) % 4i)];
        u_xlat25 = (x_1512 + vec3<f32>(x_1520.x, x_1520.y, x_1520.w));
        let x_1523 : vec3<f32> = u_xlat25;
        let x_1525 : vec3<f32> = u_xlat25;
        let x_1527 : vec2<f32> = (vec2<f32>(x_1523.x, x_1523.y) / vec2<f32>(x_1525.z, x_1525.z));
        let x_1528 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1527.x, x_1527.y, x_1528.z);
        let x_1530 : vec3<f32> = u_xlat25;
        let x_1533 : vec2<f32> = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1534 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1533.x, x_1533.y, x_1534.z);
        let x_1536 : vec3<f32> = u_xlat25;
        let x_1540 : vec2<f32> = clamp(vec2<f32>(x_1536.x, x_1536.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1541 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1540.x, x_1540.y, x_1541.z);
        let x_1543 : i32 = u_xlati19;
        let x_1545 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1543];
        let x_1547 : vec3<f32> = u_xlat25;
        let x_1550 : i32 = u_xlati19;
        let x_1552 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1550];
        let x_1554 : vec2<f32> = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1547.x, x_1547.y)) + vec2<f32>(x_1552.z, x_1552.w));
        let x_1555 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1554.x, x_1554.y, x_1555.z);
      } else {
        let x_1558 : i32 = u_xlati51;
        u_xlatb51 = (x_1558 == 1i);
        let x_1560 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1560);
        let x_1562 : i32 = u_xlati51;
        if ((x_1562 != 0i)) {
          let x_1567 : vec3<f32> = vs_INTERP8;
          let x_1569 : i32 = u_xlati11;
          let x_1572 : i32 = u_xlati11;
          let x_1576 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1569 + 1i) / 4i)][((x_1572 + 1i) % 4i)];
          let x_1578 : vec2<f32> = (vec2<f32>(x_1567.y, x_1567.y) * vec2<f32>(x_1576.x, x_1576.y));
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
          let x_1581 : i32 = u_xlati11;
          let x_1583 : i32 = u_xlati11;
          let x_1586 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[(x_1581 / 4i)][(x_1583 % 4i)];
          let x_1588 : vec3<f32> = vs_INTERP8;
          let x_1591 : vec4<f32> = u_xlat12;
          let x_1593 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1588.x, x_1588.x)) + vec2<f32>(x_1591.x, x_1591.y));
          let x_1594 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1593.x, x_1593.y, x_1594.z, x_1594.w);
          let x_1596 : i32 = u_xlati11;
          let x_1599 : i32 = u_xlati11;
          let x_1603 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1596 + 2i) / 4i)][((x_1599 + 2i) % 4i)];
          let x_1605 : vec3<f32> = vs_INTERP8;
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1605.z, x_1605.z)) + vec2<f32>(x_1608.x, x_1608.y));
          let x_1611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
          let x_1613 : vec4<f32> = u_xlat12;
          let x_1615 : i32 = u_xlati11;
          let x_1618 : i32 = u_xlati11;
          let x_1622 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1615 + 3i) / 4i)][((x_1618 + 3i) % 4i)];
          let x_1624 : vec2<f32> = (vec2<f32>(x_1613.x, x_1613.y) + vec2<f32>(x_1622.x, x_1622.y));
          let x_1625 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1624.x, x_1624.y, x_1625.z, x_1625.w);
          let x_1627 : vec4<f32> = u_xlat12;
          let x_1630 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
          let x_1633 : vec4<f32> = u_xlat12;
          let x_1635 : vec2<f32> = fract(vec2<f32>(x_1633.x, x_1633.y));
          let x_1636 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
          let x_1638 : i32 = u_xlati19;
          let x_1640 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1638];
          let x_1642 : vec4<f32> = u_xlat12;
          let x_1645 : i32 = u_xlati19;
          let x_1647 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1645];
          let x_1649 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.y)) + vec2<f32>(x_1647.z, x_1647.w));
          let x_1650 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1649.x, x_1649.y, x_1650.z);
        } else {
          let x_1653 : vec3<f32> = vs_INTERP8;
          let x_1655 : i32 = u_xlati11;
          let x_1658 : i32 = u_xlati11;
          let x_1662 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1655 + 1i) / 4i)][((x_1658 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1653.y, x_1653.y, x_1653.y, x_1653.y) * x_1662);
          let x_1664 : i32 = u_xlati11;
          let x_1666 : i32 = u_xlati11;
          let x_1669 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[(x_1664 / 4i)][(x_1666 % 4i)];
          let x_1670 : vec3<f32> = vs_INTERP8;
          let x_1673 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1669 * vec4<f32>(x_1670.x, x_1670.x, x_1670.x, x_1670.x)) + x_1673);
          let x_1675 : i32 = u_xlati11;
          let x_1678 : i32 = u_xlati11;
          let x_1682 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1675 + 2i) / 4i)][((x_1678 + 2i) % 4i)];
          let x_1683 : vec3<f32> = vs_INTERP8;
          let x_1686 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1682 * vec4<f32>(x_1683.z, x_1683.z, x_1683.z, x_1683.z)) + x_1686);
          let x_1688 : vec4<f32> = u_xlat12;
          let x_1689 : i32 = u_xlati11;
          let x_1692 : i32 = u_xlati11;
          let x_1696 : vec4<f32> = x_719.x_AdditionalLightsWorldToLights[((x_1689 + 3i) / 4i)][((x_1692 + 3i) % 4i)];
          u_xlat12 = (x_1688 + x_1696);
          let x_1698 : vec4<f32> = u_xlat12;
          let x_1700 : vec4<f32> = u_xlat12;
          let x_1702 : vec3<f32> = (vec3<f32>(x_1698.x, x_1698.y, x_1698.z) / vec3<f32>(x_1700.w, x_1700.w, x_1700.w));
          let x_1703 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
          let x_1705 : vec4<f32> = u_xlat12;
          let x_1707 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1705.x, x_1705.y, x_1705.z), vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
          let x_1710 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1710);
          let x_1712 : f32 = u_xlat51;
          let x_1714 : vec4<f32> = u_xlat12;
          let x_1716 : vec3<f32> = (vec3<f32>(x_1712, x_1712, x_1712) * vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
          let x_1717 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
          let x_1719 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1719.x, x_1719.y, x_1719.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1724 : f32 = u_xlat51;
          u_xlat51 = max(x_1724, 0.00000099999999747524f);
          let x_1727 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1727);
          let x_1730 : f32 = u_xlat51;
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1730, x_1730, x_1730) * vec3<f32>(x_1732.z, x_1732.x, x_1732.y));
          let x_1736 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1736);
          let x_1740 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1740, 0.0f, 1.0f);
          let x_1743 : vec3<f32> = u_xlat13;
          let x_1745 : vec4<bool> = (vec4<f32>(x_1743.y, x_1743.y, x_1743.y, x_1743.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1746 : vec2<bool> = vec2<bool>(x_1745.x, x_1745.w);
          let x_1747 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1746.x, x_1747.y, x_1747.z, x_1746.y);
          let x_1750 : bool = u_xlatb11.x;
          if (x_1750) {
            let x_1755 : f32 = u_xlat13.x;
            x_1751 = x_1755;
          } else {
            let x_1758 : f32 = u_xlat13.x;
            x_1751 = -(x_1758);
          }
          let x_1760 : f32 = x_1751;
          u_xlat11.x = x_1760;
          let x_1763 : bool = u_xlatb11.w;
          if (x_1763) {
            let x_1768 : f32 = u_xlat13.x;
            x_1764 = x_1768;
          } else {
            let x_1771 : f32 = u_xlat13.x;
            x_1764 = -(x_1771);
          }
          let x_1773 : f32 = x_1764;
          u_xlat11.w = x_1773;
          let x_1775 : vec4<f32> = u_xlat12;
          let x_1777 : f32 = u_xlat51;
          let x_1780 : vec4<f32> = u_xlat11;
          let x_1782 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(x_1777, x_1777)) + vec2<f32>(x_1780.x, x_1780.w));
          let x_1783 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1782.x, x_1783.y, x_1783.z, x_1782.y);
          let x_1785 : vec4<f32> = u_xlat11;
          let x_1788 : vec2<f32> = ((vec2<f32>(x_1785.x, x_1785.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1789 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1788.x, x_1789.y, x_1789.z, x_1788.y);
          let x_1791 : vec4<f32> = u_xlat11;
          let x_1795 : vec2<f32> = clamp(vec2<f32>(x_1791.x, x_1791.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1796 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1795.x, x_1796.y, x_1796.z, x_1795.y);
          let x_1798 : i32 = u_xlati19;
          let x_1800 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1798];
          let x_1802 : vec4<f32> = u_xlat11;
          let x_1805 : i32 = u_xlati19;
          let x_1807 : vec4<f32> = x_719.x_AdditionalLightsCookieAtlasUVRects[x_1805];
          let x_1809 : vec2<f32> = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(x_1802.x, x_1802.w)) + vec2<f32>(x_1807.z, x_1807.w));
          let x_1810 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1809.x, x_1809.y, x_1810.z);
        }
      }
      let x_1817 : vec3<f32> = u_xlat25;
      let x_1819 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1817.x, x_1817.y), 0.0f);
      u_xlat11 = x_1819;
      let x_1821 : bool = u_xlatb7.y;
      if (x_1821) {
        let x_1826 : f32 = u_xlat11.w;
        x_1822 = x_1826;
      } else {
        let x_1829 : f32 = u_xlat11.x;
        x_1822 = x_1829;
      }
      let x_1830 : f32 = x_1822;
      u_xlat51 = x_1830;
      let x_1832 : bool = u_xlatb7.x;
      if (x_1832) {
        let x_1836 : vec4<f32> = u_xlat11;
        x_1833 = vec3<f32>(x_1836.x, x_1836.y, x_1836.z);
      } else {
        let x_1839 : f32 = u_xlat51;
        x_1833 = vec3<f32>(x_1839, x_1839, x_1839);
      }
      let x_1841 : vec3<f32> = x_1833;
      let x_1842 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1848 : vec4<f32> = u_xlat11;
    let x_1850 : i32 = u_xlati19;
    let x_1852 : vec4<f32> = x_1160.x_AdditionalLightsColor[x_1850];
    let x_1854 : vec3<f32> = (vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
    let x_1855 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
    let x_1858 : f32 = u_xlat6.x;
    let x_1859 : f32 = u_xlat49;
    u_xlat19 = (x_1858 * x_1859);
    let x_1861 : vec4<f32> = u_xlat3;
    let x_1863 : vec3<f32> = u_xlat10;
    u_xlat6.x = dot(vec3<f32>(x_1861.x, x_1861.y, x_1861.z), x_1863);
    let x_1867 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1867, 0.0f, 1.0f);
    let x_1870 : f32 = u_xlat19;
    let x_1872 : f32 = u_xlat6.x;
    u_xlat19 = (x_1870 * x_1872);
    let x_1874 : f32 = u_xlat19;
    let x_1876 : vec4<f32> = u_xlat11;
    let x_1878 : vec3<f32> = (vec3<f32>(x_1874, x_1874, x_1874) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
    let x_1879 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
    let x_1881 : vec3<f32> = u_xlat9;
    let x_1882 : f32 = u_xlat35;
    let x_1885 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1881 * vec3<f32>(x_1882, x_1882, x_1882)) + vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : vec3<f32> = u_xlat9;
    let x_1889 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_1888, x_1889);
    let x_1891 : f32 = u_xlat19;
    u_xlat19 = max(x_1891, 1.17549435e-38f);
    let x_1893 : f32 = u_xlat19;
    u_xlat19 = inverseSqrt(x_1893);
    let x_1895 : f32 = u_xlat19;
    let x_1897 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1895, x_1895, x_1895) * x_1897);
    let x_1899 : vec4<f32> = u_xlat3;
    let x_1901 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(vec3<f32>(x_1899.x, x_1899.y, x_1899.z), x_1901);
    let x_1903 : f32 = u_xlat19;
    u_xlat19 = clamp(x_1903, 0.0f, 1.0f);
    let x_1905 : vec3<f32> = u_xlat10;
    let x_1906 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1905, x_1906);
    let x_1910 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1910, 0.0f, 1.0f);
    let x_1913 : f32 = u_xlat19;
    let x_1914 : f32 = u_xlat19;
    u_xlat19 = (x_1913 * x_1914);
    let x_1916 : f32 = u_xlat19;
    let x_1918 : f32 = u_xlat8.x;
    u_xlat19 = ((x_1916 * x_1918) + 1.00001001358032226562f);
    let x_1922 : f32 = u_xlat6.x;
    let x_1924 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1922 * x_1924);
    let x_1927 : f32 = u_xlat19;
    let x_1928 : f32 = u_xlat19;
    u_xlat19 = (x_1927 * x_1928);
    let x_1931 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1931, 0.10000000149011611938f);
    let x_1934 : f32 = u_xlat19;
    let x_1936 : f32 = u_xlat6.x;
    u_xlat19 = (x_1934 * x_1936);
    let x_1938 : f32 = u_xlat33;
    let x_1939 : f32 = u_xlat19;
    u_xlat19 = (x_1938 * x_1939);
    let x_1942 : f32 = u_xlat5.x;
    let x_1943 : f32 = u_xlat19;
    u_xlat19 = (x_1942 / x_1943);
    let x_1945 : f32 = u_xlat19;
    let x_1948 : vec4<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1945, x_1945, x_1945) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1948.x, x_1948.z, x_1948.w));
    let x_1951 : vec3<f32> = u_xlat9;
    let x_1952 : vec4<f32> = u_xlat11;
    let x_1955 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1951 * vec3<f32>(x_1952.x, x_1952.y, x_1952.z)) + x_1955);

    continuing {
      let x_1957 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1957 + bitcast<u32>(1i));
    }
  }
  let x_1959 : vec3<f32> = u_xlat14;
  let x_1960 : f32 = u_xlat47;
  let x_1963 : vec3<f32> = u_xlat20;
  u_xlat14 = ((x_1959 * vec3<f32>(x_1960, x_1960, x_1960)) + x_1963);
  let x_1965 : vec3<f32> = u_xlat22;
  let x_1966 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_1965 + x_1966);
  let x_1970 : vec4<f32> = vs_INTERP6;
  let x_1972 : vec3<f32> = u_xlat1;
  let x_1974 : vec3<f32> = u_xlat14;
  let x_1975 : vec3<f32> = ((vec3<f32>(x_1970.w, x_1970.w, x_1970.w) * x_1972) + x_1974);
  let x_1976 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1978 : bool = u_xlatb16;
  let x_1979 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1979, x_1978);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


