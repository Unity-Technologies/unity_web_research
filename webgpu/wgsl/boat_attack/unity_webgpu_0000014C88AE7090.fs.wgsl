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

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu37 : u32;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1057 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlatb43 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_350 : f32;
  var x_399 : f32;
  var x_494 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1204 : f32;
  var x_1215 : f32;
  var txVec2 : vec3<f32>;
  var x_1332 : f32;
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
  let x_369 : f32 = u_xlat4.w;
  u_xlat26.x = dpdyCoarse(x_369);
  let x_373 : f32 = u_xlat26.x;
  let x_375 : f32 = u_xlat14;
  u_xlat14 = (abs(x_373) + abs(x_375));
  let x_378 : f32 = u_xlat14;
  u_xlat14 = max(x_378, 0.00009999999747378752f);
  let x_382 : f32 = u_xlat2.x;
  let x_383 : f32 = u_xlat14;
  u_xlat2.x = (x_382 / x_383);
  let x_387 : f32 = u_xlat2.x;
  u_xlat2.x = (x_387 + 0.5f);
  let x_392 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_392, 0.0f, 1.0f);
  let x_396 : f32 = x_123.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_396 == 0.0f));
  let x_398 : bool = u_xlatb14;
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
  let x_422 : vec3<f32> = u_xlat12;
  let x_423 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_422 * vec3<f32>(x_423.y, x_423.y, x_423.y));
  let x_426 : vec3<f32> = u_xlat18;
  let x_428 : vec4<f32> = vs_INTERP4;
  let x_431 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + x_431);
  let x_433 : vec3<f32> = u_xlat18;
  let x_435 : vec3<f32> = vs_INTERP9;
  let x_437 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_433.z, x_433.z, x_433.z) * x_435) + x_437);
  let x_439 : vec3<f32> = u_xlat12;
  let x_440 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_439, x_440);
  let x_444 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_444);
  let x_447 : vec3<f32> = u_xlat12;
  let x_448 : vec4<f32> = u_xlat2;
  let x_450 : vec3<f32> = (x_447 * vec3<f32>(x_448.x, x_448.x, x_448.x));
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_455 : f32 = x_123.unity_OrthoParams.w;
  u_xlatb12.x = (x_455 == 0.0f);
  let x_458 : vec3<f32> = vs_INTERP8;
  let x_463 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  let x_464 : vec3<f32> = (-(x_458) + x_463);
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_465.y, x_464.y, x_464.z);
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_468.x, x_468.z, x_468.w), vec3<f32>(x_470.x, x_470.z, x_470.w));
  let x_473 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_473);
  let x_475 : f32 = u_xlat24;
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
  let x_493 : bool = u_xlatb12.x;
  if (x_493) {
    let x_497 : vec4<f32> = u_xlat2;
    x_494 = vec3<f32>(x_497.x, x_497.z, x_497.w);
  } else {
    let x_500 : vec4<f32> = u_xlat4;
    x_494 = vec3<f32>(x_500.x, x_500.y, x_500.z);
  }
  let x_502 : vec3<f32> = x_494;
  u_xlat12 = x_502;
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
  u_xlat26.x = (x_596 * x_598);
  let x_602 : f32 = u_xlat3.x;
  let x_604 : f32 = u_xlat3.x;
  let x_607 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_602 * x_604) + -(x_607));
  let x_613 : vec4<f32> = x_42.unity_SHC;
  let x_615 : vec2<f32> = u_xlat26;
  let x_618 : vec3<f32> = u_xlat8;
  u_xlat18 = ((vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_615.x, x_615.x, x_615.x)) + x_618);
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : vec3<f32> = u_xlat18;
  let x_623 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + x_622);
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat4;
  let x_629 : vec3<f32> = max(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = u_xlat6.x;
  u_xlat6.x = x_633;
  let x_636 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_636, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat0;
  u_xlat0 = min(x_639, 1.0f);
  let x_641 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_641 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_646 : f32 = u_xlat6.x;
  u_xlat26.x = (-(x_646) + 1.0f);
  let x_652 : f32 = u_xlat26.x;
  let x_654 : f32 = u_xlat26.x;
  u_xlat38 = (x_652 * x_654);
  let x_656 : f32 = u_xlat38;
  u_xlat38 = max(x_656, 0.0078125f);
  let x_660 : f32 = u_xlat38;
  let x_661 : f32 = u_xlat38;
  u_xlat39 = (x_660 * x_661);
  let x_665 : f32 = u_xlat6.x;
  u_xlat40 = (x_665 + 0.04000002145767211914f);
  let x_668 : f32 = u_xlat40;
  u_xlat40 = min(x_668, 1.0f);
  let x_671 : f32 = u_xlat38;
  u_xlat41 = ((x_671 * 4.0f) + 2.0f);
  let x_676 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_676, 1.0f);
  let x_681 : vec4<f32> = vs_INTERP3;
  let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
  let x_684 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_682.x, x_682.y, x_684);
  let x_691 : vec3<f32> = txVec1;
  let x_693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_691.xy, x_691.z);
  u_xlat18.x = x_693;
  let x_696 : f32 = u_xlat18.x;
  let x_698 : f32 = x_231.x_MainLightShadowParams.x;
  let x_700 : f32 = u_xlat37;
  u_xlat37 = ((x_696 * x_698) + x_700);
  let x_704 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_704);
  let x_708 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_708 >= 1.0f);
  let x_710 : bool = u_xlatb30;
  let x_711 : bool = u_xlatb18;
  u_xlatb18 = (x_710 | x_711);
  let x_713 : bool = u_xlatb18;
  let x_714 : f32 = u_xlat37;
  u_xlat37 = select(x_714, 1.0f, x_713);
  let x_716 : vec3<f32> = vs_INTERP8;
  let x_718 : vec3<f32> = x_123.x_WorldSpaceCameraPos;
  u_xlat18 = (x_716 + -(x_718));
  let x_721 : vec3<f32> = u_xlat18;
  let x_722 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_721, x_722);
  let x_727 : f32 = u_xlat18.x;
  let x_729 : f32 = x_231.x_MainLightShadowParams.z;
  let x_732 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat30 = ((x_727 * x_729) + x_732);
  let x_734 : f32 = u_xlat30;
  u_xlat30 = clamp(x_734, 0.0f, 1.0f);
  let x_737 : f32 = u_xlat37;
  u_xlat42 = (-(x_737) + 1.0f);
  let x_740 : f32 = u_xlat30;
  let x_741 : f32 = u_xlat42;
  let x_743 : f32 = u_xlat37;
  u_xlat37 = ((x_740 * x_741) + x_743);
  let x_745 : vec3<f32> = u_xlat12;
  let x_747 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_745), vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : f32 = u_xlat30;
  let x_751 : f32 = u_xlat30;
  u_xlat30 = (x_750 + x_751);
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : f32 = u_xlat30;
  let x_759 : vec3<f32> = u_xlat12;
  let x_761 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * -(vec3<f32>(x_755, x_755, x_755))) + -(x_759));
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat3;
  let x_766 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), x_766);
  let x_768 : f32 = u_xlat30;
  u_xlat30 = clamp(x_768, 0.0f, 1.0f);
  let x_770 : f32 = u_xlat30;
  u_xlat30 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat30;
  let x_774 : f32 = u_xlat30;
  u_xlat30 = (x_773 * x_774);
  let x_776 : f32 = u_xlat30;
  let x_777 : f32 = u_xlat30;
  u_xlat30 = (x_776 * x_777);
  let x_780 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_780) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_787 : f32 = u_xlat26.x;
  let x_788 : f32 = u_xlat42;
  u_xlat26.x = (x_787 * x_788);
  let x_792 : f32 = u_xlat26.x;
  u_xlat26.x = (x_792 * 6.0f);
  let x_804 : vec4<f32> = u_xlat7;
  let x_807 : f32 = u_xlat26.x;
  let x_808 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_804.x, x_804.y, x_804.z), x_807);
  u_xlat7 = x_808;
  let x_810 : f32 = u_xlat7.w;
  u_xlat26.x = (x_810 + -1.0f);
  let x_814 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_816 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_814 * x_816) + 1.0f);
  let x_821 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_821, 0.0f);
  let x_825 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_825);
  let x_829 : f32 = u_xlat26.x;
  let x_831 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_829 * x_831);
  let x_835 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_835);
  let x_839 : f32 = u_xlat26.x;
  let x_841 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_839 * x_841);
  let x_844 : vec4<f32> = u_xlat7;
  let x_846 : vec2<f32> = u_xlat26;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846.x, x_846.x, x_846.x));
  let x_849 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : f32 = u_xlat38;
  let x_853 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_851, x_851) * vec2<f32>(x_853, x_853)) + vec2<f32>(-1.0f, 1.0f));
  let x_859 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_859);
  let x_861 : f32 = u_xlat40;
  u_xlat40 = (x_861 + -0.03999999910593032837f);
  let x_864 : f32 = u_xlat30;
  let x_865 : f32 = u_xlat40;
  u_xlat40 = ((x_864 * x_865) + 0.03999999910593032837f);
  let x_869 : f32 = u_xlat38;
  let x_870 : f32 = u_xlat40;
  u_xlat38 = (x_869 * x_870);
  let x_872 : f32 = u_xlat38;
  let x_874 : vec4<f32> = u_xlat7;
  let x_876 : vec3<f32> = (vec3<f32>(x_872, x_872, x_872) * vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat4;
  let x_881 : vec3<f32> = u_xlat5;
  let x_883 : vec4<f32> = u_xlat7;
  let x_885 : vec3<f32> = ((vec3<f32>(x_879.x, x_879.y, x_879.z) * x_881) + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : f32 = u_xlat37;
  let x_890 : f32 = x_42.unity_LightData.z;
  u_xlat37 = (x_888 * x_890);
  let x_892 : vec4<f32> = u_xlat3;
  let x_895 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : f32 = u_xlat38;
  u_xlat38 = clamp(x_898, 0.0f, 1.0f);
  let x_900 : f32 = u_xlat37;
  let x_901 : f32 = u_xlat38;
  u_xlat37 = (x_900 * x_901);
  let x_903 : f32 = u_xlat37;
  let x_906 : vec4<f32> = x_123.x_MainLightColor;
  let x_908 : vec3<f32> = (vec3<f32>(x_903, x_903, x_903) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec3<f32> = u_xlat12;
  let x_913 : vec4<f32> = x_123.x_MainLightPosition;
  u_xlat8 = (x_911 + vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec3<f32> = u_xlat8;
  let x_917 : vec3<f32> = u_xlat8;
  u_xlat37 = dot(x_916, x_917);
  let x_919 : f32 = u_xlat37;
  u_xlat37 = max(x_919, 1.17549435e-38f);
  let x_921 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_921);
  let x_923 : f32 = u_xlat37;
  let x_925 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_923, x_923, x_923) * x_925);
  let x_927 : vec4<f32> = u_xlat3;
  let x_929 : vec3<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), x_929);
  let x_931 : f32 = u_xlat37;
  u_xlat37 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : vec4<f32> = x_123.x_MainLightPosition;
  let x_936 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), x_936);
  let x_938 : f32 = u_xlat38;
  u_xlat38 = clamp(x_938, 0.0f, 1.0f);
  let x_940 : f32 = u_xlat37;
  let x_941 : f32 = u_xlat37;
  u_xlat37 = (x_940 * x_941);
  let x_943 : f32 = u_xlat37;
  let x_945 : f32 = u_xlat26.x;
  u_xlat37 = ((x_943 * x_945) + 1.00001001358032226562f);
  let x_949 : f32 = u_xlat38;
  let x_950 : f32 = u_xlat38;
  u_xlat38 = (x_949 * x_950);
  let x_952 : f32 = u_xlat37;
  let x_953 : f32 = u_xlat37;
  u_xlat37 = (x_952 * x_953);
  let x_955 : f32 = u_xlat38;
  u_xlat38 = max(x_955, 0.10000000149011611938f);
  let x_958 : f32 = u_xlat37;
  let x_959 : f32 = u_xlat38;
  u_xlat37 = (x_958 * x_959);
  let x_961 : f32 = u_xlat41;
  let x_962 : f32 = u_xlat37;
  u_xlat37 = (x_961 * x_962);
  let x_964 : f32 = u_xlat39;
  let x_965 : f32 = u_xlat37;
  u_xlat37 = (x_964 / x_965);
  let x_967 : f32 = u_xlat37;
  let x_971 : vec3<f32> = u_xlat5;
  u_xlat8 = ((vec3<f32>(x_967, x_967, x_967) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_971);
  let x_973 : vec4<f32> = u_xlat7;
  let x_975 : vec3<f32> = u_xlat8;
  let x_976 : vec3<f32> = (vec3<f32>(x_973.x, x_973.y, x_973.z) * x_975);
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_981 : f32 = x_123.x_AdditionalLightsCount.x;
  let x_983 : f32 = x_42.unity_LightData.y;
  u_xlat37 = min(x_981, x_983);
  let x_987 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_987));
  let x_991 : f32 = u_xlat18.x;
  let x_994 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_997 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_991 * x_994) + x_997);
  let x_999 : f32 = u_xlat38;
  u_xlat38 = clamp(x_999, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1011 : u32 = u_xlatu_loop_1;
    let x_1012 : u32 = u_xlatu37;
    if ((x_1011 < x_1012)) {
    } else {
      break;
    }
    let x_1015 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1015 >> 2u);
    let x_1019 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1019 & 3u));
    let x_1023 : u32 = u_xlatu43;
    let x_1026 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_1023)];
    let x_1036 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1041 : vec4<u32> = indexable[x_1036];
    u_xlat43 = dot(x_1026, bitcast<vec4<f32>>(x_1041));
    let x_1045 : f32 = u_xlat43;
    u_xlati43 = i32(x_1045);
    let x_1047 : vec3<f32> = vs_INTERP8;
    let x_1058 : i32 = u_xlati43;
    let x_1060 : vec4<f32> = x_1057.x_AdditionalLightsPosition[x_1058];
    let x_1063 : i32 = u_xlati43;
    let x_1065 : vec4<f32> = x_1057.x_AdditionalLightsPosition[x_1063];
    u_xlat8 = ((-(x_1047) * vec3<f32>(x_1060.w, x_1060.w, x_1060.w)) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1069 : vec3<f32> = u_xlat8;
    let x_1070 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_1069, x_1070);
    let x_1072 : f32 = u_xlat44;
    u_xlat44 = max(x_1072, 0.00006103515625f);
    let x_1076 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_1076);
    let x_1079 : vec3<f32> = u_xlat8;
    let x_1080 : f32 = u_xlat9;
    u_xlat21 = (x_1079 * vec3<f32>(x_1080, x_1080, x_1080));
    let x_1084 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1084);
    let x_1087 : f32 = u_xlat44;
    let x_1088 : i32 = u_xlati43;
    let x_1090 : f32 = x_1057.x_AdditionalLightsAttenuation[x_1088].x;
    u_xlat44 = (x_1087 * x_1090);
    let x_1092 : f32 = u_xlat44;
    let x_1094 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1092) * x_1094) + 1.0f);
    let x_1097 : f32 = u_xlat44;
    u_xlat44 = max(x_1097, 0.0f);
    let x_1099 : f32 = u_xlat44;
    let x_1100 : f32 = u_xlat44;
    u_xlat44 = (x_1099 * x_1100);
    let x_1102 : f32 = u_xlat44;
    let x_1104 : f32 = u_xlat10.x;
    u_xlat44 = (x_1102 * x_1104);
    let x_1106 : i32 = u_xlati43;
    let x_1108 : vec4<f32> = x_1057.x_AdditionalLightsSpotDir[x_1106];
    let x_1110 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1108.x, x_1108.y, x_1108.z), x_1110);
    let x_1114 : f32 = u_xlat10.x;
    let x_1115 : i32 = u_xlati43;
    let x_1117 : f32 = x_1057.x_AdditionalLightsAttenuation[x_1115].z;
    let x_1119 : i32 = u_xlati43;
    let x_1121 : f32 = x_1057.x_AdditionalLightsAttenuation[x_1119].w;
    u_xlat10.x = ((x_1114 * x_1117) + x_1121);
    let x_1125 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1125, 0.0f, 1.0f);
    let x_1129 : f32 = u_xlat10.x;
    let x_1131 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1129 * x_1131);
    let x_1134 : f32 = u_xlat44;
    let x_1136 : f32 = u_xlat10.x;
    u_xlat44 = (x_1134 * x_1136);
    let x_1140 : i32 = u_xlati43;
    let x_1142 : f32 = x_231.x_AdditionalShadowParams[x_1140].w;
    u_xlati10 = i32(x_1142);
    let x_1147 : i32 = u_xlati10;
    u_xlatb22.x = (x_1147 >= 0i);
    let x_1151 : bool = u_xlatb22.x;
    if (x_1151) {
      let x_1155 : i32 = u_xlati43;
      let x_1157 : f32 = x_231.x_AdditionalShadowParams[x_1155].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1157, x_1157, x_1157, x_1157))));
      let x_1164 : bool = u_xlatb22.x;
      if (x_1164) {
        let x_1167 : vec3<f32> = u_xlat21;
        let x_1170 : vec3<f32> = u_xlat21;
        let x_1173 : vec4<bool> = (abs(vec4<f32>(x_1167.z, x_1167.z, x_1167.y, x_1167.y)) >= abs(vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.x)));
        u_xlatb22 = vec3<bool>(x_1173.x, x_1173.y, x_1173.z);
        let x_1176 : bool = u_xlatb22.y;
        let x_1178 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1176 & x_1178);
        let x_1182 : vec3<f32> = u_xlat21;
        let x_1185 : vec4<bool> = (-(vec4<f32>(x_1182.z, x_1182.y, x_1182.x, x_1182.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1185.x, x_1185.y, x_1185.z);
        let x_1189 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1189);
        let x_1194 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1194);
        let x_1200 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1200);
        let x_1203 : bool = u_xlatb22.z;
        if (x_1203) {
          let x_1208 : f32 = u_xlat11.y;
          x_1204 = x_1208;
        } else {
          let x_1210 : f32 = u_xlat34;
          x_1204 = x_1210;
        }
        let x_1211 : f32 = x_1204;
        u_xlat34 = x_1211;
        let x_1214 : bool = u_xlatb22.x;
        if (x_1214) {
          let x_1219 : f32 = u_xlat11.x;
          x_1215 = x_1219;
        } else {
          let x_1221 : f32 = u_xlat34;
          x_1215 = x_1221;
        }
        let x_1222 : f32 = x_1215;
        u_xlat22 = x_1222;
        let x_1223 : i32 = u_xlati43;
        let x_1225 : f32 = x_231.x_AdditionalShadowParams[x_1223].w;
        u_xlat34 = trunc(x_1225);
        let x_1227 : f32 = u_xlat22;
        let x_1228 : f32 = u_xlat34;
        u_xlat22 = (x_1227 + x_1228);
        let x_1230 : f32 = u_xlat22;
        u_xlati10 = i32(x_1230);
      }
      let x_1232 : i32 = u_xlati10;
      u_xlati10 = (x_1232 << bitcast<u32>(2i));
      let x_1234 : vec3<f32> = vs_INTERP8;
      let x_1237 : i32 = u_xlati10;
      let x_1240 : i32 = u_xlati10;
      let x_1244 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1237 + 1i) / 4i)][((x_1240 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1234.y, x_1234.y, x_1234.y, x_1234.y) * x_1244);
      let x_1246 : i32 = u_xlati10;
      let x_1248 : i32 = u_xlati10;
      let x_1251 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_1246 / 4i)][(x_1248 % 4i)];
      let x_1252 : vec3<f32> = vs_INTERP8;
      let x_1255 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1251 * vec4<f32>(x_1252.x, x_1252.x, x_1252.x, x_1252.x)) + x_1255);
      let x_1257 : i32 = u_xlati10;
      let x_1260 : i32 = u_xlati10;
      let x_1264 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1257 + 2i) / 4i)][((x_1260 + 2i) % 4i)];
      let x_1265 : vec3<f32> = vs_INTERP8;
      let x_1268 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1264 * vec4<f32>(x_1265.z, x_1265.z, x_1265.z, x_1265.z)) + x_1268);
      let x_1270 : vec4<f32> = u_xlat11;
      let x_1271 : i32 = u_xlati10;
      let x_1274 : i32 = u_xlati10;
      let x_1278 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_1271 + 3i) / 4i)][((x_1274 + 3i) % 4i)];
      u_xlat10 = (x_1270 + x_1278);
      let x_1280 : vec4<f32> = u_xlat10;
      let x_1282 : vec4<f32> = u_xlat10;
      let x_1284 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) / vec3<f32>(x_1282.w, x_1282.w, x_1282.w));
      let x_1285 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
      let x_1288 : vec4<f32> = u_xlat10;
      let x_1289 : vec2<f32> = vec2<f32>(x_1288.x, x_1288.y);
      let x_1291 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
      let x_1299 : vec3<f32> = txVec2;
      let x_1301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
      u_xlat10.x = x_1301;
      let x_1303 : i32 = u_xlati43;
      let x_1305 : f32 = x_231.x_AdditionalShadowParams[x_1303].x;
      u_xlat22 = (1.0f + -(x_1305));
      let x_1309 : f32 = u_xlat10.x;
      let x_1310 : i32 = u_xlati43;
      let x_1312 : f32 = x_231.x_AdditionalShadowParams[x_1310].x;
      let x_1314 : f32 = u_xlat22;
      u_xlat10.x = ((x_1309 * x_1312) + x_1314);
      let x_1318 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1318);
      let x_1323 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1323 >= 1.0f);
      let x_1325 : bool = u_xlatb34;
      let x_1327 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1325 | x_1327);
      let x_1331 : bool = u_xlatb22.x;
      if (x_1331) {
        x_1332 = 1.0f;
      } else {
        let x_1337 : f32 = u_xlat10.x;
        x_1332 = x_1337;
      }
      let x_1338 : f32 = x_1332;
      u_xlat10.x = x_1338;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1343 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1343) + 1.0f);
    let x_1346 : f32 = u_xlat38;
    let x_1347 : f32 = u_xlat22;
    let x_1350 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1346 * x_1347) + x_1350);
    let x_1353 : f32 = u_xlat44;
    let x_1355 : f32 = u_xlat10.x;
    u_xlat44 = (x_1353 * x_1355);
    let x_1357 : vec4<f32> = u_xlat3;
    let x_1359 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1357.x, x_1357.y, x_1357.z), x_1359);
    let x_1363 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1363, 0.0f, 1.0f);
    let x_1366 : f32 = u_xlat44;
    let x_1368 : f32 = u_xlat10.x;
    u_xlat44 = (x_1366 * x_1368);
    let x_1370 : f32 = u_xlat44;
    let x_1372 : i32 = u_xlati43;
    let x_1374 : vec4<f32> = x_1057.x_AdditionalLightsColor[x_1372];
    let x_1376 : vec3<f32> = (vec3<f32>(x_1370, x_1370, x_1370) * vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
    let x_1377 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
    let x_1379 : vec3<f32> = u_xlat8;
    let x_1380 : f32 = u_xlat9;
    let x_1383 : vec3<f32> = u_xlat12;
    u_xlat8 = ((x_1379 * vec3<f32>(x_1380, x_1380, x_1380)) + x_1383);
    let x_1385 : vec3<f32> = u_xlat8;
    let x_1386 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1385, x_1386);
    let x_1388 : f32 = u_xlat43;
    u_xlat43 = max(x_1388, 1.17549435e-38f);
    let x_1390 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1390);
    let x_1392 : f32 = u_xlat43;
    let x_1394 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1392, x_1392, x_1392) * x_1394);
    let x_1396 : vec4<f32> = u_xlat3;
    let x_1398 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1396.x, x_1396.y, x_1396.z), x_1398);
    let x_1400 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1400, 0.0f, 1.0f);
    let x_1402 : vec3<f32> = u_xlat21;
    let x_1403 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1402, x_1403);
    let x_1407 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1407, 0.0f, 1.0f);
    let x_1410 : f32 = u_xlat43;
    let x_1411 : f32 = u_xlat43;
    u_xlat43 = (x_1410 * x_1411);
    let x_1413 : f32 = u_xlat43;
    let x_1415 : f32 = u_xlat26.x;
    u_xlat43 = ((x_1413 * x_1415) + 1.00001001358032226562f);
    let x_1419 : f32 = u_xlat8.x;
    let x_1421 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1419 * x_1421);
    let x_1424 : f32 = u_xlat43;
    let x_1425 : f32 = u_xlat43;
    u_xlat43 = (x_1424 * x_1425);
    let x_1428 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1428, 0.10000000149011611938f);
    let x_1431 : f32 = u_xlat43;
    let x_1433 : f32 = u_xlat8.x;
    u_xlat43 = (x_1431 * x_1433);
    let x_1435 : f32 = u_xlat41;
    let x_1436 : f32 = u_xlat43;
    u_xlat43 = (x_1435 * x_1436);
    let x_1438 : f32 = u_xlat39;
    let x_1439 : f32 = u_xlat43;
    u_xlat43 = (x_1438 / x_1439);
    let x_1441 : f32 = u_xlat43;
    let x_1444 : vec3<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1441, x_1441, x_1441) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1444);
    let x_1446 : vec3<f32> = u_xlat8;
    let x_1447 : vec4<f32> = u_xlat10;
    let x_1450 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1446 * vec3<f32>(x_1447.x, x_1447.y, x_1447.z)) + x_1450);

    continuing {
      let x_1452 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1452 + bitcast<u32>(1i));
    }
  }
  let x_1454 : vec4<f32> = u_xlat4;
  let x_1456 : vec4<f32> = u_xlat6;
  let x_1459 : vec4<f32> = u_xlat7;
  u_xlat12 = ((vec3<f32>(x_1454.x, x_1454.y, x_1454.z) * vec3<f32>(x_1456.x, x_1456.x, x_1456.x)) + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec3<f32> = u_xlat18;
  let x_1463 : vec3<f32> = u_xlat12;
  u_xlat12 = (x_1462 + x_1463);
  let x_1465 : vec4<f32> = vs_INTERP6;
  let x_1467 : vec3<f32> = u_xlat1;
  let x_1469 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_1465.w, x_1465.w, x_1465.w) * x_1467) + x_1469);
  let x_1472 : f32 = u_xlat2.x;
  let x_1474 : f32 = u_xlat2.x;
  u_xlat1.x = (x_1472 * -(x_1474));
  let x_1479 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1479);
  let x_1482 : vec3<f32> = u_xlat12;
  let x_1485 : vec4<f32> = x_123.unity_FogColor;
  u_xlat12 = (x_1482 + -(vec3<f32>(x_1485.x, x_1485.y, x_1485.z)));
  let x_1491 : vec3<f32> = u_xlat1;
  let x_1493 : vec3<f32> = u_xlat12;
  let x_1496 : vec4<f32> = x_123.unity_FogColor;
  let x_1498 : vec3<f32> = ((vec3<f32>(x_1491.x, x_1491.x, x_1491.x) * x_1493) + vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1499 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : bool = u_xlatb14;
  let x_1502 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1502, x_1501);
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


