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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(3) var<uniform> x_307 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_441 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_677 : AdditionalLights;

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

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_99 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_334 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_824 : f32;
  var x_835 : f32;
  var txVec1 : vec3<f32>;
  var x_952 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_57 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_64) + x_69);
  let x_72 : vec3<f32> = u_xlat2;
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_72, x_73);
  let x_75 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_75);
  let x_77 : f32 = u_xlat25;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_85 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_85;
  let x_89 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_89;
  let x_94 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_94;
  let x_97 : bool = u_xlatb13;
  if (x_97) {
    let x_102 : vec3<f32> = u_xlat2;
    x_99 = x_102;
  } else {
    let x_104 : vec4<f32> = u_xlat3;
    x_99 = vec3<f32>(x_104.x, x_104.y, x_104.z);
  }
  let x_106 : vec3<f32> = x_99;
  u_xlat13 = x_106;
  let x_108 : vec3<f32> = vs_TEXCOORD3;
  let x_109 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_108, x_109);
  let x_113 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_113);
  let x_116 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * x_118);
  let x_123 : f32 = vs_TEXCOORD7.y;
  let x_125 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat38 = (x_123 * x_125);
  let x_128 : f32 = x_29.unity_MatrixV[0i].z;
  let x_130 : f32 = vs_TEXCOORD7.x;
  let x_132 : f32 = u_xlat38;
  u_xlat38 = ((x_128 * x_130) + x_132);
  let x_135 : f32 = x_29.unity_MatrixV[2i].z;
  let x_137 : f32 = vs_TEXCOORD7.z;
  let x_139 : f32 = u_xlat38;
  u_xlat38 = ((x_135 * x_137) + x_139);
  let x_141 : f32 = u_xlat38;
  let x_144 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat38 = (x_141 + x_144);
  let x_146 : f32 = u_xlat38;
  let x_150 : f32 = x_29.x_ProjectionParams.y;
  u_xlat38 = (-(x_146) + -(x_150));
  let x_153 : f32 = u_xlat38;
  u_xlat38 = max(x_153, 0.0f);
  let x_155 : f32 = u_xlat38;
  let x_158 : f32 = x_29.unity_FogParams.x;
  u_xlat38 = (x_155 * x_158);
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_29.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat3 = x_169;
  let x_175 : vec4<f32> = vs_TEXCOORD0;
  let x_178 : f32 = x_29.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat4 = vec3<f32>(x_179.x, x_179.y, x_179.z);
  let x_181 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_188, vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : f32 = u_xlat3.x;
  u_xlat3.x = (x_194 + 0.5f);
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * x_200);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_206 : f32 = u_xlat3.w;
  u_xlat39 = max(x_206, 0.00009999999747378752f);
  let x_209 : vec4<f32> = u_xlat3;
  let x_211 : f32 = u_xlat39;
  let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) / vec3<f32>(x_211, x_211, x_211));
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : f32 = u_xlat1;
  u_xlat39 = ((-(x_216) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_221 : f32 = u_xlat39;
  u_xlat4.x = (-(x_221) + 1.0f);
  let x_227 : vec4<f32> = u_xlat0;
  let x_229 : f32 = u_xlat39;
  u_xlat16 = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229, x_229, x_229));
  let x_232 : vec4<f32> = u_xlat0;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : f32 = u_xlat1;
  let x_241 : vec4<f32> = u_xlat0;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_250) + 1.0f);
  let x_253 : f32 = u_xlat1;
  let x_254 : f32 = u_xlat1;
  u_xlat39 = (x_253 * x_254);
  let x_256 : f32 = u_xlat39;
  u_xlat39 = max(x_256, 0.0078125f);
  let x_260 : f32 = u_xlat39;
  let x_261 : f32 = u_xlat39;
  u_xlat5 = (x_260 * x_261);
  let x_265 : f32 = u_xlat0.w;
  let x_267 : f32 = u_xlat4.x;
  u_xlat36 = (x_265 + x_267);
  let x_269 : f32 = u_xlat36;
  u_xlat36 = clamp(x_269, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat39;
  u_xlat4.x = ((x_271 * 4.0f) + 2.0f);
  let x_279 : vec4<f32> = vs_TEXCOORD8;
  let x_280 : vec2<f32> = vec2<f32>(x_279.x, x_279.y);
  let x_282 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_280.x, x_280.y, x_282);
  let x_295 : vec3<f32> = txVec0;
  let x_297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_295.xy, x_295.z);
  u_xlat17.x = x_297;
  let x_310 : f32 = x_307.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_310) + 1.0f);
  let x_314 : f32 = u_xlat17.x;
  let x_316 : f32 = x_307.x_MainLightShadowParams.x;
  let x_318 : f32 = u_xlat29;
  u_xlat17.x = ((x_314 * x_316) + x_318);
  let x_323 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (0.0f >= x_323);
  let x_327 : f32 = vs_TEXCOORD8.z;
  u_xlatb41 = (x_327 >= 1.0f);
  let x_329 : bool = u_xlatb41;
  let x_330 : bool = u_xlatb29;
  u_xlatb29 = (x_329 | x_330);
  let x_332 : bool = u_xlatb29;
  if (x_332) {
    x_334 = 1.0f;
  } else {
    let x_339 : f32 = u_xlat17.x;
    x_334 = x_339;
  }
  let x_340 : f32 = x_334;
  u_xlat17.x = x_340;
  let x_343 : vec3<f32> = vs_TEXCOORD7;
  let x_345 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_347 : vec3<f32> = (x_343 + -(x_345));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_356 : f32 = u_xlat29;
  let x_358 : f32 = x_307.x_MainLightShadowParams.z;
  let x_361 : f32 = x_307.x_MainLightShadowParams.w;
  u_xlat41 = ((x_356 * x_358) + x_361);
  let x_363 : f32 = u_xlat41;
  u_xlat41 = clamp(x_363, 0.0f, 1.0f);
  let x_366 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_366) + 1.0f);
  let x_370 : f32 = u_xlat41;
  let x_372 : f32 = u_xlat6.x;
  let x_375 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_370 * x_372) + x_375);
  let x_378 : vec3<f32> = u_xlat13;
  let x_380 : vec3<f32> = u_xlat2;
  u_xlat41 = dot(-(x_378), x_380);
  let x_382 : f32 = u_xlat41;
  let x_383 : f32 = u_xlat41;
  u_xlat41 = (x_382 + x_383);
  let x_385 : vec3<f32> = u_xlat2;
  let x_386 : f32 = u_xlat41;
  let x_390 : vec3<f32> = u_xlat13;
  let x_392 : vec3<f32> = ((x_385 * -(vec3<f32>(x_386, x_386, x_386))) + -(x_390));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec3<f32> = u_xlat2;
  let x_396 : vec3<f32> = u_xlat13;
  u_xlat41 = dot(x_395, x_396);
  let x_398 : f32 = u_xlat41;
  u_xlat41 = clamp(x_398, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat41;
  u_xlat41 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat41;
  let x_404 : f32 = u_xlat41;
  u_xlat41 = (x_403 * x_404);
  let x_406 : f32 = u_xlat41;
  let x_407 : f32 = u_xlat41;
  u_xlat41 = (x_406 * x_407);
  let x_410 : f32 = u_xlat1;
  u_xlat42 = ((-(x_410) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_416 : f32 = u_xlat1;
  let x_417 : f32 = u_xlat42;
  u_xlat1 = (x_416 * x_417);
  let x_419 : f32 = u_xlat1;
  u_xlat1 = (x_419 * 6.0f);
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : f32 = u_xlat1;
  let x_433 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_430.x, x_430.y, x_430.z), x_432);
  u_xlat6 = x_433;
  let x_435 : f32 = u_xlat6.w;
  u_xlat1 = (x_435 + -1.0f);
  let x_443 : f32 = x_441.unity_SpecCube0_HDR.w;
  let x_444 : f32 = u_xlat1;
  u_xlat1 = ((x_443 * x_444) + 1.0f);
  let x_447 : f32 = u_xlat1;
  u_xlat1 = max(x_447, 0.0f);
  let x_449 : f32 = u_xlat1;
  u_xlat1 = log2(x_449);
  let x_451 : f32 = u_xlat1;
  let x_453 : f32 = x_441.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_451 * x_453);
  let x_455 : f32 = u_xlat1;
  u_xlat1 = exp2(x_455);
  let x_457 : f32 = u_xlat1;
  let x_459 : f32 = x_441.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_457 * x_459);
  let x_461 : vec4<f32> = u_xlat6;
  let x_463 : f32 = u_xlat1;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463, x_463, x_463));
  let x_466 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_470 : f32 = u_xlat39;
  let x_472 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_470, x_470) * vec2<f32>(x_472, x_472)) + vec2<f32>(-1.0f, 1.0f));
  let x_478 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_478);
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_481.x, x_481.y, x_481.z)) + vec3<f32>(x_484, x_484, x_484));
  let x_487 : f32 = u_xlat41;
  let x_489 : vec3<f32> = u_xlat19;
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_487, x_487, x_487) * x_489) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : f32 = u_xlat1;
  let x_496 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_494, x_494, x_494) * x_496);
  let x_498 : vec4<f32> = u_xlat6;
  let x_500 : vec3<f32> = u_xlat19;
  let x_501 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * x_500);
  let x_502 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat3;
  let x_506 : vec3<f32> = u_xlat16;
  let x_508 : vec4<f32> = u_xlat6;
  let x_510 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * x_506) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_514 : f32 = u_xlat17.x;
  let x_516 : f32 = x_441.unity_LightData.z;
  u_xlat36 = (x_514 * x_516);
  let x_518 : vec3<f32> = u_xlat2;
  let x_521 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_518, vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : f32 = u_xlat1;
  u_xlat1 = clamp(x_524, 0.0f, 1.0f);
  let x_526 : f32 = u_xlat36;
  let x_527 : f32 = u_xlat1;
  u_xlat36 = (x_526 * x_527);
  let x_529 : f32 = u_xlat36;
  let x_532 : vec4<f32> = x_29.x_MainLightColor;
  let x_534 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat13;
  let x_539 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_537 + vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec3<f32> = u_xlat19;
  let x_543 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_542, x_543);
  let x_545 : f32 = u_xlat36;
  u_xlat36 = max(x_545, 1.17549435e-38f);
  let x_548 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_548);
  let x_550 : f32 = u_xlat36;
  let x_552 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_550, x_550, x_550) * x_552);
  let x_554 : vec3<f32> = u_xlat2;
  let x_555 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_554, x_555);
  let x_557 : f32 = u_xlat36;
  u_xlat36 = clamp(x_557, 0.0f, 1.0f);
  let x_560 : vec4<f32> = x_29.x_MainLightPosition;
  let x_562 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), x_562);
  let x_564 : f32 = u_xlat1;
  u_xlat1 = clamp(x_564, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat36;
  let x_567 : f32 = u_xlat36;
  u_xlat36 = (x_566 * x_567);
  let x_569 : f32 = u_xlat36;
  let x_571 : f32 = u_xlat7.x;
  u_xlat36 = ((x_569 * x_571) + 1.00001001358032226562f);
  let x_575 : f32 = u_xlat1;
  let x_576 : f32 = u_xlat1;
  u_xlat1 = (x_575 * x_576);
  let x_578 : f32 = u_xlat36;
  let x_579 : f32 = u_xlat36;
  u_xlat36 = (x_578 * x_579);
  let x_581 : f32 = u_xlat1;
  u_xlat1 = max(x_581, 0.10000000149011611938f);
  let x_584 : f32 = u_xlat36;
  let x_585 : f32 = u_xlat1;
  u_xlat36 = (x_584 * x_585);
  let x_588 : f32 = u_xlat4.x;
  let x_589 : f32 = u_xlat36;
  u_xlat36 = (x_588 * x_589);
  let x_591 : f32 = u_xlat5;
  let x_592 : f32 = u_xlat36;
  u_xlat36 = (x_591 / x_592);
  let x_594 : vec4<f32> = u_xlat0;
  let x_596 : f32 = u_xlat36;
  let x_599 : vec3<f32> = u_xlat16;
  u_xlat19 = ((vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596)) + x_599);
  let x_602 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_604 : f32 = x_441.unity_LightData.y;
  u_xlat36 = min(x_602, x_604);
  let x_608 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_608));
  let x_611 : f32 = u_xlat29;
  let x_614 : f32 = x_307.x_AdditionalShadowFadeParams.x;
  let x_617 : f32 = x_307.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_611 * x_614) + x_617);
  let x_619 : f32 = u_xlat1;
  u_xlat1 = clamp(x_619, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_631 : u32 = u_xlatu_loop_1;
    let x_632 : u32 = u_xlatu36;
    if ((x_631 < x_632)) {
    } else {
      break;
    }
    let x_635 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_635 >> 2u);
    let x_639 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_639 & 3u));
    let x_642 : u32 = u_xlatu42;
    let x_645 : vec4<f32> = x_441.unity_LightIndices[bitcast<i32>(x_642)];
    let x_655 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_660 : vec4<u32> = indexable[x_655];
    u_xlat42 = dot(x_645, bitcast<vec4<f32>>(x_660));
    let x_664 : f32 = u_xlat42;
    u_xlati42 = i32(x_664);
    let x_667 : vec3<f32> = vs_TEXCOORD7;
    let x_678 : i32 = u_xlati42;
    let x_680 : vec4<f32> = x_677.x_AdditionalLightsPosition[x_678];
    let x_683 : i32 = u_xlati42;
    let x_685 : vec4<f32> = x_677.x_AdditionalLightsPosition[x_683];
    u_xlat8 = ((-(x_667) * vec3<f32>(x_680.w, x_680.w, x_680.w)) + vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_689 : vec3<f32> = u_xlat8;
    let x_690 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_689, x_690);
    let x_692 : f32 = u_xlat44;
    u_xlat44 = max(x_692, 0.00006103515625f);
    let x_696 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_696);
    let x_699 : vec3<f32> = u_xlat8;
    let x_700 : f32 = u_xlat9;
    u_xlat21 = (x_699 * vec3<f32>(x_700, x_700, x_700));
    let x_704 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_704);
    let x_707 : f32 = u_xlat44;
    let x_708 : i32 = u_xlati42;
    let x_710 : f32 = x_677.x_AdditionalLightsAttenuation[x_708].x;
    u_xlat44 = (x_707 * x_710);
    let x_712 : f32 = u_xlat44;
    let x_714 : f32 = u_xlat44;
    u_xlat44 = ((-(x_712) * x_714) + 1.0f);
    let x_717 : f32 = u_xlat44;
    u_xlat44 = max(x_717, 0.0f);
    let x_719 : f32 = u_xlat44;
    let x_720 : f32 = u_xlat44;
    u_xlat44 = (x_719 * x_720);
    let x_722 : f32 = u_xlat44;
    let x_724 : f32 = u_xlat10.x;
    u_xlat44 = (x_722 * x_724);
    let x_726 : i32 = u_xlati42;
    let x_728 : vec4<f32> = x_677.x_AdditionalLightsSpotDir[x_726];
    let x_730 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
    let x_734 : f32 = u_xlat10.x;
    let x_735 : i32 = u_xlati42;
    let x_737 : f32 = x_677.x_AdditionalLightsAttenuation[x_735].z;
    let x_739 : i32 = u_xlati42;
    let x_741 : f32 = x_677.x_AdditionalLightsAttenuation[x_739].w;
    u_xlat10.x = ((x_734 * x_737) + x_741);
    let x_745 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_745, 0.0f, 1.0f);
    let x_749 : f32 = u_xlat10.x;
    let x_751 : f32 = u_xlat10.x;
    u_xlat10.x = (x_749 * x_751);
    let x_754 : f32 = u_xlat44;
    let x_756 : f32 = u_xlat10.x;
    u_xlat44 = (x_754 * x_756);
    let x_760 : i32 = u_xlati42;
    let x_762 : f32 = x_307.x_AdditionalShadowParams[x_760].w;
    u_xlati10 = i32(x_762);
    let x_767 : i32 = u_xlati10;
    u_xlatb22.x = (x_767 >= 0i);
    let x_771 : bool = u_xlatb22.x;
    if (x_771) {
      let x_775 : i32 = u_xlati42;
      let x_777 : f32 = x_307.x_AdditionalShadowParams[x_775].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_777, x_777, x_777, x_777))));
      let x_784 : bool = u_xlatb22.x;
      if (x_784) {
        let x_787 : vec3<f32> = u_xlat21;
        let x_790 : vec3<f32> = u_xlat21;
        let x_793 : vec4<bool> = (abs(vec4<f32>(x_787.z, x_787.z, x_787.y, x_787.y)) >= abs(vec4<f32>(x_790.x, x_790.y, x_790.x, x_790.x)));
        u_xlatb22 = vec3<bool>(x_793.x, x_793.y, x_793.z);
        let x_796 : bool = u_xlatb22.y;
        let x_798 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_796 & x_798);
        let x_802 : vec3<f32> = u_xlat21;
        let x_805 : vec4<bool> = (-(vec4<f32>(x_802.z, x_802.y, x_802.x, x_802.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_805.x, x_805.y, x_805.z);
        let x_809 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_809);
        let x_814 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_814);
        let x_820 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_820);
        let x_823 : bool = u_xlatb22.z;
        if (x_823) {
          let x_828 : f32 = u_xlat11.y;
          x_824 = x_828;
        } else {
          let x_830 : f32 = u_xlat34;
          x_824 = x_830;
        }
        let x_831 : f32 = x_824;
        u_xlat34 = x_831;
        let x_834 : bool = u_xlatb22.x;
        if (x_834) {
          let x_839 : f32 = u_xlat11.x;
          x_835 = x_839;
        } else {
          let x_841 : f32 = u_xlat34;
          x_835 = x_841;
        }
        let x_842 : f32 = x_835;
        u_xlat22 = x_842;
        let x_843 : i32 = u_xlati42;
        let x_845 : f32 = x_307.x_AdditionalShadowParams[x_843].w;
        u_xlat34 = trunc(x_845);
        let x_847 : f32 = u_xlat22;
        let x_848 : f32 = u_xlat34;
        u_xlat22 = (x_847 + x_848);
        let x_850 : f32 = u_xlat22;
        u_xlati10 = i32(x_850);
      }
      let x_852 : i32 = u_xlati10;
      u_xlati10 = (x_852 << bitcast<u32>(2i));
      let x_854 : vec3<f32> = vs_TEXCOORD7;
      let x_857 : i32 = u_xlati10;
      let x_860 : i32 = u_xlati10;
      let x_864 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_857 + 1i) / 4i)][((x_860 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_854.y, x_854.y, x_854.y, x_854.y) * x_864);
      let x_866 : i32 = u_xlati10;
      let x_868 : i32 = u_xlati10;
      let x_871 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[(x_866 / 4i)][(x_868 % 4i)];
      let x_872 : vec3<f32> = vs_TEXCOORD7;
      let x_875 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_871 * vec4<f32>(x_872.x, x_872.x, x_872.x, x_872.x)) + x_875);
      let x_877 : i32 = u_xlati10;
      let x_880 : i32 = u_xlati10;
      let x_884 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_877 + 2i) / 4i)][((x_880 + 2i) % 4i)];
      let x_885 : vec3<f32> = vs_TEXCOORD7;
      let x_888 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_884 * vec4<f32>(x_885.z, x_885.z, x_885.z, x_885.z)) + x_888);
      let x_890 : vec4<f32> = u_xlat11;
      let x_891 : i32 = u_xlati10;
      let x_894 : i32 = u_xlati10;
      let x_898 : vec4<f32> = x_307.x_AdditionalLightsWorldToShadow[((x_891 + 3i) / 4i)][((x_894 + 3i) % 4i)];
      u_xlat10 = (x_890 + x_898);
      let x_900 : vec4<f32> = u_xlat10;
      let x_902 : vec4<f32> = u_xlat10;
      let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) / vec3<f32>(x_902.w, x_902.w, x_902.w));
      let x_905 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
      let x_908 : vec4<f32> = u_xlat10;
      let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
      let x_911 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_909.x, x_909.y, x_911);
      let x_919 : vec3<f32> = txVec1;
      let x_921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
      u_xlat10.x = x_921;
      let x_923 : i32 = u_xlati42;
      let x_925 : f32 = x_307.x_AdditionalShadowParams[x_923].x;
      u_xlat22 = (1.0f + -(x_925));
      let x_929 : f32 = u_xlat10.x;
      let x_930 : i32 = u_xlati42;
      let x_932 : f32 = x_307.x_AdditionalShadowParams[x_930].x;
      let x_934 : f32 = u_xlat22;
      u_xlat10.x = ((x_929 * x_932) + x_934);
      let x_938 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_938);
      let x_943 : f32 = u_xlat10.z;
      u_xlatb34 = (x_943 >= 1.0f);
      let x_945 : bool = u_xlatb34;
      let x_947 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_945 | x_947);
      let x_951 : bool = u_xlatb22.x;
      if (x_951) {
        x_952 = 1.0f;
      } else {
        let x_957 : f32 = u_xlat10.x;
        x_952 = x_957;
      }
      let x_958 : f32 = x_952;
      u_xlat10.x = x_958;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_963 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_963) + 1.0f);
    let x_966 : f32 = u_xlat1;
    let x_967 : f32 = u_xlat22;
    let x_970 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_966 * x_967) + x_970);
    let x_973 : f32 = u_xlat44;
    let x_975 : f32 = u_xlat10.x;
    u_xlat44 = (x_973 * x_975);
    let x_977 : vec3<f32> = u_xlat2;
    let x_978 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_977, x_978);
    let x_982 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_982, 0.0f, 1.0f);
    let x_985 : f32 = u_xlat44;
    let x_987 : f32 = u_xlat10.x;
    u_xlat44 = (x_985 * x_987);
    let x_989 : f32 = u_xlat44;
    let x_991 : i32 = u_xlati42;
    let x_993 : vec4<f32> = x_677.x_AdditionalLightsColor[x_991];
    let x_995 : vec3<f32> = (vec3<f32>(x_989, x_989, x_989) * vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_996 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
    let x_998 : vec3<f32> = u_xlat8;
    let x_999 : f32 = u_xlat9;
    let x_1002 : vec3<f32> = u_xlat13;
    u_xlat8 = ((x_998 * vec3<f32>(x_999, x_999, x_999)) + x_1002);
    let x_1004 : vec3<f32> = u_xlat8;
    let x_1005 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1004, x_1005);
    let x_1007 : f32 = u_xlat42;
    u_xlat42 = max(x_1007, 1.17549435e-38f);
    let x_1009 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1009);
    let x_1011 : f32 = u_xlat42;
    let x_1013 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1011, x_1011, x_1011) * x_1013);
    let x_1015 : vec3<f32> = u_xlat2;
    let x_1016 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1015, x_1016);
    let x_1018 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1018, 0.0f, 1.0f);
    let x_1020 : vec3<f32> = u_xlat21;
    let x_1021 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1020, x_1021);
    let x_1025 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1025, 0.0f, 1.0f);
    let x_1028 : f32 = u_xlat42;
    let x_1029 : f32 = u_xlat42;
    u_xlat42 = (x_1028 * x_1029);
    let x_1031 : f32 = u_xlat42;
    let x_1033 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1031 * x_1033) + 1.00001001358032226562f);
    let x_1037 : f32 = u_xlat8.x;
    let x_1039 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1037 * x_1039);
    let x_1042 : f32 = u_xlat42;
    let x_1043 : f32 = u_xlat42;
    u_xlat42 = (x_1042 * x_1043);
    let x_1046 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1046, 0.10000000149011611938f);
    let x_1049 : f32 = u_xlat42;
    let x_1051 : f32 = u_xlat8.x;
    u_xlat42 = (x_1049 * x_1051);
    let x_1054 : f32 = u_xlat4.x;
    let x_1055 : f32 = u_xlat42;
    u_xlat42 = (x_1054 * x_1055);
    let x_1057 : f32 = u_xlat5;
    let x_1058 : f32 = u_xlat42;
    u_xlat42 = (x_1057 / x_1058);
    let x_1060 : vec4<f32> = u_xlat0;
    let x_1062 : f32 = u_xlat42;
    let x_1065 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(x_1062, x_1062, x_1062)) + x_1065);
    let x_1067 : vec3<f32> = u_xlat8;
    let x_1068 : vec4<f32> = u_xlat10;
    let x_1071 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1067 * vec3<f32>(x_1068.x, x_1068.y, x_1068.z)) + x_1071);

    continuing {
      let x_1073 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1073 + bitcast<u32>(1i));
    }
  }
  let x_1075 : vec3<f32> = u_xlat19;
  let x_1076 : vec4<f32> = u_xlat6;
  let x_1079 : vec4<f32> = u_xlat3;
  let x_1081 : vec3<f32> = ((x_1075 * vec3<f32>(x_1076.x, x_1076.y, x_1076.z)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec3<f32> = u_xlat17;
  let x_1085 : vec4<f32> = u_xlat0;
  let x_1087 : vec3<f32> = (x_1084 + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : f32 = u_xlat38;
  let x_1091 : f32 = u_xlat38;
  u_xlat36 = (x_1090 * -(x_1091));
  let x_1094 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1094);
  let x_1096 : vec4<f32> = u_xlat0;
  let x_1099 : vec4<f32> = x_29.unity_FogColor;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.z) + -(vec3<f32>(x_1099.x, x_1099.y, x_1099.z)));
  let x_1103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1107 : f32 = u_xlat36;
  let x_1109 : vec4<f32> = u_xlat0;
  let x_1113 : vec4<f32> = x_29.unity_FogColor;
  let x_1115 : vec3<f32> = ((vec3<f32>(x_1107, x_1107, x_1107) * vec3<f32>(x_1109.x, x_1109.y, x_1109.z)) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


