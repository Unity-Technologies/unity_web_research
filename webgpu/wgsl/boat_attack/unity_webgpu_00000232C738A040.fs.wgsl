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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_111 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu13 : u32;

var<private> u_xlati13 : i32;

@group(1) @binding(2) var<uniform> x_289 : UnityPerDraw;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat37 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_853 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_471 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_988 : f32;
  var x_999 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_28.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat1.x = x_76.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_89);
  let x_93 : vec3<f32> = u_xlat13;
  let x_95 : vec4<f32> = vs_TEXCOORD3;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres0;
  u_xlat13 = (x_102 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_127 : vec3<f32> = vs_TEXCOORD7;
  let x_130 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres2;
  let x_133 : vec3<f32> = (x_127 + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_111.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_137 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_145 : vec3<f32> = u_xlat13;
  let x_146 : vec3<f32> = u_xlat13;
  u_xlat6.x = dot(x_145, x_146);
  let x_149 : vec3<f32> = u_xlat3;
  let x_150 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_149, x_150);
  let x_154 : vec4<f32> = u_xlat4;
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_154.x, x_154.y, x_154.z), vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_161 : vec3<f32> = u_xlat5;
  let x_162 : vec3<f32> = u_xlat5;
  u_xlat6.w = dot(x_161, x_162);
  let x_169 : vec4<f32> = u_xlat6;
  let x_172 : vec4<f32> = x_111.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_169 < x_172);
  let x_175 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_175);
  let x_180 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_180);
  let x_184 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb3.x;
  u_xlat13.x = select(-0.0f, -1.0f, x_192);
  let x_198 : bool = u_xlatb3.y;
  u_xlat13.y = select(-0.0f, -1.0f, x_198);
  let x_202 : bool = u_xlatb3.z;
  u_xlat13.z = select(-0.0f, -1.0f, x_202);
  let x_205 : vec3<f32> = u_xlat13;
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat13 = (x_205 + vec3<f32>(x_206.y, x_206.z, x_206.w));
  let x_209 : vec3<f32> = u_xlat13;
  let x_211 : vec3<f32> = max(x_209, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_211.x, x_211.y, x_211.z);
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat13.x = dot(x_214, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_222 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_222) + 4.0f);
  let x_229 : f32 = u_xlat13.x;
  u_xlatu13 = u32(x_229);
  let x_233 : u32 = u_xlatu13;
  u_xlati13 = (bitcast<i32>(x_233) << bitcast<u32>(2i));
  let x_236 : vec3<f32> = vs_TEXCOORD7;
  let x_238 : i32 = u_xlati13;
  let x_241 : i32 = u_xlati13;
  let x_245 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_238 + 1i) / 4i)][((x_241 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_236.y, x_236.y, x_236.y) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : i32 = u_xlati13;
  let x_250 : i32 = u_xlati13;
  let x_253 : vec4<f32> = x_111.x_MainLightWorldToShadow[(x_248 / 4i)][(x_250 % 4i)];
  let x_255 : vec3<f32> = vs_TEXCOORD7;
  let x_258 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.x, x_255.x, x_255.x)) + x_258);
  let x_260 : i32 = u_xlati13;
  let x_263 : i32 = u_xlati13;
  let x_267 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_260 + 2i) / 4i)][((x_263 + 2i) % 4i)];
  let x_269 : vec3<f32> = vs_TEXCOORD7;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.z, x_269.z, x_269.z)) + x_272);
  let x_274 : vec3<f32> = u_xlat3;
  let x_275 : i32 = u_xlati13;
  let x_278 : i32 = u_xlati13;
  let x_282 : vec4<f32> = x_111.x_MainLightWorldToShadow[((x_275 + 3i) / 4i)][((x_278 + 3i) % 4i)];
  u_xlat13 = (x_274 + vec3<f32>(x_282.x, x_282.y, x_282.z));
  u_xlat2.w = 1.0f;
  let x_292 : vec4<f32> = x_289.unity_SHAr;
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_292, x_293);
  let x_298 : vec4<f32> = x_289.unity_SHAg;
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_298, x_299);
  let x_304 : vec4<f32> = x_289.unity_SHAb;
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_304, x_305);
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_308.y, x_308.z, x_308.z, x_308.x) * vec4<f32>(x_310.x, x_310.y, x_310.z, x_310.z));
  let x_315 : vec4<f32> = x_289.unity_SHBr;
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_315, x_316);
  let x_321 : vec4<f32> = x_289.unity_SHBg;
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_321, x_322);
  let x_327 : vec4<f32> = x_289.unity_SHBb;
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_327, x_328);
  let x_333 : f32 = u_xlat2.y;
  let x_335 : f32 = u_xlat2.y;
  u_xlat38 = (x_333 * x_335);
  let x_338 : f32 = u_xlat2.x;
  let x_340 : f32 = u_xlat2.x;
  let x_342 : f32 = u_xlat38;
  u_xlat38 = ((x_338 * x_340) + -(x_342));
  let x_347 : vec4<f32> = x_289.unity_SHC;
  let x_349 : f32 = u_xlat38;
  let x_352 : vec3<f32> = u_xlat5;
  let x_353 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349, x_349, x_349)) + x_352);
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_356 + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_360, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_363 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_363) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_369 : f32 = u_xlat38;
  u_xlat39 = (-(x_369) + 1.0f);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : f32 = u_xlat38;
  let x_376 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374, x_374, x_374));
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.x, x_386.x) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_397) + 1.0f);
  let x_402 : f32 = u_xlat1.x;
  let x_404 : f32 = u_xlat1.x;
  u_xlat38 = (x_402 * x_404);
  let x_406 : f32 = u_xlat38;
  u_xlat38 = max(x_406, 0.0078125f);
  let x_410 : f32 = u_xlat38;
  let x_411 : f32 = u_xlat38;
  u_xlat40 = (x_410 * x_411);
  let x_415 : f32 = u_xlat0.w;
  let x_416 : f32 = u_xlat39;
  u_xlat36 = (x_415 + x_416);
  let x_418 : f32 = u_xlat36;
  u_xlat36 = clamp(x_418, 0.0f, 1.0f);
  let x_420 : f32 = u_xlat38;
  u_xlat39 = ((x_420 * 4.0f) + 2.0f);
  let x_425 : vec3<f32> = u_xlat13;
  let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
  let x_428 : f32 = u_xlat13.z;
  txVec0 = vec3<f32>(x_426.x, x_426.y, x_428);
  let x_440 : vec3<f32> = txVec0;
  let x_442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_440.xy, x_440.z);
  u_xlat13.x = x_442;
  let x_447 : f32 = x_111.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_447) + 1.0f);
  let x_451 : f32 = u_xlat13.x;
  let x_453 : f32 = x_111.x_MainLightShadowParams.x;
  let x_455 : f32 = u_xlat25;
  u_xlat13.x = ((x_451 * x_453) + x_455);
  let x_460 : f32 = u_xlat13.z;
  u_xlatb25 = (0.0f >= x_460);
  let x_464 : f32 = u_xlat13.z;
  u_xlatb37 = (x_464 >= 1.0f);
  let x_466 : bool = u_xlatb37;
  let x_467 : bool = u_xlatb25;
  u_xlatb25 = (x_466 | x_467);
  let x_469 : bool = u_xlatb25;
  if (x_469) {
    x_471 = 1.0f;
  } else {
    let x_476 : f32 = u_xlat13.x;
    x_471 = x_476;
  }
  let x_477 : f32 = x_471;
  u_xlat13.x = x_477;
  let x_479 : vec3<f32> = vs_TEXCOORD7;
  let x_482 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_479 + -(x_482));
  let x_485 : vec3<f32> = u_xlat5;
  let x_486 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(x_485, x_486);
  let x_489 : f32 = u_xlat25;
  let x_491 : f32 = x_111.x_MainLightShadowParams.z;
  let x_494 : f32 = x_111.x_MainLightShadowParams.w;
  u_xlat37 = ((x_489 * x_491) + x_494);
  let x_496 : f32 = u_xlat37;
  u_xlat37 = clamp(x_496, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat13.x;
  u_xlat5.x = (-(x_499) + 1.0f);
  let x_503 : f32 = u_xlat37;
  let x_505 : f32 = u_xlat5.x;
  let x_508 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_503 * x_505) + x_508);
  let x_513 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_513;
  let x_517 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_517;
  let x_521 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_521;
  let x_523 : vec3<f32> = u_xlat5;
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(-(x_523), vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : f32 = u_xlat37;
  let x_529 : f32 = u_xlat37;
  u_xlat37 = (x_528 + x_529);
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : f32 = u_xlat37;
  let x_537 : vec3<f32> = u_xlat5;
  let x_539 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * -(vec3<f32>(x_533, x_533, x_533))) + -(x_537));
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat2;
  let x_544 : vec3<f32> = u_xlat5;
  u_xlat37 = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), x_544);
  let x_546 : f32 = u_xlat37;
  u_xlat37 = clamp(x_546, 0.0f, 1.0f);
  let x_548 : f32 = u_xlat37;
  u_xlat37 = (-(x_548) + 1.0f);
  let x_551 : f32 = u_xlat37;
  let x_552 : f32 = u_xlat37;
  u_xlat37 = (x_551 * x_552);
  let x_554 : f32 = u_xlat37;
  let x_555 : f32 = u_xlat37;
  u_xlat37 = (x_554 * x_555);
  let x_559 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_559) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_566 : f32 = u_xlat1.x;
  let x_567 : f32 = u_xlat41;
  u_xlat1.x = (x_566 * x_567);
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = (x_571 * 6.0f);
  let x_583 : vec4<f32> = u_xlat6;
  let x_586 : f32 = u_xlat1.x;
  let x_587 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_583.x, x_583.y, x_583.z), x_586);
  u_xlat6 = x_587;
  let x_589 : f32 = u_xlat6.w;
  u_xlat1.x = (x_589 + -1.0f);
  let x_593 : f32 = x_289.unity_SpecCube0_HDR.w;
  let x_595 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_593 * x_595) + 1.0f);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_600, 0.0f);
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_604);
  let x_608 : f32 = u_xlat1.x;
  let x_610 : f32 = x_289.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_608 * x_610);
  let x_614 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_614);
  let x_618 : f32 = u_xlat1.x;
  let x_620 : f32 = x_289.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_618 * x_620);
  let x_623 : vec4<f32> = u_xlat6;
  let x_625 : vec4<f32> = u_xlat1;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625.x, x_625.x, x_625.x));
  let x_628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_632 : f32 = u_xlat38;
  let x_634 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_632, x_632) * vec2<f32>(x_634, x_634)) + vec2<f32>(-1.0f, 1.0f));
  let x_640 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_640);
  let x_644 : vec4<f32> = u_xlat0;
  let x_647 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_644.x, x_644.y, x_644.z)) + vec3<f32>(x_647, x_647, x_647));
  let x_650 : f32 = u_xlat37;
  let x_652 : vec3<f32> = u_xlat19;
  let x_654 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_650, x_650, x_650) * x_652) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat1;
  let x_659 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_657.x, x_657.x, x_657.x) * x_659);
  let x_661 : vec4<f32> = u_xlat6;
  let x_663 : vec3<f32> = u_xlat19;
  let x_664 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) * x_663);
  let x_665 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec3<f32> = u_xlat3;
  let x_668 : vec4<f32> = u_xlat4;
  let x_671 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_667 * vec3<f32>(x_668.x, x_668.y, x_668.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_675 : f32 = u_xlat13.x;
  let x_677 : f32 = x_289.unity_LightData.z;
  u_xlat36 = (x_675 * x_677);
  let x_679 : vec4<f32> = u_xlat2;
  let x_682 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_687 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_687, 0.0f, 1.0f);
  let x_690 : f32 = u_xlat36;
  let x_692 : f32 = u_xlat1.x;
  u_xlat36 = (x_690 * x_692);
  let x_694 : f32 = u_xlat36;
  let x_697 : vec4<f32> = x_28.x_MainLightColor;
  let x_699 : vec3<f32> = (vec3<f32>(x_694, x_694, x_694) * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_699.z);
  let x_702 : vec3<f32> = u_xlat5;
  let x_704 : vec4<f32> = x_28.x_MainLightPosition;
  let x_706 : vec3<f32> = (x_702 + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat6;
  let x_711 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : f32 = u_xlat36;
  u_xlat36 = max(x_714, 1.17549435e-38f);
  let x_717 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_717);
  let x_719 : f32 = u_xlat36;
  let x_721 : vec4<f32> = u_xlat6;
  let x_723 : vec3<f32> = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec4<f32> = u_xlat2;
  let x_728 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_726.x, x_726.y, x_726.z), vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : f32 = u_xlat36;
  u_xlat36 = clamp(x_731, 0.0f, 1.0f);
  let x_734 : vec4<f32> = x_28.x_MainLightPosition;
  let x_736 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : f32 = u_xlat38;
  u_xlat38 = clamp(x_739, 0.0f, 1.0f);
  let x_741 : f32 = u_xlat36;
  let x_742 : f32 = u_xlat36;
  u_xlat36 = (x_741 * x_742);
  let x_744 : f32 = u_xlat36;
  let x_746 : f32 = u_xlat7.x;
  u_xlat36 = ((x_744 * x_746) + 1.00001001358032226562f);
  let x_750 : f32 = u_xlat38;
  let x_751 : f32 = u_xlat38;
  u_xlat38 = (x_750 * x_751);
  let x_753 : f32 = u_xlat36;
  let x_754 : f32 = u_xlat36;
  u_xlat36 = (x_753 * x_754);
  let x_756 : f32 = u_xlat38;
  u_xlat38 = max(x_756, 0.10000000149011611938f);
  let x_759 : f32 = u_xlat36;
  let x_760 : f32 = u_xlat38;
  u_xlat36 = (x_759 * x_760);
  let x_762 : f32 = u_xlat39;
  let x_763 : f32 = u_xlat36;
  u_xlat36 = (x_762 * x_763);
  let x_765 : f32 = u_xlat40;
  let x_766 : f32 = u_xlat36;
  u_xlat36 = (x_765 / x_766);
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : f32 = u_xlat36;
  let x_773 : vec4<f32> = u_xlat4;
  let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770, x_770, x_770)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_779 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_781 : f32 = x_289.unity_LightData.y;
  u_xlat36 = min(x_779, x_781);
  let x_784 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_784));
  let x_787 : f32 = u_xlat25;
  let x_790 : f32 = x_111.x_AdditionalShadowFadeParams.x;
  let x_793 : f32 = x_111.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_787 * x_790) + x_793);
  let x_795 : f32 = u_xlat25;
  u_xlat25 = clamp(x_795, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_807 : u32 = u_xlatu_loop_1;
    let x_808 : u32 = u_xlatu36;
    if ((x_807 < x_808)) {
    } else {
      break;
    }
    let x_811 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_811 >> 2u);
    let x_814 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_814 & 3u));
    let x_818 : u32 = u_xlatu41;
    let x_821 : vec4<f32> = x_289.unity_LightIndices[bitcast<i32>(x_818)];
    let x_831 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_836 : vec4<u32> = indexable[x_831];
    u_xlat41 = dot(x_821, bitcast<vec4<f32>>(x_836));
    let x_840 : f32 = u_xlat41;
    u_xlati41 = i32(x_840);
    let x_843 : vec3<f32> = vs_TEXCOORD7;
    let x_854 : i32 = u_xlati41;
    let x_856 : vec4<f32> = x_853.x_AdditionalLightsPosition[x_854];
    let x_859 : i32 = u_xlati41;
    let x_861 : vec4<f32> = x_853.x_AdditionalLightsPosition[x_859];
    u_xlat8 = ((-(x_843) * vec3<f32>(x_856.w, x_856.w, x_856.w)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
    let x_865 : vec3<f32> = u_xlat8;
    let x_866 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_865, x_866);
    let x_868 : f32 = u_xlat42;
    u_xlat42 = max(x_868, 0.00006103515625f);
    let x_872 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_872);
    let x_875 : f32 = u_xlat44;
    let x_877 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_875, x_875, x_875) * x_877);
    let x_880 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_880);
    let x_882 : f32 = u_xlat42;
    let x_883 : i32 = u_xlati41;
    let x_885 : f32 = x_853.x_AdditionalLightsAttenuation[x_883].x;
    u_xlat42 = (x_882 * x_885);
    let x_887 : f32 = u_xlat42;
    let x_889 : f32 = u_xlat42;
    u_xlat42 = ((-(x_887) * x_889) + 1.0f);
    let x_892 : f32 = u_xlat42;
    u_xlat42 = max(x_892, 0.0f);
    let x_894 : f32 = u_xlat42;
    let x_895 : f32 = u_xlat42;
    u_xlat42 = (x_894 * x_895);
    let x_897 : f32 = u_xlat42;
    let x_898 : f32 = u_xlat45;
    u_xlat42 = (x_897 * x_898);
    let x_900 : i32 = u_xlati41;
    let x_902 : vec4<f32> = x_853.x_AdditionalLightsSpotDir[x_900];
    let x_904 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), x_904);
    let x_906 : f32 = u_xlat45;
    let x_907 : i32 = u_xlati41;
    let x_909 : f32 = x_853.x_AdditionalLightsAttenuation[x_907].z;
    let x_911 : i32 = u_xlati41;
    let x_913 : f32 = x_853.x_AdditionalLightsAttenuation[x_911].w;
    u_xlat45 = ((x_906 * x_909) + x_913);
    let x_915 : f32 = u_xlat45;
    u_xlat45 = clamp(x_915, 0.0f, 1.0f);
    let x_917 : f32 = u_xlat45;
    let x_918 : f32 = u_xlat45;
    u_xlat45 = (x_917 * x_918);
    let x_920 : f32 = u_xlat42;
    let x_921 : f32 = u_xlat45;
    u_xlat42 = (x_920 * x_921);
    let x_925 : i32 = u_xlati41;
    let x_927 : f32 = x_111.x_AdditionalShadowParams[x_925].w;
    u_xlati45 = i32(x_927);
    let x_932 : i32 = u_xlati45;
    u_xlatb10.x = (x_932 >= 0i);
    let x_936 : bool = u_xlatb10.x;
    if (x_936) {
      let x_940 : i32 = u_xlati41;
      let x_942 : f32 = x_111.x_AdditionalShadowParams[x_940].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_942, x_942, x_942, x_942))));
      let x_948 : bool = u_xlatb10.x;
      if (x_948) {
        let x_951 : vec3<f32> = u_xlat9;
        let x_954 : vec3<f32> = u_xlat9;
        let x_957 : vec4<bool> = (abs(vec4<f32>(x_951.z, x_951.z, x_951.y, x_951.z)) >= abs(vec4<f32>(x_954.x, x_954.y, x_954.x, x_954.x)));
        u_xlatb10 = vec3<bool>(x_957.x, x_957.y, x_957.z);
        let x_960 : bool = u_xlatb10.y;
        let x_962 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_960 & x_962);
        let x_966 : vec3<f32> = u_xlat9;
        let x_969 : vec4<bool> = (-(vec4<f32>(x_966.z, x_966.y, x_966.x, x_966.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_969.x, x_969.y, x_969.z);
        let x_973 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_973);
        let x_978 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_978);
        let x_983 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_983);
        let x_987 : bool = u_xlatb10.z;
        if (x_987) {
          let x_992 : f32 = u_xlat22.z;
          x_988 = x_992;
        } else {
          let x_994 : f32 = u_xlat11;
          x_988 = x_994;
        }
        let x_995 : f32 = x_988;
        u_xlat34 = x_995;
        let x_998 : bool = u_xlatb10.x;
        if (x_998) {
          let x_1003 : f32 = u_xlat22.x;
          x_999 = x_1003;
        } else {
          let x_1005 : f32 = u_xlat34;
          x_999 = x_1005;
        }
        let x_1006 : f32 = x_999;
        u_xlat10.x = x_1006;
        let x_1008 : i32 = u_xlati41;
        let x_1010 : f32 = x_111.x_AdditionalShadowParams[x_1008].w;
        u_xlat22.x = trunc(x_1010);
        let x_1014 : f32 = u_xlat10.x;
        let x_1016 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1014 + x_1016);
        let x_1020 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1020);
      }
      let x_1022 : i32 = u_xlati45;
      u_xlati45 = (x_1022 << bitcast<u32>(2i));
      let x_1024 : vec3<f32> = vs_TEXCOORD7;
      let x_1027 : i32 = u_xlati45;
      let x_1030 : i32 = u_xlati45;
      let x_1034 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1027 + 1i) / 4i)][((x_1030 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1024.y, x_1024.y, x_1024.y, x_1024.y) * x_1034);
      let x_1036 : i32 = u_xlati45;
      let x_1038 : i32 = u_xlati45;
      let x_1041 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[(x_1036 / 4i)][(x_1038 % 4i)];
      let x_1042 : vec3<f32> = vs_TEXCOORD7;
      let x_1045 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1041 * vec4<f32>(x_1042.x, x_1042.x, x_1042.x, x_1042.x)) + x_1045);
      let x_1047 : i32 = u_xlati45;
      let x_1050 : i32 = u_xlati45;
      let x_1054 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1047 + 2i) / 4i)][((x_1050 + 2i) % 4i)];
      let x_1055 : vec3<f32> = vs_TEXCOORD7;
      let x_1058 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1054 * vec4<f32>(x_1055.z, x_1055.z, x_1055.z, x_1055.z)) + x_1058);
      let x_1060 : vec4<f32> = u_xlat10;
      let x_1061 : i32 = u_xlati45;
      let x_1064 : i32 = u_xlati45;
      let x_1068 : vec4<f32> = x_111.x_AdditionalLightsWorldToShadow[((x_1061 + 3i) / 4i)][((x_1064 + 3i) % 4i)];
      u_xlat10 = (x_1060 + x_1068);
      let x_1070 : vec4<f32> = u_xlat10;
      let x_1072 : vec4<f32> = u_xlat10;
      let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) / vec3<f32>(x_1072.w, x_1072.w, x_1072.w));
      let x_1075 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
      let x_1078 : vec4<f32> = u_xlat10;
      let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
      let x_1081 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
      let x_1089 : vec3<f32> = txVec1;
      let x_1091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1089.xy, x_1089.z);
      u_xlat45 = x_1091;
      let x_1092 : i32 = u_xlati41;
      let x_1094 : f32 = x_111.x_AdditionalShadowParams[x_1092].x;
      u_xlat10.x = (1.0f + -(x_1094));
      let x_1098 : f32 = u_xlat45;
      let x_1099 : i32 = u_xlati41;
      let x_1101 : f32 = x_111.x_AdditionalShadowParams[x_1099].x;
      let x_1104 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1098 * x_1101) + x_1104);
      let x_1107 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1107);
      let x_1112 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1112 >= 1.0f);
      let x_1114 : bool = u_xlatb22;
      let x_1116 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1114 | x_1116);
      let x_1120 : bool = u_xlatb10.x;
      let x_1121 : f32 = u_xlat45;
      u_xlat45 = select(x_1121, 1.0f, x_1120);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1124 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1124) + 1.0f);
    let x_1128 : f32 = u_xlat25;
    let x_1130 : f32 = u_xlat10.x;
    let x_1132 : f32 = u_xlat45;
    u_xlat45 = ((x_1128 * x_1130) + x_1132);
    let x_1134 : f32 = u_xlat42;
    let x_1135 : f32 = u_xlat45;
    u_xlat42 = (x_1134 * x_1135);
    let x_1137 : vec4<f32> = u_xlat2;
    let x_1139 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1137.x, x_1137.y, x_1137.z), x_1139);
    let x_1141 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1141, 0.0f, 1.0f);
    let x_1143 : f32 = u_xlat42;
    let x_1144 : f32 = u_xlat45;
    u_xlat42 = (x_1143 * x_1144);
    let x_1146 : f32 = u_xlat42;
    let x_1148 : i32 = u_xlati41;
    let x_1150 : vec4<f32> = x_853.x_AdditionalLightsColor[x_1148];
    let x_1152 : vec3<f32> = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
    let x_1153 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
    let x_1155 : vec3<f32> = u_xlat8;
    let x_1156 : f32 = u_xlat44;
    let x_1159 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1155 * vec3<f32>(x_1156, x_1156, x_1156)) + x_1159);
    let x_1161 : vec3<f32> = u_xlat8;
    let x_1162 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1161, x_1162);
    let x_1164 : f32 = u_xlat41;
    u_xlat41 = max(x_1164, 1.17549435e-38f);
    let x_1166 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1166);
    let x_1168 : f32 = u_xlat41;
    let x_1170 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1168, x_1168, x_1168) * x_1170);
    let x_1172 : vec4<f32> = u_xlat2;
    let x_1174 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1172.x, x_1172.y, x_1172.z), x_1174);
    let x_1176 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1176, 0.0f, 1.0f);
    let x_1178 : vec3<f32> = u_xlat9;
    let x_1179 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1178, x_1179);
    let x_1181 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1181, 0.0f, 1.0f);
    let x_1183 : f32 = u_xlat41;
    let x_1184 : f32 = u_xlat41;
    u_xlat41 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat41;
    let x_1188 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1186 * x_1188) + 1.00001001358032226562f);
    let x_1191 : f32 = u_xlat42;
    let x_1192 : f32 = u_xlat42;
    u_xlat42 = (x_1191 * x_1192);
    let x_1194 : f32 = u_xlat41;
    let x_1195 : f32 = u_xlat41;
    u_xlat41 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat42;
    u_xlat42 = max(x_1197, 0.10000000149011611938f);
    let x_1199 : f32 = u_xlat41;
    let x_1200 : f32 = u_xlat42;
    u_xlat41 = (x_1199 * x_1200);
    let x_1202 : f32 = u_xlat39;
    let x_1203 : f32 = u_xlat41;
    u_xlat41 = (x_1202 * x_1203);
    let x_1205 : f32 = u_xlat40;
    let x_1206 : f32 = u_xlat41;
    u_xlat41 = (x_1205 / x_1206);
    let x_1208 : vec4<f32> = u_xlat0;
    let x_1210 : f32 = u_xlat41;
    let x_1213 : vec4<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210, x_1210, x_1210)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
    let x_1216 : vec3<f32> = u_xlat8;
    let x_1217 : vec4<f32> = u_xlat10;
    let x_1220 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1216 * vec3<f32>(x_1217.x, x_1217.y, x_1217.z)) + x_1220);

    continuing {
      let x_1222 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1222 + bitcast<u32>(1i));
    }
  }
  let x_1224 : vec4<f32> = u_xlat6;
  let x_1226 : vec4<f32> = u_xlat1;
  let x_1229 : vec3<f32> = u_xlat3;
  let x_1230 : vec3<f32> = ((vec3<f32>(x_1224.x, x_1224.y, x_1224.z) * vec3<f32>(x_1226.x, x_1226.y, x_1226.w)) + x_1229);
  let x_1231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1235 : vec3<f32> = u_xlat19;
  let x_1236 : vec4<f32> = u_xlat0;
  let x_1238 : vec3<f32> = (x_1235 + vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
  let x_1239 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


