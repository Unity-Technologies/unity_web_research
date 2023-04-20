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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatb34 : vec2<bool>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

@group(1) @binding(4) var<uniform> x_761 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1220 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_350 : f32;
  var x_399 : f32;
  var x_494 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var x_830 : f32;
  var x_841 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1355 : f32;
  var x_1366 : f32;
  var txVec2 : vec3<f32>;
  var x_1812 : f32;
  var x_1825 : f32;
  var x_1883 : f32;
  var x_1894 : vec3<f32>;
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
  let x_369 : f32 = u_xlat4.w;
  u_xlat30.x = dpdyCoarse(x_369);
  let x_373 : f32 = u_xlat30.x;
  let x_375 : f32 = u_xlat16;
  u_xlat16 = (abs(x_373) + abs(x_375));
  let x_378 : f32 = u_xlat16;
  u_xlat16 = max(x_378, 0.00009999999747378752f);
  let x_382 : f32 = u_xlat2.x;
  let x_383 : f32 = u_xlat16;
  u_xlat2.x = (x_382 / x_383);
  let x_387 : f32 = u_xlat2.x;
  u_xlat2.x = (x_387 + 0.5f);
  let x_392 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_392, 0.0f, 1.0f);
  let x_396 : f32 = x_123.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_396 == 0.0f));
  let x_398 : bool = u_xlatb16;
  if (x_398) {
    let x_403 : f32 = u_xlat2.x;
    x_399 = x_403;
  } else {
    let x_405 : f32 = u_xlat0;
    x_399 = x_405;
  }
  let x_406 : f32 = x_399;
  u_xlat0 = x_406;
  let x_407 : f32 = u_xlat0;
  u_xlat2.x = (x_407 + -0.00009999999747378752f);
  let x_412 : f32 = u_xlat2.x;
  u_xlatb2 = (x_412 < 0.0f);
  let x_414 : bool = u_xlatb2;
  if (((select(0i, 1i, x_414) * -1i) != 0i)) {
    discard;
  }
  let x_422 : vec3<f32> = u_xlat14;
  let x_423 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_422 * vec3<f32>(x_423.y, x_423.y, x_423.y));
  let x_426 : vec3<f32> = u_xlat20;
  let x_428 : vec4<f32> = vs_INTERP4;
  let x_431 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + x_431);
  let x_433 : vec3<f32> = u_xlat20;
  let x_435 : vec3<f32> = vs_INTERP9;
  let x_437 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_433.z, x_433.z, x_433.z) * x_435) + x_437);
  let x_439 : vec3<f32> = u_xlat14;
  let x_440 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_439, x_440);
  let x_444 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_444);
  let x_447 : vec3<f32> = u_xlat14;
  let x_448 : vec4<f32> = u_xlat2;
  let x_450 : vec3<f32> = (x_447 * vec3<f32>(x_448.x, x_448.x, x_448.x));
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_455 : f32 = x_123.unity_OrthoParams.w;
  u_xlatb14.x = (x_455 == 0.0f);
  let x_458 : vec3<f32> = vs_INTERP8;
  let x_463 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_464 : vec3<f32> = (-(x_458) + x_463);
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_465.y, x_464.y, x_464.z);
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_468.x, x_468.z, x_468.w), vec3<f32>(x_470.x, x_470.z, x_470.w));
  let x_473 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_473);
  let x_475 : f32 = u_xlat28;
  let x_477 : vec4<f32> = u_xlat2;
  let x_479 : vec3<f32> = (vec3<f32>(x_475, x_475, x_475) * vec3<f32>(x_477.x, x_477.z, x_477.w));
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_479.x, x_480.y, x_479.y, x_479.z);
  let x_484 : f32 = x_123.unity_MatrixV[0i].z;
  u_xlat4.x = x_484;
  let x_487 : f32 = x_123.unity_MatrixV[1i].z;
  u_xlat4.y = x_487;
  let x_490 : f32 = x_123.unity_MatrixV[2i].z;
  u_xlat4.z = x_490;
  let x_493 : bool = u_xlatb14.x;
  if (x_493) {
    let x_497 : vec4<f32> = u_xlat2;
    x_494 = vec3<f32>(x_497.x, x_497.z, x_497.w);
  } else {
    let x_500 : vec4<f32> = u_xlat4;
    x_494 = vec3<f32>(x_500.x, x_500.y, x_500.z);
  }
  let x_502 : vec3<f32> = x_494;
  u_xlat14 = x_502;
  let x_504 : f32 = vs_INTERP8.y;
  let x_506 : f32 = x_123.unity_MatrixV[1i].z;
  u_xlat2.x = (x_504 * x_506);
  let x_510 : f32 = x_123.unity_MatrixV[0i].z;
  let x_512 : f32 = vs_INTERP8.x;
  let x_515 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_510 * x_512) + x_515);
  let x_519 : f32 = x_123.unity_MatrixV[2i].z;
  let x_521 : f32 = vs_INTERP8.z;
  let x_524 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_519 * x_521) + x_524);
  let x_528 : f32 = u_xlat2.x;
  let x_530 : f32 = x_123.unity_MatrixV[3i].z;
  u_xlat2.x = (x_528 + x_530);
  let x_534 : f32 = u_xlat2.x;
  let x_538 : f32 = x_123.x_ProjectionParams.y;
  u_xlat2.x = (-(x_534) + -(x_538));
  let x_543 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_543, 0.0f);
  let x_547 : f32 = u_xlat2.x;
  let x_549 : f32 = x_123.unity_FogParams.x;
  u_xlat2.x = (x_547 * x_549);
  u_xlat3.w = 1.0f;
  let x_555 : vec4<f32> = x_42.unity_SHAr;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_555, x_556);
  let x_561 : vec4<f32> = x_42.unity_SHAg;
  let x_562 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_561, x_562);
  let x_567 : vec4<f32> = x_42.unity_SHAb;
  let x_568 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_567, x_568);
  let x_571 : vec4<f32> = u_xlat3;
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_571.y, x_571.z, x_571.z, x_571.x) * vec4<f32>(x_573.x, x_573.y, x_573.z, x_573.z));
  let x_579 : vec4<f32> = x_42.unity_SHBr;
  let x_580 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_579, x_580);
  let x_585 : vec4<f32> = x_42.unity_SHBg;
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_585, x_586);
  let x_591 : vec4<f32> = x_42.unity_SHBb;
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_591, x_592);
  let x_596 : f32 = u_xlat3.y;
  let x_598 : f32 = u_xlat3.y;
  u_xlat30.x = (x_596 * x_598);
  let x_602 : f32 = u_xlat3.x;
  let x_604 : f32 = u_xlat3.x;
  let x_607 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_602 * x_604) + -(x_607));
  let x_613 : vec4<f32> = x_42.unity_SHC;
  let x_615 : vec2<f32> = u_xlat30;
  let x_618 : vec4<f32> = u_xlat8;
  u_xlat20 = ((vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_615.x, x_615.x, x_615.x)) + vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : vec3<f32> = u_xlat20;
  let x_624 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) + x_623);
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_630 : vec3<f32> = max(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_631 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = u_xlat6.x;
  u_xlat6.x = x_634;
  let x_637 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_637, 0.0f, 1.0f);
  let x_640 : f32 = u_xlat0;
  u_xlat0 = min(x_640, 1.0f);
  let x_642 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_642 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_647 : f32 = u_xlat6.x;
  u_xlat30.x = (-(x_647) + 1.0f);
  let x_653 : f32 = u_xlat30.x;
  let x_655 : f32 = u_xlat30.x;
  u_xlat44 = (x_653 * x_655);
  let x_657 : f32 = u_xlat44;
  u_xlat44 = max(x_657, 0.0078125f);
  let x_661 : f32 = u_xlat44;
  let x_662 : f32 = u_xlat44;
  u_xlat45 = (x_661 * x_662);
  let x_666 : f32 = u_xlat6.x;
  u_xlat46 = (x_666 + 0.04000002145767211914f);
  let x_669 : f32 = u_xlat46;
  u_xlat46 = min(x_669, 1.0f);
  let x_672 : f32 = u_xlat44;
  u_xlat47 = ((x_672 * 4.0f) + 2.0f);
  let x_677 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_677, 1.0f);
  let x_682 : vec4<f32> = vs_INTERP3;
  let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
  let x_685 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_683.x, x_683.y, x_685);
  let x_692 : vec3<f32> = txVec1;
  let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
  u_xlat20.x = x_694;
  let x_697 : f32 = u_xlat20.x;
  let x_699 : f32 = x_231.x_MainLightShadowParams.x;
  let x_701 : f32 = u_xlat43;
  u_xlat43 = ((x_697 * x_699) + x_701);
  let x_705 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (0.0f >= x_705);
  let x_710 : f32 = vs_INTERP3.z;
  u_xlatb34.x = (x_710 >= 1.0f);
  let x_714 : bool = u_xlatb34.x;
  let x_716 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_714 | x_716);
  let x_720 : bool = u_xlatb20.x;
  let x_721 : f32 = u_xlat43;
  u_xlat43 = select(x_721, 1.0f, x_720);
  let x_723 : vec3<f32> = vs_INTERP8;
  let x_725 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  u_xlat20 = (x_723 + -(x_725));
  let x_728 : vec3<f32> = u_xlat20;
  let x_729 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_728, x_729);
  let x_734 : f32 = u_xlat20.x;
  let x_736 : f32 = x_231.x_MainLightShadowParams.z;
  let x_739 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_734 * x_736) + x_739);
  let x_743 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_743, 0.0f, 1.0f);
  let x_747 : f32 = u_xlat43;
  u_xlat48 = (-(x_747) + 1.0f);
  let x_751 : f32 = u_xlat34.x;
  let x_752 : f32 = u_xlat48;
  let x_754 : f32 = u_xlat43;
  u_xlat43 = ((x_751 * x_752) + x_754);
  let x_763 : f32 = x_761.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_763 == -1.0f));
  let x_767 : bool = u_xlatb34.x;
  if (x_767) {
    let x_770 : vec3<f32> = vs_INTERP8;
    let x_773 : vec4<f32> = x_761.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_770.y, x_770.y) * vec2<f32>(x_773.x, x_773.y));
    let x_777 : vec4<f32> = x_761.x_MainLightWorldToLight[0i];
    let x_779 : vec3<f32> = vs_INTERP8;
    let x_782 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_779.x, x_779.x)) + x_782);
    let x_785 : vec4<f32> = x_761.x_MainLightWorldToLight[2i];
    let x_787 : vec3<f32> = vs_INTERP8;
    let x_790 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_787.z, x_787.z)) + x_790);
    let x_792 : vec2<f32> = u_xlat34;
    let x_794 : vec4<f32> = x_761.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_792 + vec2<f32>(x_794.x, x_794.y));
    let x_797 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_797 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_806 : vec2<f32> = u_xlat34;
    let x_808 : f32 = x_123.x_GlobalMipBias.x;
    let x_809 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_806, x_808);
    u_xlat7 = x_809;
    let x_811 : f32 = x_761.x_MainLightCookieTextureFormat;
    let x_813 : f32 = x_761.x_MainLightCookieTextureFormat;
    let x_815 : f32 = x_761.x_MainLightCookieTextureFormat;
    let x_817 : f32 = x_761.x_MainLightCookieTextureFormat;
    let x_818 : vec4<f32> = vec4<f32>(x_811, x_813, x_815, x_817);
    let x_826 : vec4<bool> = (vec4<f32>(x_818.x, x_818.y, x_818.z, x_818.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_826.x, x_826.y);
    let x_829 : bool = u_xlatb34.y;
    if (x_829) {
      let x_834 : f32 = u_xlat7.w;
      x_830 = x_834;
    } else {
      let x_837 : f32 = u_xlat7.x;
      x_830 = x_837;
    }
    let x_838 : f32 = x_830;
    u_xlat48 = x_838;
    let x_840 : bool = u_xlatb34.x;
    if (x_840) {
      let x_844 : vec4<f32> = u_xlat7;
      x_841 = vec3<f32>(x_844.x, x_844.y, x_844.z);
    } else {
      let x_847 : f32 = u_xlat48;
      x_841 = vec3<f32>(x_847, x_847, x_847);
    }
    let x_849 : vec3<f32> = x_841;
    let x_850 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_856 : vec4<f32> = u_xlat7;
  let x_859 : vec4<f32> = x_123.x_MainLightColor;
  let x_861 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec3<f32> = u_xlat14;
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_864), vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_871 : f32 = u_xlat34.x;
  let x_873 : f32 = u_xlat34.x;
  u_xlat34.x = (x_871 + x_873);
  let x_876 : vec4<f32> = u_xlat3;
  let x_878 : vec2<f32> = u_xlat34;
  let x_882 : vec3<f32> = u_xlat14;
  let x_884 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * -(vec3<f32>(x_878.x, x_878.x, x_878.x))) + -(x_882));
  let x_885 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat3;
  let x_889 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), x_889);
  let x_893 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_893, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_897) + 1.0f);
  let x_902 : f32 = u_xlat34.x;
  let x_904 : f32 = u_xlat34.x;
  u_xlat34.x = (x_902 * x_904);
  let x_908 : f32 = u_xlat34.x;
  let x_910 : f32 = u_xlat34.x;
  u_xlat34.x = (x_908 * x_910);
  let x_914 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_914) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_921 : f32 = u_xlat30.x;
  let x_922 : f32 = u_xlat48;
  u_xlat30.x = (x_921 * x_922);
  let x_926 : f32 = u_xlat30.x;
  u_xlat30.x = (x_926 * 6.0f);
  let x_938 : vec4<f32> = u_xlat8;
  let x_941 : f32 = u_xlat30.x;
  let x_942 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_938.x, x_938.y, x_938.z), x_941);
  u_xlat8 = x_942;
  let x_944 : f32 = u_xlat8.w;
  u_xlat30.x = (x_944 + -1.0f);
  let x_948 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_950 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_948 * x_950) + 1.0f);
  let x_955 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_955, 0.0f);
  let x_959 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_959);
  let x_963 : f32 = u_xlat30.x;
  let x_965 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_963 * x_965);
  let x_969 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_969);
  let x_973 : f32 = u_xlat30.x;
  let x_975 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_973 * x_975);
  let x_978 : vec4<f32> = u_xlat8;
  let x_980 : vec2<f32> = u_xlat30;
  let x_982 : vec3<f32> = (vec3<f32>(x_978.x, x_978.y, x_978.z) * vec3<f32>(x_980.x, x_980.x, x_980.x));
  let x_983 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : f32 = u_xlat44;
  let x_987 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_985, x_985) * vec2<f32>(x_987, x_987)) + vec2<f32>(-1.0f, 1.0f));
  let x_993 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_993);
  let x_995 : f32 = u_xlat46;
  u_xlat46 = (x_995 + -0.03999999910593032837f);
  let x_999 : f32 = u_xlat34.x;
  let x_1000 : f32 = u_xlat46;
  u_xlat46 = ((x_999 * x_1000) + 0.03999999910593032837f);
  let x_1004 : f32 = u_xlat44;
  let x_1005 : f32 = u_xlat46;
  u_xlat44 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat44;
  let x_1009 : vec4<f32> = u_xlat8;
  let x_1011 : vec3<f32> = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat4;
  let x_1016 : vec3<f32> = u_xlat5;
  let x_1018 : vec4<f32> = u_xlat8;
  let x_1020 : vec3<f32> = ((vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * x_1016) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : f32 = u_xlat43;
  let x_1025 : f32 = x_42.unity_LightData.z;
  u_xlat43 = (x_1023 * x_1025);
  let x_1027 : vec4<f32> = u_xlat3;
  let x_1030 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1027.x, x_1027.y, x_1027.z), vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1033, 0.0f, 1.0f);
  let x_1035 : f32 = u_xlat43;
  let x_1036 : f32 = u_xlat44;
  u_xlat43 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat43;
  let x_1040 : vec4<f32> = u_xlat7;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1038, x_1038, x_1038) * vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec3<f32> = u_xlat14;
  let x_1047 : vec4<f32> = x_123.x_MainLightPosition;
  let x_1049 : vec3<f32> = (x_1045 + vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat8;
  let x_1054 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : f32 = u_xlat43;
  u_xlat43 = max(x_1057, 1.17549435e-38f);
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1059);
  let x_1061 : f32 = u_xlat43;
  let x_1063 : vec4<f32> = u_xlat8;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec4<f32> = u_xlat3;
  let x_1070 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1073, 0.0f, 1.0f);
  let x_1076 : vec4<f32> = x_123.x_MainLightPosition;
  let x_1078 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1081, 0.0f, 1.0f);
  let x_1083 : f32 = u_xlat43;
  let x_1084 : f32 = u_xlat43;
  u_xlat43 = (x_1083 * x_1084);
  let x_1086 : f32 = u_xlat43;
  let x_1088 : f32 = u_xlat30.x;
  u_xlat43 = ((x_1086 * x_1088) + 1.00001001358032226562f);
  let x_1092 : f32 = u_xlat44;
  let x_1093 : f32 = u_xlat44;
  u_xlat44 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat43;
  let x_1096 : f32 = u_xlat43;
  u_xlat43 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat44;
  u_xlat44 = max(x_1098, 0.10000000149011611938f);
  let x_1101 : f32 = u_xlat43;
  let x_1102 : f32 = u_xlat44;
  u_xlat43 = (x_1101 * x_1102);
  let x_1104 : f32 = u_xlat47;
  let x_1105 : f32 = u_xlat43;
  u_xlat43 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat45;
  let x_1108 : f32 = u_xlat43;
  u_xlat43 = (x_1107 / x_1108);
  let x_1110 : f32 = u_xlat43;
  let x_1114 : vec3<f32> = u_xlat5;
  let x_1115 : vec3<f32> = ((vec3<f32>(x_1110, x_1110, x_1110) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1114);
  let x_1116 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat7;
  let x_1120 : vec4<f32> = u_xlat8;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1127 : f32 = x_123.x_AdditionalLightsCount.x;
  let x_1129 : f32 = x_42.unity_LightData.y;
  u_xlat43 = min(x_1127, x_1129);
  let x_1133 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1133));
  let x_1137 : f32 = u_xlat20.x;
  let x_1140 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_1143 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1137 * x_1140) + x_1143);
  let x_1145 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1145, 0.0f, 1.0f);
  let x_1148 : f32 = x_761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1150 : f32 = x_761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1152 : f32 = x_761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1154 : f32 = x_761.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1155 : vec4<f32> = vec4<f32>(x_1148, x_1150, x_1152, x_1154);
  let x_1162 : vec4<bool> = (vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1155.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1162.x, x_1162.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1174 : u32 = u_xlatu_loop_1;
    let x_1175 : u32 = u_xlatu43;
    if ((x_1174 < x_1175)) {
    } else {
      break;
    }
    let x_1178 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1178 >> 2u);
    let x_1182 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1182 & 3u));
    let x_1185 : u32 = u_xlatu48;
    let x_1188 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_1185)];
    let x_1198 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1203 : vec4<u32> = indexable[x_1198];
    u_xlat48 = dot(x_1188, bitcast<vec4<f32>>(x_1203));
    let x_1207 : f32 = u_xlat48;
    u_xlati48 = i32(x_1207);
    let x_1210 : vec3<f32> = vs_INTERP8;
    let x_1221 : i32 = u_xlati48;
    let x_1223 : vec4<f32> = x_1220.x_AdditionalLightsPosition[x_1221];
    let x_1226 : i32 = u_xlati48;
    let x_1228 : vec4<f32> = x_1220.x_AdditionalLightsPosition[x_1226];
    u_xlat9 = ((-(x_1210) * vec3<f32>(x_1223.w, x_1223.w, x_1223.w)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
    let x_1232 : vec3<f32> = u_xlat9;
    let x_1233 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1232, x_1233);
    let x_1235 : f32 = u_xlat49;
    u_xlat49 = max(x_1235, 0.00006103515625f);
    let x_1239 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1239);
    let x_1242 : f32 = u_xlat50;
    let x_1244 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1242, x_1242, x_1242) * x_1244);
    let x_1247 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1247);
    let x_1249 : f32 = u_xlat49;
    let x_1250 : i32 = u_xlati48;
    let x_1252 : f32 = x_1220.x_AdditionalLightsAttenuation[x_1250].x;
    u_xlat49 = (x_1249 * x_1252);
    let x_1254 : f32 = u_xlat49;
    let x_1256 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1254) * x_1256) + 1.0f);
    let x_1259 : f32 = u_xlat49;
    u_xlat49 = max(x_1259, 0.0f);
    let x_1261 : f32 = u_xlat49;
    let x_1262 : f32 = u_xlat49;
    u_xlat49 = (x_1261 * x_1262);
    let x_1264 : f32 = u_xlat49;
    let x_1265 : f32 = u_xlat51;
    u_xlat49 = (x_1264 * x_1265);
    let x_1267 : i32 = u_xlati48;
    let x_1269 : vec4<f32> = x_1220.x_AdditionalLightsSpotDir[x_1267];
    let x_1271 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1269.x, x_1269.y, x_1269.z), x_1271);
    let x_1273 : f32 = u_xlat51;
    let x_1274 : i32 = u_xlati48;
    let x_1276 : f32 = x_1220.x_AdditionalLightsAttenuation[x_1274].z;
    let x_1278 : i32 = u_xlati48;
    let x_1280 : f32 = x_1220.x_AdditionalLightsAttenuation[x_1278].w;
    u_xlat51 = ((x_1273 * x_1276) + x_1280);
    let x_1282 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1282, 0.0f, 1.0f);
    let x_1284 : f32 = u_xlat51;
    let x_1285 : f32 = u_xlat51;
    u_xlat51 = (x_1284 * x_1285);
    let x_1287 : f32 = u_xlat49;
    let x_1288 : f32 = u_xlat51;
    u_xlat49 = (x_1287 * x_1288);
    let x_1292 : i32 = u_xlati48;
    let x_1294 : f32 = x_231.x_AdditionalShadowParams[x_1292].w;
    u_xlati51 = i32(x_1294);
    let x_1297 : i32 = u_xlati51;
    u_xlatb52 = (x_1297 >= 0i);
    let x_1299 : bool = u_xlatb52;
    if (x_1299) {
      let x_1303 : i32 = u_xlati48;
      let x_1305 : f32 = x_231.x_AdditionalShadowParams[x_1303].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1305, x_1305, x_1305, x_1305))));
      let x_1309 : bool = u_xlatb52;
      if (x_1309) {
        let x_1314 : vec3<f32> = u_xlat10;
        let x_1317 : vec3<f32> = u_xlat10;
        let x_1320 : vec4<bool> = (abs(vec4<f32>(x_1314.z, x_1314.z, x_1314.y, x_1314.z)) >= abs(vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.x)));
        let x_1322 : vec3<bool> = vec3<bool>(x_1320.x, x_1320.y, x_1320.z);
        let x_1323 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
        let x_1326 : bool = u_xlatb11.y;
        let x_1328 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1326 & x_1328);
        let x_1330 : vec3<f32> = u_xlat10;
        let x_1333 : vec4<bool> = (-(vec4<f32>(x_1330.z, x_1330.y, x_1330.z, x_1330.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1334 : vec3<bool> = vec3<bool>(x_1333.x, x_1333.y, x_1333.w);
        let x_1335 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1334.x, x_1334.y, x_1335.z, x_1334.z);
        let x_1339 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1339);
        let x_1344 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1344);
        let x_1350 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1350);
        let x_1354 : bool = u_xlatb11.z;
        if (x_1354) {
          let x_1359 : f32 = u_xlat11.y;
          x_1355 = x_1359;
        } else {
          let x_1361 : f32 = u_xlat53;
          x_1355 = x_1361;
        }
        let x_1362 : f32 = x_1355;
        u_xlat25.x = x_1362;
        let x_1365 : bool = u_xlatb52;
        if (x_1365) {
          let x_1370 : f32 = u_xlat11.x;
          x_1366 = x_1370;
        } else {
          let x_1373 : f32 = u_xlat25.x;
          x_1366 = x_1373;
        }
        let x_1374 : f32 = x_1366;
        u_xlat52 = x_1374;
        let x_1375 : i32 = u_xlati48;
        let x_1377 : f32 = x_231.x_AdditionalShadowParams[x_1375].w;
        u_xlat11.x = trunc(x_1377);
        let x_1380 : f32 = u_xlat52;
        let x_1382 : f32 = u_xlat11.x;
        u_xlat52 = (x_1380 + x_1382);
        let x_1384 : f32 = u_xlat52;
        u_xlati51 = i32(x_1384);
      }
      let x_1386 : i32 = u_xlati51;
      u_xlati51 = (x_1386 << bitcast<u32>(2i));
      let x_1388 : vec3<f32> = vs_INTERP8;
      let x_1391 : i32 = u_xlati51;
      let x_1394 : i32 = u_xlati51;
      let x_1398 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1391 + 1i) / 4i)][((x_1394 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1388.y, x_1388.y, x_1388.y, x_1388.y) * x_1398);
      let x_1400 : i32 = u_xlati51;
      let x_1402 : i32 = u_xlati51;
      let x_1405 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_1400 / 4i)][(x_1402 % 4i)];
      let x_1406 : vec3<f32> = vs_INTERP8;
      let x_1409 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1405 * vec4<f32>(x_1406.x, x_1406.x, x_1406.x, x_1406.x)) + x_1409);
      let x_1411 : i32 = u_xlati51;
      let x_1414 : i32 = u_xlati51;
      let x_1418 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1411 + 2i) / 4i)][((x_1414 + 2i) % 4i)];
      let x_1419 : vec3<f32> = vs_INTERP8;
      let x_1422 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1418 * vec4<f32>(x_1419.z, x_1419.z, x_1419.z, x_1419.z)) + x_1422);
      let x_1424 : vec4<f32> = u_xlat11;
      let x_1425 : i32 = u_xlati51;
      let x_1428 : i32 = u_xlati51;
      let x_1432 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1425 + 3i) / 4i)][((x_1428 + 3i) % 4i)];
      u_xlat11 = (x_1424 + x_1432);
      let x_1434 : vec4<f32> = u_xlat11;
      let x_1436 : vec4<f32> = u_xlat11;
      let x_1438 : vec3<f32> = (vec3<f32>(x_1434.x, x_1434.y, x_1434.z) / vec3<f32>(x_1436.w, x_1436.w, x_1436.w));
      let x_1439 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
      let x_1442 : vec4<f32> = u_xlat11;
      let x_1443 : vec2<f32> = vec2<f32>(x_1442.x, x_1442.y);
      let x_1445 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
      let x_1453 : vec3<f32> = txVec2;
      let x_1455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
      u_xlat51 = x_1455;
      let x_1456 : i32 = u_xlati48;
      let x_1458 : f32 = x_231.x_AdditionalShadowParams[x_1456].x;
      u_xlat52 = (1.0f + -(x_1458));
      let x_1461 : f32 = u_xlat51;
      let x_1462 : i32 = u_xlati48;
      let x_1464 : f32 = x_231.x_AdditionalShadowParams[x_1462].x;
      let x_1466 : f32 = u_xlat52;
      u_xlat51 = ((x_1461 * x_1464) + x_1466);
      let x_1469 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1469);
      let x_1472 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1472 >= 1.0f);
      let x_1475 : bool = u_xlatb52;
      let x_1477 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1475 | x_1477);
      let x_1479 : bool = u_xlatb52;
      let x_1480 : f32 = u_xlat51;
      u_xlat51 = select(x_1480, 1.0f, x_1479);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1483 : f32 = u_xlat51;
    u_xlat52 = (-(x_1483) + 1.0f);
    let x_1486 : f32 = u_xlat44;
    let x_1487 : f32 = u_xlat52;
    let x_1489 : f32 = u_xlat51;
    u_xlat51 = ((x_1486 * x_1487) + x_1489);
    let x_1492 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1492 & 31i)));
    let x_1496 : i32 = u_xlati52;
    let x_1499 : f32 = x_761.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1496) & bitcast<u32>(x_1499)));
    let x_1503 : i32 = u_xlati52;
    if ((x_1503 != 0i)) {
      let x_1507 : i32 = u_xlati48;
      let x_1509 : f32 = x_761.x_AdditionalLightsLightTypes[x_1507].el;
      u_xlati52 = i32(x_1509);
      let x_1512 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1512 != 0i));
      let x_1516 : i32 = u_xlati48;
      u_xlati25 = (x_1516 << bitcast<u32>(2i));
      let x_1518 : i32 = u_xlati11;
      if ((x_1518 != 0i)) {
        let x_1522 : vec3<f32> = vs_INTERP8;
        let x_1524 : i32 = u_xlati25;
        let x_1527 : i32 = u_xlati25;
        let x_1531 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1524 + 1i) / 4i)][((x_1527 + 1i) % 4i)];
        let x_1533 : vec3<f32> = (vec3<f32>(x_1522.y, x_1522.y, x_1522.y) * vec3<f32>(x_1531.x, x_1531.y, x_1531.w));
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1533.x, x_1534.y, x_1533.y, x_1533.z);
        let x_1536 : i32 = u_xlati25;
        let x_1538 : i32 = u_xlati25;
        let x_1541 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[(x_1536 / 4i)][(x_1538 % 4i)];
        let x_1543 : vec3<f32> = vs_INTERP8;
        let x_1546 : vec4<f32> = u_xlat11;
        let x_1548 : vec3<f32> = ((vec3<f32>(x_1541.x, x_1541.y, x_1541.w) * vec3<f32>(x_1543.x, x_1543.x, x_1543.x)) + vec3<f32>(x_1546.x, x_1546.z, x_1546.w));
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1548.x, x_1549.y, x_1548.y, x_1548.z);
        let x_1551 : i32 = u_xlati25;
        let x_1554 : i32 = u_xlati25;
        let x_1558 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1551 + 2i) / 4i)][((x_1554 + 2i) % 4i)];
        let x_1560 : vec3<f32> = vs_INTERP8;
        let x_1563 : vec4<f32> = u_xlat11;
        let x_1565 : vec3<f32> = ((vec3<f32>(x_1558.x, x_1558.y, x_1558.w) * vec3<f32>(x_1560.z, x_1560.z, x_1560.z)) + vec3<f32>(x_1563.x, x_1563.z, x_1563.w));
        let x_1566 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1565.x, x_1566.y, x_1565.y, x_1565.z);
        let x_1568 : vec4<f32> = u_xlat11;
        let x_1570 : i32 = u_xlati25;
        let x_1573 : i32 = u_xlati25;
        let x_1577 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1570 + 3i) / 4i)][((x_1573 + 3i) % 4i)];
        let x_1579 : vec3<f32> = (vec3<f32>(x_1568.x, x_1568.z, x_1568.w) + vec3<f32>(x_1577.x, x_1577.y, x_1577.w));
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1579.x, x_1580.y, x_1579.y, x_1579.z);
        let x_1582 : vec4<f32> = u_xlat11;
        let x_1584 : vec4<f32> = u_xlat11;
        let x_1586 : vec2<f32> = (vec2<f32>(x_1582.x, x_1582.z) / vec2<f32>(x_1584.w, x_1584.w));
        let x_1587 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1586.x, x_1587.y, x_1586.y, x_1587.w);
        let x_1589 : vec4<f32> = u_xlat11;
        let x_1592 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1593 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1592.x, x_1593.y, x_1592.y, x_1593.w);
        let x_1595 : vec4<f32> = u_xlat11;
        let x_1599 : vec2<f32> = clamp(vec2<f32>(x_1595.x, x_1595.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1600 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1599.x, x_1600.y, x_1599.y, x_1600.w);
        let x_1602 : i32 = u_xlati48;
        let x_1604 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[x_1602];
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1609 : i32 = u_xlati48;
        let x_1611 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[x_1609];
        let x_1613 : vec2<f32> = ((vec2<f32>(x_1604.x, x_1604.y) * vec2<f32>(x_1606.x, x_1606.z)) + vec2<f32>(x_1611.z, x_1611.w));
        let x_1614 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1614.w);
      } else {
        let x_1617 : i32 = u_xlati52;
        u_xlatb52 = (x_1617 == 1i);
        let x_1619 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1619);
        let x_1621 : i32 = u_xlati52;
        if ((x_1621 != 0i)) {
          let x_1626 : vec3<f32> = vs_INTERP8;
          let x_1628 : i32 = u_xlati25;
          let x_1631 : i32 = u_xlati25;
          let x_1635 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1628 + 1i) / 4i)][((x_1631 + 1i) % 4i)];
          let x_1637 : vec2<f32> = (vec2<f32>(x_1626.y, x_1626.y) * vec2<f32>(x_1635.x, x_1635.y));
          let x_1638 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1637.x, x_1637.y, x_1638.z, x_1638.w);
          let x_1640 : i32 = u_xlati25;
          let x_1642 : i32 = u_xlati25;
          let x_1645 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[(x_1640 / 4i)][(x_1642 % 4i)];
          let x_1647 : vec3<f32> = vs_INTERP8;
          let x_1650 : vec4<f32> = u_xlat12;
          let x_1652 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.y) * vec2<f32>(x_1647.x, x_1647.x)) + vec2<f32>(x_1650.x, x_1650.y));
          let x_1653 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
          let x_1655 : i32 = u_xlati25;
          let x_1658 : i32 = u_xlati25;
          let x_1662 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1655 + 2i) / 4i)][((x_1658 + 2i) % 4i)];
          let x_1664 : vec3<f32> = vs_INTERP8;
          let x_1667 : vec4<f32> = u_xlat12;
          let x_1669 : vec2<f32> = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(x_1664.z, x_1664.z)) + vec2<f32>(x_1667.x, x_1667.y));
          let x_1670 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1669.x, x_1669.y, x_1670.z, x_1670.w);
          let x_1672 : vec4<f32> = u_xlat12;
          let x_1674 : i32 = u_xlati25;
          let x_1677 : i32 = u_xlati25;
          let x_1681 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1674 + 3i) / 4i)][((x_1677 + 3i) % 4i)];
          let x_1683 : vec2<f32> = (vec2<f32>(x_1672.x, x_1672.y) + vec2<f32>(x_1681.x, x_1681.y));
          let x_1684 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1683.x, x_1683.y, x_1684.z, x_1684.w);
          let x_1686 : vec4<f32> = u_xlat12;
          let x_1689 : vec2<f32> = ((vec2<f32>(x_1686.x, x_1686.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1690 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1689.x, x_1689.y, x_1690.z, x_1690.w);
          let x_1692 : vec4<f32> = u_xlat12;
          let x_1694 : vec2<f32> = fract(vec2<f32>(x_1692.x, x_1692.y));
          let x_1695 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1694.x, x_1694.y, x_1695.z, x_1695.w);
          let x_1697 : i32 = u_xlati48;
          let x_1699 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[x_1697];
          let x_1701 : vec4<f32> = u_xlat12;
          let x_1704 : i32 = u_xlati48;
          let x_1706 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[x_1704];
          let x_1708 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1706.z, x_1706.w));
          let x_1709 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1708.x, x_1709.y, x_1708.y, x_1709.w);
        } else {
          let x_1712 : vec3<f32> = vs_INTERP8;
          let x_1714 : i32 = u_xlati25;
          let x_1717 : i32 = u_xlati25;
          let x_1721 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1714 + 1i) / 4i)][((x_1717 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1712.y, x_1712.y, x_1712.y, x_1712.y) * x_1721);
          let x_1723 : i32 = u_xlati25;
          let x_1725 : i32 = u_xlati25;
          let x_1728 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[(x_1723 / 4i)][(x_1725 % 4i)];
          let x_1729 : vec3<f32> = vs_INTERP8;
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1728 * vec4<f32>(x_1729.x, x_1729.x, x_1729.x, x_1729.x)) + x_1732);
          let x_1734 : i32 = u_xlati25;
          let x_1737 : i32 = u_xlati25;
          let x_1741 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1734 + 2i) / 4i)][((x_1737 + 2i) % 4i)];
          let x_1742 : vec3<f32> = vs_INTERP8;
          let x_1745 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1741 * vec4<f32>(x_1742.z, x_1742.z, x_1742.z, x_1742.z)) + x_1745);
          let x_1747 : vec4<f32> = u_xlat12;
          let x_1748 : i32 = u_xlati25;
          let x_1751 : i32 = u_xlati25;
          let x_1755 : vec4<f32> = x_761.x_AdditionalLightsWorldToLights[((x_1748 + 3i) / 4i)][((x_1751 + 3i) % 4i)];
          u_xlat12 = (x_1747 + x_1755);
          let x_1757 : vec4<f32> = u_xlat12;
          let x_1759 : vec4<f32> = u_xlat12;
          let x_1761 : vec3<f32> = (vec3<f32>(x_1757.x, x_1757.y, x_1757.z) / vec3<f32>(x_1759.w, x_1759.w, x_1759.w));
          let x_1762 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1766 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1764.x, x_1764.y, x_1764.z), vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
          let x_1769 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1769);
          let x_1771 : f32 = u_xlat52;
          let x_1773 : vec4<f32> = u_xlat12;
          let x_1775 : vec3<f32> = (vec3<f32>(x_1771, x_1771, x_1771) * vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
          let x_1776 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
          let x_1778 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1778.x, x_1778.y, x_1778.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1783 : f32 = u_xlat52;
          u_xlat52 = max(x_1783, 0.00000099999999747524f);
          let x_1786 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1786);
          let x_1789 : f32 = u_xlat52;
          let x_1791 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1789, x_1789, x_1789) * vec3<f32>(x_1791.z, x_1791.x, x_1791.y));
          let x_1795 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1795);
          let x_1799 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1799, 0.0f, 1.0f);
          let x_1804 : vec3<f32> = u_xlat13;
          let x_1806 : vec4<bool> = (vec4<f32>(x_1804.y, x_1804.y, x_1804.z, x_1804.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1807 : vec2<bool> = vec2<bool>(x_1806.x, x_1806.z);
          let x_1808 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1807.x, x_1808.y, x_1807.y);
          let x_1811 : bool = u_xlatb25.x;
          if (x_1811) {
            let x_1816 : f32 = u_xlat13.x;
            x_1812 = x_1816;
          } else {
            let x_1819 : f32 = u_xlat13.x;
            x_1812 = -(x_1819);
          }
          let x_1821 : f32 = x_1812;
          u_xlat25.x = x_1821;
          let x_1824 : bool = u_xlatb25.z;
          if (x_1824) {
            let x_1829 : f32 = u_xlat13.x;
            x_1825 = x_1829;
          } else {
            let x_1832 : f32 = u_xlat13.x;
            x_1825 = -(x_1832);
          }
          let x_1834 : f32 = x_1825;
          u_xlat25.z = x_1834;
          let x_1836 : vec4<f32> = u_xlat12;
          let x_1838 : f32 = u_xlat52;
          let x_1841 : vec3<f32> = u_xlat25;
          let x_1843 : vec2<f32> = ((vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(x_1838, x_1838)) + vec2<f32>(x_1841.x, x_1841.z));
          let x_1844 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1843.x, x_1844.y, x_1843.y);
          let x_1846 : vec3<f32> = u_xlat25;
          let x_1849 : vec2<f32> = ((vec2<f32>(x_1846.x, x_1846.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1850 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1849.x, x_1850.y, x_1849.y);
          let x_1852 : vec3<f32> = u_xlat25;
          let x_1856 : vec2<f32> = clamp(vec2<f32>(x_1852.x, x_1852.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1857 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1856.x, x_1857.y, x_1856.y);
          let x_1859 : i32 = u_xlati48;
          let x_1861 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[x_1859];
          let x_1863 : vec3<f32> = u_xlat25;
          let x_1866 : i32 = u_xlati48;
          let x_1868 : vec4<f32> = x_761.x_AdditionalLightsCookieAtlasUVRects[x_1866];
          let x_1870 : vec2<f32> = ((vec2<f32>(x_1861.x, x_1861.y) * vec2<f32>(x_1863.x, x_1863.z)) + vec2<f32>(x_1868.z, x_1868.w));
          let x_1871 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1870.x, x_1871.y, x_1870.y, x_1871.w);
        }
      }
      let x_1878 : vec4<f32> = u_xlat11;
      let x_1880 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1878.x, x_1878.z), 0.0f);
      u_xlat11 = x_1880;
      let x_1882 : bool = u_xlatb20.y;
      if (x_1882) {
        let x_1887 : f32 = u_xlat11.w;
        x_1883 = x_1887;
      } else {
        let x_1890 : f32 = u_xlat11.x;
        x_1883 = x_1890;
      }
      let x_1891 : f32 = x_1883;
      u_xlat52 = x_1891;
      let x_1893 : bool = u_xlatb20.x;
      if (x_1893) {
        let x_1897 : vec4<f32> = u_xlat11;
        x_1894 = vec3<f32>(x_1897.x, x_1897.y, x_1897.z);
      } else {
        let x_1900 : f32 = u_xlat52;
        x_1894 = vec3<f32>(x_1900, x_1900, x_1900);
      }
      let x_1902 : vec3<f32> = x_1894;
      let x_1903 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1909 : vec4<f32> = u_xlat11;
    let x_1911 : i32 = u_xlati48;
    let x_1913 : vec4<f32> = x_1220.x_AdditionalLightsColor[x_1911];
    let x_1915 : vec3<f32> = (vec3<f32>(x_1909.x, x_1909.y, x_1909.z) * vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
    let x_1916 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
    let x_1918 : f32 = u_xlat49;
    let x_1919 : f32 = u_xlat51;
    u_xlat48 = (x_1918 * x_1919);
    let x_1921 : vec4<f32> = u_xlat3;
    let x_1923 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1921.x, x_1921.y, x_1921.z), x_1923);
    let x_1925 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1925, 0.0f, 1.0f);
    let x_1927 : f32 = u_xlat48;
    let x_1928 : f32 = u_xlat49;
    u_xlat48 = (x_1927 * x_1928);
    let x_1930 : f32 = u_xlat48;
    let x_1932 : vec4<f32> = u_xlat11;
    let x_1934 : vec3<f32> = (vec3<f32>(x_1930, x_1930, x_1930) * vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
    let x_1935 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
    let x_1937 : vec3<f32> = u_xlat9;
    let x_1938 : f32 = u_xlat50;
    let x_1941 : vec3<f32> = u_xlat14;
    u_xlat9 = ((x_1937 * vec3<f32>(x_1938, x_1938, x_1938)) + x_1941);
    let x_1943 : vec3<f32> = u_xlat9;
    let x_1944 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1943, x_1944);
    let x_1946 : f32 = u_xlat48;
    u_xlat48 = max(x_1946, 1.17549435e-38f);
    let x_1948 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1948);
    let x_1950 : f32 = u_xlat48;
    let x_1952 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1950, x_1950, x_1950) * x_1952);
    let x_1954 : vec4<f32> = u_xlat3;
    let x_1956 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1954.x, x_1954.y, x_1954.z), x_1956);
    let x_1958 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1958, 0.0f, 1.0f);
    let x_1960 : vec3<f32> = u_xlat10;
    let x_1961 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1960, x_1961);
    let x_1963 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1963, 0.0f, 1.0f);
    let x_1965 : f32 = u_xlat48;
    let x_1966 : f32 = u_xlat48;
    u_xlat48 = (x_1965 * x_1966);
    let x_1968 : f32 = u_xlat48;
    let x_1970 : f32 = u_xlat30.x;
    u_xlat48 = ((x_1968 * x_1970) + 1.00001001358032226562f);
    let x_1973 : f32 = u_xlat49;
    let x_1974 : f32 = u_xlat49;
    u_xlat49 = (x_1973 * x_1974);
    let x_1976 : f32 = u_xlat48;
    let x_1977 : f32 = u_xlat48;
    u_xlat48 = (x_1976 * x_1977);
    let x_1979 : f32 = u_xlat49;
    u_xlat49 = max(x_1979, 0.10000000149011611938f);
    let x_1981 : f32 = u_xlat48;
    let x_1982 : f32 = u_xlat49;
    u_xlat48 = (x_1981 * x_1982);
    let x_1984 : f32 = u_xlat47;
    let x_1985 : f32 = u_xlat48;
    u_xlat48 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat45;
    let x_1988 : f32 = u_xlat48;
    u_xlat48 = (x_1987 / x_1988);
    let x_1990 : f32 = u_xlat48;
    let x_1993 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1993);
    let x_1995 : vec3<f32> = u_xlat9;
    let x_1996 : vec4<f32> = u_xlat11;
    let x_1999 : vec4<f32> = u_xlat8;
    let x_2001 : vec3<f32> = ((x_1995 * vec3<f32>(x_1996.x, x_1996.y, x_1996.z)) + vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
    let x_2002 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);

    continuing {
      let x_2004 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2004 + bitcast<u32>(1i));
    }
  }
  let x_2006 : vec4<f32> = u_xlat4;
  let x_2008 : vec4<f32> = u_xlat6;
  let x_2011 : vec4<f32> = u_xlat7;
  u_xlat14 = ((vec3<f32>(x_2006.x, x_2006.y, x_2006.z) * vec3<f32>(x_2008.x, x_2008.x, x_2008.x)) + vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
  let x_2014 : vec4<f32> = u_xlat8;
  let x_2016 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_2014.x, x_2014.y, x_2014.z) + x_2016);
  let x_2018 : vec4<f32> = vs_INTERP6;
  let x_2020 : vec3<f32> = u_xlat1;
  let x_2022 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_2018.w, x_2018.w, x_2018.w) * x_2020) + x_2022);
  let x_2025 : f32 = u_xlat2.x;
  let x_2027 : f32 = u_xlat2.x;
  u_xlat1.x = (x_2025 * -(x_2027));
  let x_2032 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2032);
  let x_2035 : vec3<f32> = u_xlat14;
  let x_2038 : vec4<f32> = x_123.unity_FogColor;
  u_xlat14 = (x_2035 + -(vec3<f32>(x_2038.x, x_2038.y, x_2038.z)));
  let x_2044 : vec3<f32> = u_xlat1;
  let x_2046 : vec3<f32> = u_xlat14;
  let x_2049 : vec4<f32> = x_123.unity_FogColor;
  let x_2051 : vec3<f32> = ((vec3<f32>(x_2044.x, x_2044.x, x_2044.x) * x_2046) + vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
  let x_2054 : bool = u_xlatb16;
  let x_2055 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2055, x_2054);
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


