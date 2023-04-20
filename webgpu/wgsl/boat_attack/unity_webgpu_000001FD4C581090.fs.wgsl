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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_42 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_123 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_133 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_231 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb14 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : vec2<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu37 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1026 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatu40 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_350 : f32;
  var x_396 : f32;
  var x_481 : f32;
  var x_494 : f32;
  var x_506 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1185 : f32;
  var x_1196 : f32;
  var txVec2 : vec3<f32>;
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
  u_xlatb12.x = (0.0f < x_32);
  let x_47 : f32 = x_42.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_47 >= 0.0f);
  let x_54 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_54);
  let x_59 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_59);
  let x_63 : f32 = u_xlat12.y;
  let x_65 : f32 = u_xlat12.x;
  u_xlat12.x = (x_63 * x_65);
  let x_69 : vec4<f32> = vs_INTERP4;
  let x_71 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_69.y, x_69.z, x_69.x) * vec3<f32>(x_71.z, x_71.x, x_71.y));
  let x_74 : vec3<f32> = vs_INTERP9;
  let x_76 : vec4<f32> = vs_INTERP4;
  let x_79 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y)) + -(x_79));
  let x_82 : vec3<f32> = u_xlat12;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_82.x, x_82.x, x_82.x) * x_84);
  let x_86 : f32 = u_xlat0;
  let x_88 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_86, x_86, x_86) * x_88);
  let x_92 : f32 = u_xlat0;
  let x_94 : vec4<f32> = vs_INTERP4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec3<f32> = u_xlat12;
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
  u_xlat18 = (vec3<f32>(x_166, x_166, x_166) * vec3<f32>(x_168.x, x_168.y, x_168.z));
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
  let x_187 : vec3<f32> = u_xlat18;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.y, x_187.y, x_187.y));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec3<f32> = u_xlat18;
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.x, x_192.x) * vec3<f32>(x_194.x, x_194.y, x_194.z)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat18;
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
  u_xlat37 = (-(x_292) + 1.0f);
  let x_295 : f32 = u_xlat0;
  let x_297 : f32 = x_231.x_MainLightShadowParams.x;
  let x_299 : f32 = u_xlat37;
  u_xlat0 = ((x_295 * x_297) + x_299);
  let x_303 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_303);
  let x_307 : f32 = u_xlat2.z;
  u_xlatb14 = (x_307 >= 1.0f);
  let x_309 : bool = u_xlatb14;
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
  u_xlat14 = dpdxCoarse(x_364);
  let x_368 : f32 = u_xlat4.w;
  u_xlat26 = dpdyCoarse(x_368);
  let x_370 : f32 = u_xlat26;
  let x_372 : f32 = u_xlat14;
  u_xlat14 = (abs(x_370) + abs(x_372));
  let x_375 : f32 = u_xlat14;
  u_xlat14 = max(x_375, 0.00009999999747378752f);
  let x_379 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat14;
  u_xlat2.x = (x_379 / x_380);
  let x_384 : f32 = u_xlat2.x;
  u_xlat2.x = (x_384 + 0.5f);
  let x_389 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_389, 0.0f, 1.0f);
  let x_393 : f32 = x_123.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_393 == 0.0f));
  let x_395 : bool = u_xlatb14;
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
  let x_419 : vec3<f32> = u_xlat12;
  let x_420 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_419 * vec3<f32>(x_420.y, x_420.y, x_420.y));
  let x_423 : vec3<f32> = u_xlat18;
  let x_425 : vec4<f32> = vs_INTERP4;
  let x_428 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_423.x, x_423.x, x_423.x) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + x_428);
  let x_430 : vec3<f32> = u_xlat18;
  let x_432 : vec3<f32> = vs_INTERP9;
  let x_434 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_430.z, x_430.z, x_430.z) * x_432) + x_434);
  let x_436 : vec3<f32> = u_xlat12;
  let x_437 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_436, x_437);
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_441);
  let x_444 : vec3<f32> = u_xlat12;
  let x_445 : vec4<f32> = u_xlat2;
  let x_447 : vec3<f32> = (x_444 * vec3<f32>(x_445.x, x_445.x, x_445.x));
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_452 : f32 = x_123.unity_OrthoParams.w;
  u_xlatb12.x = (x_452 == 0.0f);
  let x_455 : vec3<f32> = vs_INTERP8;
  let x_460 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_461 : vec3<f32> = (-(x_455) + x_460);
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_461.x, x_462.y, x_461.y, x_461.z);
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_465.x, x_465.z, x_465.w), vec3<f32>(x_467.x, x_467.z, x_467.w));
  let x_470 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_470);
  let x_472 : f32 = u_xlat24;
  let x_474 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.z, x_474.w));
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_476.x, x_477.y, x_476.y, x_476.z);
  let x_480 : bool = u_xlatb12.x;
  if (x_480) {
    let x_485 : f32 = u_xlat2.x;
    x_481 = x_485;
  } else {
    let x_489 : f32 = x_123.unity_MatrixV[0i].z;
    x_481 = x_489;
  }
  let x_490 : f32 = x_481;
  u_xlat4.x = x_490;
  let x_493 : bool = u_xlatb12.x;
  if (x_493) {
    let x_498 : f32 = u_xlat2.z;
    x_494 = x_498;
  } else {
    let x_501 : f32 = x_123.unity_MatrixV[1i].z;
    x_494 = x_501;
  }
  let x_502 : f32 = x_494;
  u_xlat4.y = x_502;
  let x_505 : bool = u_xlatb12.x;
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
  u_xlat12.x = (x_561 * x_563);
  let x_567 : f32 = u_xlat3.x;
  let x_569 : f32 = u_xlat3.x;
  let x_572 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_567 * x_569) + -(x_572));
  let x_578 : vec4<f32> = x_42.unity_SHC;
  let x_580 : vec3<f32> = u_xlat12;
  let x_583 : vec3<f32> = u_xlat9;
  u_xlat12 = ((vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(x_580.x, x_580.x, x_580.x)) + x_583);
  let x_585 : vec3<f32> = u_xlat12;
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat12 = (x_585 + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_589, vec3<f32>(0.0f, 0.0f, 0.0f));
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
  u_xlat39 = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat39;
  let x_614 : f32 = u_xlat39;
  u_xlat40 = (x_613 * x_614);
  let x_616 : f32 = u_xlat40;
  u_xlat40 = max(x_616, 0.0078125f);
  let x_619 : f32 = u_xlat40;
  let x_620 : f32 = u_xlat40;
  u_xlat5.x = (x_619 * x_620);
  let x_625 : f32 = u_xlat6.x;
  u_xlat17 = (x_625 + 0.04000002145767211914f);
  let x_628 : f32 = u_xlat17;
  u_xlat17 = min(x_628, 1.0f);
  let x_631 : f32 = u_xlat40;
  u_xlat29 = ((x_631 * 4.0f) + 2.0f);
  let x_637 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_637, 1.0f);
  let x_641 : vec4<f32> = vs_INTERP3;
  let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
  let x_644 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_642.x, x_642.y, x_644);
  let x_651 : vec3<f32> = txVec1;
  let x_653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_651.xy, x_651.z);
  u_xlat6.x = x_653;
  let x_656 : f32 = u_xlat6.x;
  let x_658 : f32 = x_231.x_MainLightShadowParams.x;
  let x_660 : f32 = u_xlat37;
  u_xlat37 = ((x_656 * x_658) + x_660);
  let x_664 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_664);
  let x_668 : f32 = vs_INTERP3.z;
  u_xlatb18 = (x_668 >= 1.0f);
  let x_670 : bool = u_xlatb18;
  let x_671 : bool = u_xlatb6;
  u_xlatb6 = (x_670 | x_671);
  let x_673 : bool = u_xlatb6;
  let x_674 : f32 = u_xlat37;
  u_xlat37 = select(x_674, 1.0f, x_673);
  let x_676 : vec3<f32> = vs_INTERP8;
  let x_678 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_680 : vec3<f32> = (x_676 + -(x_678));
  let x_681 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat6;
  let x_685 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_690 : f32 = u_xlat6.x;
  let x_692 : f32 = x_231.x_MainLightShadowParams.z;
  let x_695 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_690 * x_692) + x_695);
  let x_699 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_699, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat37;
  u_xlat30 = (-(x_703) + 1.0f);
  let x_707 : f32 = u_xlat18.x;
  let x_708 : f32 = u_xlat30;
  let x_710 : f32 = u_xlat37;
  u_xlat37 = ((x_707 * x_708) + x_710);
  let x_712 : vec4<f32> = u_xlat4;
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(-(vec3<f32>(x_712.x, x_712.y, x_712.z)), vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_720 : f32 = u_xlat18.x;
  let x_722 : f32 = u_xlat18.x;
  u_xlat18.x = (x_720 + x_722);
  let x_725 : vec4<f32> = u_xlat3;
  let x_727 : vec3<f32> = u_xlat18;
  let x_731 : vec4<f32> = u_xlat4;
  u_xlat18 = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * -(vec3<f32>(x_727.x, x_727.x, x_727.x))) + -(vec3<f32>(x_731.x, x_731.y, x_731.z)));
  let x_735 : vec4<f32> = u_xlat3;
  let x_737 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_742 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_742, 0.0f, 1.0f);
  let x_746 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_746) + 1.0f);
  let x_751 : f32 = u_xlat7.x;
  let x_753 : f32 = u_xlat7.x;
  u_xlat7.x = (x_751 * x_753);
  let x_757 : f32 = u_xlat7.x;
  let x_759 : f32 = u_xlat7.x;
  u_xlat7.x = (x_757 * x_759);
  let x_764 : f32 = u_xlat39;
  u_xlat19.x = ((-(x_764) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_771 : f32 = u_xlat39;
  let x_773 : f32 = u_xlat19.x;
  u_xlat39 = (x_771 * x_773);
  let x_775 : f32 = u_xlat39;
  u_xlat39 = (x_775 * 6.0f);
  let x_786 : vec3<f32> = u_xlat18;
  let x_787 : f32 = u_xlat39;
  let x_788 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_786, x_787);
  u_xlat8 = x_788;
  let x_790 : f32 = u_xlat8.w;
  u_xlat39 = (x_790 + -1.0f);
  let x_793 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_794 : f32 = u_xlat39;
  u_xlat39 = ((x_793 * x_794) + 1.0f);
  let x_797 : f32 = u_xlat39;
  u_xlat39 = max(x_797, 0.0f);
  let x_799 : f32 = u_xlat39;
  u_xlat39 = log2(x_799);
  let x_801 : f32 = u_xlat39;
  let x_803 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_801 * x_803);
  let x_805 : f32 = u_xlat39;
  u_xlat39 = exp2(x_805);
  let x_807 : f32 = u_xlat39;
  let x_809 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_807 * x_809);
  let x_811 : vec4<f32> = u_xlat8;
  let x_813 : f32 = u_xlat39;
  u_xlat18 = (vec3<f32>(x_811.x, x_811.y, x_811.z) * vec3<f32>(x_813, x_813, x_813));
  let x_816 : f32 = u_xlat40;
  let x_818 : f32 = u_xlat40;
  u_xlat19 = ((vec2<f32>(x_816, x_816) * vec2<f32>(x_818, x_818)) + vec2<f32>(-1.0f, 1.0f));
  let x_824 : f32 = u_xlat19.y;
  u_xlat39 = (1.0f / x_824);
  let x_826 : f32 = u_xlat17;
  u_xlat40 = (x_826 + -0.03999999910593032837f);
  let x_830 : f32 = u_xlat7.x;
  let x_831 : f32 = u_xlat40;
  u_xlat40 = ((x_830 * x_831) + 0.03999999910593032837f);
  let x_835 : f32 = u_xlat39;
  let x_836 : f32 = u_xlat40;
  u_xlat39 = (x_835 * x_836);
  let x_838 : f32 = u_xlat39;
  let x_840 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_838, x_838, x_838) * x_840);
  let x_842 : vec3<f32> = u_xlat12;
  let x_843 : vec4<f32> = u_xlat2;
  let x_846 : vec3<f32> = u_xlat18;
  u_xlat12 = ((x_842 * vec3<f32>(x_843.x, x_843.z, x_843.w)) + x_846);
  let x_848 : f32 = u_xlat37;
  let x_850 : f32 = x_42.unity_LightData.z;
  u_xlat37 = (x_848 * x_850);
  let x_852 : vec4<f32> = u_xlat3;
  let x_855 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_852.x, x_852.y, x_852.z), vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : f32 = u_xlat39;
  u_xlat39 = clamp(x_858, 0.0f, 1.0f);
  let x_860 : f32 = u_xlat37;
  let x_861 : f32 = u_xlat39;
  u_xlat37 = (x_860 * x_861);
  let x_863 : f32 = u_xlat37;
  let x_866 : vec4<f32> = x_123.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  let x_872 : vec4<f32> = x_123.x_MainLightPosition;
  let x_874 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) + vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_874.x, x_875.y, x_874.y, x_874.z);
  let x_877 : vec4<f32> = u_xlat7;
  let x_879 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_877.x, x_877.z, x_877.w), vec3<f32>(x_879.x, x_879.z, x_879.w));
  let x_882 : f32 = u_xlat37;
  u_xlat37 = max(x_882, 1.17549435e-38f);
  let x_884 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_884);
  let x_886 : f32 = u_xlat37;
  let x_888 : vec4<f32> = u_xlat7;
  let x_890 : vec3<f32> = (vec3<f32>(x_886, x_886, x_886) * vec3<f32>(x_888.x, x_888.z, x_888.w));
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_890.z);
  let x_893 : vec4<f32> = u_xlat3;
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(x_895.x, x_895.z, x_895.w));
  let x_898 : f32 = u_xlat37;
  u_xlat37 = clamp(x_898, 0.0f, 1.0f);
  let x_901 : vec4<f32> = x_123.x_MainLightPosition;
  let x_903 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.z, x_903.w));
  let x_906 : f32 = u_xlat39;
  u_xlat39 = clamp(x_906, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat37;
  let x_909 : f32 = u_xlat37;
  u_xlat37 = (x_908 * x_909);
  let x_911 : f32 = u_xlat37;
  let x_913 : f32 = u_xlat19.x;
  u_xlat37 = ((x_911 * x_913) + 1.00001001358032226562f);
  let x_917 : f32 = u_xlat39;
  let x_918 : f32 = u_xlat39;
  u_xlat39 = (x_917 * x_918);
  let x_920 : f32 = u_xlat37;
  let x_921 : f32 = u_xlat37;
  u_xlat37 = (x_920 * x_921);
  let x_923 : f32 = u_xlat39;
  u_xlat39 = max(x_923, 0.10000000149011611938f);
  let x_926 : f32 = u_xlat37;
  let x_927 : f32 = u_xlat39;
  u_xlat37 = (x_926 * x_927);
  let x_929 : f32 = u_xlat29;
  let x_930 : f32 = u_xlat37;
  u_xlat37 = (x_929 * x_930);
  let x_933 : f32 = u_xlat5.x;
  let x_934 : f32 = u_xlat37;
  u_xlat37 = (x_933 / x_934);
  let x_936 : f32 = u_xlat37;
  let x_940 : vec4<f32> = u_xlat2;
  let x_942 : vec3<f32> = ((vec3<f32>(x_936, x_936, x_936) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_940.x, x_940.z, x_940.w));
  let x_943 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_942.x, x_943.y, x_942.y, x_942.z);
  let x_945 : vec3<f32> = u_xlat18;
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_945 * vec3<f32>(x_946.x, x_946.z, x_946.w));
  let x_951 : f32 = x_123.x_AdditionalLightsCount.x;
  let x_953 : f32 = x_42.unity_LightData.y;
  u_xlat37 = min(x_951, x_953);
  let x_957 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_957));
  let x_961 : f32 = u_xlat6.x;
  let x_964 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_967 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_961 * x_964) + x_967);
  let x_969 : f32 = u_xlat39;
  u_xlat39 = clamp(x_969, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlat7.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_981 : u32 = u_xlatu_loop_1;
    let x_982 : u32 = u_xlatu37;
    if ((x_981 < x_982)) {
    } else {
      break;
    }
    let x_985 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_985 >> 2u);
    let x_989 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_989 & 3u));
    let x_992 : u32 = u_xlatu17;
    let x_995 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_992)];
    let x_1005 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1010 : vec4<u32> = indexable[x_1005];
    u_xlat17 = dot(x_995, bitcast<vec4<f32>>(x_1010));
    let x_1014 : f32 = u_xlat17;
    u_xlati17 = i32(x_1014);
    let x_1016 : vec3<f32> = vs_INTERP8;
    let x_1027 : i32 = u_xlati17;
    let x_1029 : vec4<f32> = x_1026.x_AdditionalLightsPosition[x_1027];
    let x_1032 : i32 = u_xlati17;
    let x_1034 : vec4<f32> = x_1026.x_AdditionalLightsPosition[x_1032];
    let x_1036 : vec3<f32> = ((-(x_1016) * vec3<f32>(x_1029.w, x_1029.w, x_1029.w)) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
    let x_1037 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
    let x_1039 : vec4<f32> = u_xlat8;
    let x_1041 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1039.x, x_1039.y, x_1039.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
    let x_1046 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1046, 0.00006103515625f);
    let x_1052 : f32 = u_xlat6.x;
    u_xlat44 = inverseSqrt(x_1052);
    let x_1054 : f32 = u_xlat44;
    let x_1056 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
    let x_1061 : f32 = u_xlat6.x;
    u_xlat45 = (1.0f / x_1061);
    let x_1064 : f32 = u_xlat6.x;
    let x_1065 : i32 = u_xlati17;
    let x_1067 : f32 = x_1026.x_AdditionalLightsAttenuation[x_1065].x;
    u_xlat6.x = (x_1064 * x_1067);
    let x_1071 : f32 = u_xlat6.x;
    let x_1074 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1071) * x_1074) + 1.0f);
    let x_1079 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1079, 0.0f);
    let x_1083 : f32 = u_xlat6.x;
    let x_1085 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1083 * x_1085);
    let x_1089 : f32 = u_xlat6.x;
    let x_1090 : f32 = u_xlat45;
    u_xlat6.x = (x_1089 * x_1090);
    let x_1093 : i32 = u_xlati17;
    let x_1095 : vec4<f32> = x_1026.x_AdditionalLightsSpotDir[x_1093];
    let x_1097 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1095.x, x_1095.y, x_1095.z), x_1097);
    let x_1099 : f32 = u_xlat45;
    let x_1100 : i32 = u_xlati17;
    let x_1102 : f32 = x_1026.x_AdditionalLightsAttenuation[x_1100].z;
    let x_1104 : i32 = u_xlati17;
    let x_1106 : f32 = x_1026.x_AdditionalLightsAttenuation[x_1104].w;
    u_xlat45 = ((x_1099 * x_1102) + x_1106);
    let x_1108 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1108, 0.0f, 1.0f);
    let x_1110 : f32 = u_xlat45;
    let x_1111 : f32 = u_xlat45;
    u_xlat45 = (x_1110 * x_1111);
    let x_1114 : f32 = u_xlat6.x;
    let x_1115 : f32 = u_xlat45;
    u_xlat6.x = (x_1114 * x_1115);
    let x_1120 : i32 = u_xlati17;
    let x_1122 : f32 = x_231.x_AdditionalShadowParams[x_1120].w;
    u_xlati45 = i32(x_1122);
    let x_1127 : i32 = u_xlati45;
    u_xlatb10.x = (x_1127 >= 0i);
    let x_1131 : bool = u_xlatb10.x;
    if (x_1131) {
      let x_1135 : i32 = u_xlati17;
      let x_1137 : f32 = x_231.x_AdditionalShadowParams[x_1135].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1137, x_1137, x_1137, x_1137))));
      let x_1144 : bool = u_xlatb10.x;
      if (x_1144) {
        let x_1147 : vec3<f32> = u_xlat9;
        let x_1150 : vec3<f32> = u_xlat9;
        let x_1153 : vec4<bool> = (abs(vec4<f32>(x_1147.z, x_1147.z, x_1147.y, x_1147.z)) >= abs(vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.x)));
        u_xlatb10 = vec3<bool>(x_1153.x, x_1153.y, x_1153.z);
        let x_1156 : bool = u_xlatb10.y;
        let x_1158 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1156 & x_1158);
        let x_1162 : vec3<f32> = u_xlat9;
        let x_1165 : vec4<bool> = (-(vec4<f32>(x_1162.z, x_1162.y, x_1162.x, x_1162.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1165.x, x_1165.y, x_1165.z);
        let x_1169 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1169);
        let x_1174 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1174);
        let x_1180 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1180);
        let x_1184 : bool = u_xlatb10.z;
        if (x_1184) {
          let x_1189 : f32 = u_xlat22.z;
          x_1185 = x_1189;
        } else {
          let x_1191 : f32 = u_xlat11;
          x_1185 = x_1191;
        }
        let x_1192 : f32 = x_1185;
        u_xlat34 = x_1192;
        let x_1195 : bool = u_xlatb10.x;
        if (x_1195) {
          let x_1200 : f32 = u_xlat22.x;
          x_1196 = x_1200;
        } else {
          let x_1202 : f32 = u_xlat34;
          x_1196 = x_1202;
        }
        let x_1203 : f32 = x_1196;
        u_xlat10.x = x_1203;
        let x_1205 : i32 = u_xlati17;
        let x_1207 : f32 = x_231.x_AdditionalShadowParams[x_1205].w;
        u_xlat22.x = trunc(x_1207);
        let x_1211 : f32 = u_xlat10.x;
        let x_1213 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1211 + x_1213);
        let x_1217 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1217);
      }
      let x_1219 : i32 = u_xlati45;
      u_xlati45 = (x_1219 << bitcast<u32>(2i));
      let x_1221 : vec3<f32> = vs_INTERP8;
      let x_1224 : i32 = u_xlati45;
      let x_1227 : i32 = u_xlati45;
      let x_1231 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1224 + 1i) / 4i)][((x_1227 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1221.y, x_1221.y, x_1221.y, x_1221.y) * x_1231);
      let x_1233 : i32 = u_xlati45;
      let x_1235 : i32 = u_xlati45;
      let x_1238 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_1233 / 4i)][(x_1235 % 4i)];
      let x_1239 : vec3<f32> = vs_INTERP8;
      let x_1242 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1238 * vec4<f32>(x_1239.x, x_1239.x, x_1239.x, x_1239.x)) + x_1242);
      let x_1244 : i32 = u_xlati45;
      let x_1247 : i32 = u_xlati45;
      let x_1251 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1244 + 2i) / 4i)][((x_1247 + 2i) % 4i)];
      let x_1252 : vec3<f32> = vs_INTERP8;
      let x_1255 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1251 * vec4<f32>(x_1252.z, x_1252.z, x_1252.z, x_1252.z)) + x_1255);
      let x_1257 : vec4<f32> = u_xlat10;
      let x_1258 : i32 = u_xlati45;
      let x_1261 : i32 = u_xlati45;
      let x_1265 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1258 + 3i) / 4i)][((x_1261 + 3i) % 4i)];
      u_xlat10 = (x_1257 + x_1265);
      let x_1267 : vec4<f32> = u_xlat10;
      let x_1269 : vec4<f32> = u_xlat10;
      let x_1271 : vec3<f32> = (vec3<f32>(x_1267.x, x_1267.y, x_1267.z) / vec3<f32>(x_1269.w, x_1269.w, x_1269.w));
      let x_1272 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
      let x_1275 : vec4<f32> = u_xlat10;
      let x_1276 : vec2<f32> = vec2<f32>(x_1275.x, x_1275.y);
      let x_1278 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
      let x_1286 : vec3<f32> = txVec2;
      let x_1288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
      u_xlat45 = x_1288;
      let x_1289 : i32 = u_xlati17;
      let x_1291 : f32 = x_231.x_AdditionalShadowParams[x_1289].x;
      u_xlat10.x = (1.0f + -(x_1291));
      let x_1295 : f32 = u_xlat45;
      let x_1296 : i32 = u_xlati17;
      let x_1298 : f32 = x_231.x_AdditionalShadowParams[x_1296].x;
      let x_1301 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1295 * x_1298) + x_1301);
      let x_1304 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1304);
      let x_1309 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1309 >= 1.0f);
      let x_1311 : bool = u_xlatb22;
      let x_1313 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1311 | x_1313);
      let x_1317 : bool = u_xlatb10.x;
      let x_1318 : f32 = u_xlat45;
      u_xlat45 = select(x_1318, 1.0f, x_1317);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1321 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1321) + 1.0f);
    let x_1325 : f32 = u_xlat39;
    let x_1327 : f32 = u_xlat10.x;
    let x_1329 : f32 = u_xlat45;
    u_xlat45 = ((x_1325 * x_1327) + x_1329);
    let x_1332 : f32 = u_xlat6.x;
    let x_1333 : f32 = u_xlat45;
    u_xlat6.x = (x_1332 * x_1333);
    let x_1336 : vec4<f32> = u_xlat3;
    let x_1338 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), x_1338);
    let x_1340 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1340, 0.0f, 1.0f);
    let x_1343 : f32 = u_xlat6.x;
    let x_1344 : f32 = u_xlat45;
    u_xlat6.x = (x_1343 * x_1344);
    let x_1347 : vec4<f32> = u_xlat6;
    let x_1349 : i32 = u_xlati17;
    let x_1351 : vec4<f32> = x_1026.x_AdditionalLightsColor[x_1349];
    let x_1353 : vec3<f32> = (vec3<f32>(x_1347.x, x_1347.x, x_1347.x) * vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
    let x_1354 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
    let x_1356 : vec4<f32> = u_xlat8;
    let x_1358 : f32 = u_xlat44;
    let x_1361 : vec4<f32> = u_xlat4;
    let x_1363 : vec3<f32> = ((vec3<f32>(x_1356.x, x_1356.y, x_1356.z) * vec3<f32>(x_1358, x_1358, x_1358)) + vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
    let x_1364 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
    let x_1366 : vec4<f32> = u_xlat8;
    let x_1368 : vec4<f32> = u_xlat8;
    u_xlat17 = dot(vec3<f32>(x_1366.x, x_1366.y, x_1366.z), vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : f32 = u_xlat17;
    u_xlat17 = max(x_1371, 1.17549435e-38f);
    let x_1373 : f32 = u_xlat17;
    u_xlat17 = inverseSqrt(x_1373);
    let x_1375 : f32 = u_xlat17;
    let x_1377 : vec4<f32> = u_xlat8;
    let x_1379 : vec3<f32> = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1380 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
    let x_1382 : vec4<f32> = u_xlat3;
    let x_1384 : vec4<f32> = u_xlat8;
    u_xlat17 = dot(vec3<f32>(x_1382.x, x_1382.y, x_1382.z), vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1387, 0.0f, 1.0f);
    let x_1389 : vec3<f32> = u_xlat9;
    let x_1390 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1389, vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
    let x_1395 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1395, 0.0f, 1.0f);
    let x_1398 : f32 = u_xlat17;
    let x_1399 : f32 = u_xlat17;
    u_xlat17 = (x_1398 * x_1399);
    let x_1401 : f32 = u_xlat17;
    let x_1403 : f32 = u_xlat19.x;
    u_xlat17 = ((x_1401 * x_1403) + 1.00001001358032226562f);
    let x_1407 : f32 = u_xlat6.x;
    let x_1409 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1407 * x_1409);
    let x_1412 : f32 = u_xlat17;
    let x_1413 : f32 = u_xlat17;
    u_xlat17 = (x_1412 * x_1413);
    let x_1416 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1416, 0.10000000149011611938f);
    let x_1419 : f32 = u_xlat17;
    let x_1421 : f32 = u_xlat6.x;
    u_xlat17 = (x_1419 * x_1421);
    let x_1423 : f32 = u_xlat29;
    let x_1424 : f32 = u_xlat17;
    u_xlat17 = (x_1423 * x_1424);
    let x_1427 : f32 = u_xlat5.x;
    let x_1428 : f32 = u_xlat17;
    u_xlat17 = (x_1427 / x_1428);
    let x_1430 : f32 = u_xlat17;
    let x_1433 : vec4<f32> = u_xlat2;
    let x_1435 : vec3<f32> = ((vec3<f32>(x_1430, x_1430, x_1430) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1433.x, x_1433.z, x_1433.w));
    let x_1436 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
    let x_1438 : vec4<f32> = u_xlat8;
    let x_1440 : vec4<f32> = u_xlat10;
    let x_1443 : vec4<f32> = u_xlat7;
    let x_1445 : vec3<f32> = ((vec3<f32>(x_1438.x, x_1438.y, x_1438.z) * vec3<f32>(x_1440.x, x_1440.y, x_1440.z)) + vec3<f32>(x_1443.x, x_1443.z, x_1443.w));
    let x_1446 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1445.x, x_1446.y, x_1445.y, x_1445.z);

    continuing {
      let x_1448 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1448 + bitcast<u32>(1i));
    }
  }
  let x_1450 : vec3<f32> = u_xlat12;
  let x_1451 : f32 = u_xlat41;
  let x_1454 : vec3<f32> = u_xlat18;
  u_xlat12 = ((x_1450 * vec3<f32>(x_1451, x_1451, x_1451)) + x_1454);
  let x_1456 : vec4<f32> = u_xlat7;
  let x_1458 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_1456.x, x_1456.z, x_1456.w) + x_1458);
  let x_1462 : vec4<f32> = vs_INTERP6;
  let x_1464 : vec3<f32> = u_xlat1;
  let x_1466 : vec3<f32> = u_xlat12;
  let x_1467 : vec3<f32> = ((vec3<f32>(x_1462.w, x_1462.w, x_1462.w) * x_1464) + x_1466);
  let x_1468 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
  let x_1470 : bool = u_xlatb14;
  let x_1471 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1471, x_1470);
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


