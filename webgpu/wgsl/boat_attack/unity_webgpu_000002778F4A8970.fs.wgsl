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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb9 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat26 : f32;

@group(1) @binding(4) var<uniform> x_231 : LightShadows;

var<private> u_xlatb26 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_396 : AdditionalLights;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb14 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat14 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu27 : u32;

var<private> u_xlatb28 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_544 : f32;
  var x_555 : f32;
  var txVec1 : vec3<f32>;
  var x_672 : f32;
  var x_744 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_44.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_79 : vec3<f32> = u_xlat1;
  let x_82 : f32 = x_44.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb9 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb9;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_137, x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_142);
  let x_145 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_156 : vec2<f32> = vs_TEXCOORD7;
  let x_158 : f32 = x_44.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_156, x_158);
  u_xlat2 = x_159;
  let x_165 : vec2<f32> = vs_TEXCOORD7;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_165, x_167);
  u_xlat3 = vec3<f32>(x_168.x, x_168.y, x_168.z);
  let x_170 : vec4<f32> = u_xlat2;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(x_178, vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat25;
  u_xlat25 = (x_182 + 0.5f);
  let x_185 : f32 = u_xlat25;
  let x_187 : vec3<f32> = u_xlat3;
  let x_188 : vec3<f32> = (vec3<f32>(x_185, x_185, x_185) * x_187);
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_192 : f32 = u_xlat2.w;
  u_xlat25 = max(x_192, 0.00009999999747378752f);
  let x_195 : vec4<f32> = u_xlat2;
  let x_197 : f32 = u_xlat25;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) / vec3<f32>(x_197, x_197, x_197));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_205 : vec4<f32> = vs_TEXCOORD6;
  let x_206 : vec2<f32> = vec2<f32>(x_205.x, x_205.y);
  let x_208 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_206.x, x_206.y, x_208);
  let x_220 : vec3<f32> = txVec0;
  let x_222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_220.xy, x_220.z);
  u_xlat25 = x_222;
  let x_234 : f32 = x_231.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_234) + 1.0f);
  let x_237 : f32 = u_xlat25;
  let x_239 : f32 = x_231.x_MainLightShadowParams.x;
  let x_241 : f32 = u_xlat26;
  u_xlat25 = ((x_237 * x_239) + x_241);
  let x_245 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_245);
  let x_249 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_249 >= 1.0f);
  let x_251 : bool = u_xlatb26;
  let x_252 : bool = u_xlatb3;
  u_xlatb26 = (x_251 | x_252);
  let x_254 : bool = u_xlatb26;
  let x_255 : f32 = u_xlat25;
  u_xlat25 = select(x_255, 1.0f, x_254);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_262 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (x_258 + -(x_262));
  let x_265 : vec3<f32> = u_xlat3;
  let x_266 : vec3<f32> = u_xlat3;
  u_xlat26 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat26;
  let x_270 : f32 = x_231.x_MainLightShadowParams.z;
  let x_273 : f32 = x_231.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_268 * x_270) + x_273);
  let x_277 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_277, 0.0f, 1.0f);
  let x_281 : f32 = u_xlat25;
  u_xlat11 = (-(x_281) + 1.0f);
  let x_285 : f32 = u_xlat3.x;
  let x_286 : f32 = u_xlat11;
  let x_288 : f32 = u_xlat25;
  u_xlat25 = ((x_285 * x_286) + x_288);
  let x_290 : f32 = u_xlat25;
  let x_292 : f32 = x_95.unity_LightData.z;
  u_xlat25 = (x_290 * x_292);
  let x_294 : f32 = u_xlat25;
  let x_297 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat3 = (vec3<f32>(x_294, x_294, x_294) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec3<f32> = u_xlat1;
  let x_302 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat25 = dot(x_300, vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : f32 = u_xlat25;
  u_xlat25 = clamp(x_305, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat25;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_307, x_307, x_307) * x_309);
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_311.y, x_311.z, x_311.w) * x_313);
  let x_317 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_320 : f32 = x_95.unity_LightData.y;
  u_xlat25 = min(x_317, x_320);
  let x_324 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_324));
  let x_327 : f32 = u_xlat26;
  let x_330 : f32 = x_231.x_AdditionalShadowFadeParams.x;
  let x_333 : f32 = x_231.x_AdditionalShadowFadeParams.y;
  u_xlat26 = ((x_327 * x_330) + x_333);
  let x_335 : f32 = u_xlat26;
  u_xlat26 = clamp(x_335, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_348 : u32 = u_xlatu_loop_1;
    let x_349 : u32 = u_xlatu25;
    if ((x_348 < x_349)) {
    } else {
      break;
    }
    let x_352 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_352 >> 2u);
    let x_356 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_356 & 3u));
    let x_361 : u32 = u_xlatu28;
    let x_364 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_361)];
    let x_374 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_379 : vec4<u32> = indexable[x_374];
    u_xlat28 = dot(x_364, bitcast<vec4<f32>>(x_379));
    let x_383 : f32 = u_xlat28;
    u_xlati28 = i32(x_383);
    let x_386 : vec3<f32> = vs_TEXCOORD1;
    let x_397 : i32 = u_xlati28;
    let x_399 : vec4<f32> = x_396.x_AdditionalLightsPosition[x_397];
    let x_402 : i32 = u_xlati28;
    let x_404 : vec4<f32> = x_396.x_AdditionalLightsPosition[x_402];
    u_xlat5 = ((-(x_386) * vec3<f32>(x_399.w, x_399.w, x_399.w)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
    let x_408 : vec3<f32> = u_xlat5;
    let x_409 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_408, x_409);
    let x_411 : f32 = u_xlat29;
    u_xlat29 = max(x_411, 0.00006103515625f);
    let x_415 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_415);
    let x_418 : vec3<f32> = u_xlat5;
    let x_419 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_418 * vec3<f32>(x_419.x, x_419.x, x_419.x));
    let x_422 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_422);
    let x_425 : f32 = u_xlat29;
    let x_426 : i32 = u_xlati28;
    let x_428 : f32 = x_396.x_AdditionalLightsAttenuation[x_426].x;
    u_xlat29 = (x_425 * x_428);
    let x_430 : f32 = u_xlat29;
    let x_432 : f32 = u_xlat29;
    u_xlat29 = ((-(x_430) * x_432) + 1.0f);
    let x_435 : f32 = u_xlat29;
    u_xlat29 = max(x_435, 0.0f);
    let x_437 : f32 = u_xlat29;
    let x_438 : f32 = u_xlat29;
    u_xlat29 = (x_437 * x_438);
    let x_440 : f32 = u_xlat29;
    let x_442 : f32 = u_xlat6.x;
    u_xlat29 = (x_440 * x_442);
    let x_444 : i32 = u_xlati28;
    let x_446 : vec4<f32> = x_396.x_AdditionalLightsSpotDir[x_444];
    let x_448 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), x_448);
    let x_452 : f32 = u_xlat6.x;
    let x_453 : i32 = u_xlati28;
    let x_455 : f32 = x_396.x_AdditionalLightsAttenuation[x_453].z;
    let x_457 : i32 = u_xlati28;
    let x_459 : f32 = x_396.x_AdditionalLightsAttenuation[x_457].w;
    u_xlat6.x = ((x_452 * x_455) + x_459);
    let x_463 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_463, 0.0f, 1.0f);
    let x_467 : f32 = u_xlat6.x;
    let x_469 : f32 = u_xlat6.x;
    u_xlat6.x = (x_467 * x_469);
    let x_472 : f32 = u_xlat29;
    let x_474 : f32 = u_xlat6.x;
    u_xlat29 = (x_472 * x_474);
    let x_478 : i32 = u_xlati28;
    let x_480 : f32 = x_231.x_AdditionalShadowParams[x_478].w;
    u_xlati6 = i32(x_480);
    let x_485 : i32 = u_xlati6;
    u_xlatb14.x = (x_485 >= 0i);
    let x_489 : bool = u_xlatb14.x;
    if (x_489) {
      let x_493 : i32 = u_xlati28;
      let x_495 : f32 = x_231.x_AdditionalShadowParams[x_493].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_495, x_495, x_495, x_495))));
      let x_502 : bool = u_xlatb14.x;
      if (x_502) {
        let x_505 : vec3<f32> = u_xlat5;
        let x_508 : vec3<f32> = u_xlat5;
        let x_511 : vec4<bool> = (abs(vec4<f32>(x_505.z, x_505.z, x_505.y, x_505.y)) >= abs(vec4<f32>(x_508.x, x_508.y, x_508.x, x_508.x)));
        u_xlatb14 = vec3<bool>(x_511.x, x_511.y, x_511.z);
        let x_514 : bool = u_xlatb14.y;
        let x_516 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_514 & x_516);
        let x_520 : vec3<f32> = u_xlat5;
        let x_523 : vec4<bool> = (-(vec4<f32>(x_520.z, x_520.y, x_520.x, x_520.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_523.x, x_523.y, x_523.z);
        let x_527 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_527);
        let x_533 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_533);
        let x_540 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_540);
        let x_543 : bool = u_xlatb14.z;
        if (x_543) {
          let x_548 : f32 = u_xlat7.y;
          x_544 = x_548;
        } else {
          let x_550 : f32 = u_xlat22;
          x_544 = x_550;
        }
        let x_551 : f32 = x_544;
        u_xlat22 = x_551;
        let x_554 : bool = u_xlatb14.x;
        if (x_554) {
          let x_559 : f32 = u_xlat7.x;
          x_555 = x_559;
        } else {
          let x_561 : f32 = u_xlat22;
          x_555 = x_561;
        }
        let x_562 : f32 = x_555;
        u_xlat14 = x_562;
        let x_563 : i32 = u_xlati28;
        let x_565 : f32 = x_231.x_AdditionalShadowParams[x_563].w;
        u_xlat22 = trunc(x_565);
        let x_567 : f32 = u_xlat14;
        let x_568 : f32 = u_xlat22;
        u_xlat14 = (x_567 + x_568);
        let x_570 : f32 = u_xlat14;
        u_xlati6 = i32(x_570);
      }
      let x_572 : i32 = u_xlati6;
      u_xlati6 = (x_572 << bitcast<u32>(2i));
      let x_574 : vec3<f32> = vs_TEXCOORD1;
      let x_577 : i32 = u_xlati6;
      let x_580 : i32 = u_xlati6;
      let x_584 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_577 + 1i) / 4i)][((x_580 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_574.y, x_574.y, x_574.y, x_574.y) * x_584);
      let x_586 : i32 = u_xlati6;
      let x_588 : i32 = u_xlati6;
      let x_591 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[(x_586 / 4i)][(x_588 % 4i)];
      let x_592 : vec3<f32> = vs_TEXCOORD1;
      let x_595 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_591 * vec4<f32>(x_592.x, x_592.x, x_592.x, x_592.x)) + x_595);
      let x_597 : i32 = u_xlati6;
      let x_600 : i32 = u_xlati6;
      let x_604 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_597 + 2i) / 4i)][((x_600 + 2i) % 4i)];
      let x_605 : vec3<f32> = vs_TEXCOORD1;
      let x_608 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_604 * vec4<f32>(x_605.z, x_605.z, x_605.z, x_605.z)) + x_608);
      let x_610 : vec4<f32> = u_xlat7;
      let x_611 : i32 = u_xlati6;
      let x_614 : i32 = u_xlati6;
      let x_618 : vec4<f32> = x_231.x_AdditionalLightsWorldToShadow[((x_611 + 3i) / 4i)][((x_614 + 3i) % 4i)];
      u_xlat6 = (x_610 + x_618);
      let x_620 : vec4<f32> = u_xlat6;
      let x_622 : vec4<f32> = u_xlat6;
      let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) / vec3<f32>(x_622.w, x_622.w, x_622.w));
      let x_625 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
      let x_628 : vec4<f32> = u_xlat6;
      let x_629 : vec2<f32> = vec2<f32>(x_628.x, x_628.y);
      let x_631 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_629.x, x_629.y, x_631);
      let x_639 : vec3<f32> = txVec1;
      let x_641 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_639.xy, x_639.z);
      u_xlat6.x = x_641;
      let x_643 : i32 = u_xlati28;
      let x_645 : f32 = x_231.x_AdditionalShadowParams[x_643].x;
      u_xlat14 = (1.0f + -(x_645));
      let x_649 : f32 = u_xlat6.x;
      let x_650 : i32 = u_xlati28;
      let x_652 : f32 = x_231.x_AdditionalShadowParams[x_650].x;
      let x_654 : f32 = u_xlat14;
      u_xlat6.x = ((x_649 * x_652) + x_654);
      let x_658 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_658);
      let x_663 : f32 = u_xlat6.z;
      u_xlatb22 = (x_663 >= 1.0f);
      let x_665 : bool = u_xlatb22;
      let x_667 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_665 | x_667);
      let x_671 : bool = u_xlatb14.x;
      if (x_671) {
        x_672 = 1.0f;
      } else {
        let x_677 : f32 = u_xlat6.x;
        x_672 = x_677;
      }
      let x_678 : f32 = x_672;
      u_xlat6.x = x_678;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_683 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_683) + 1.0f);
    let x_686 : f32 = u_xlat26;
    let x_687 : f32 = u_xlat14;
    let x_690 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_686 * x_687) + x_690);
    let x_693 : f32 = u_xlat29;
    let x_695 : f32 = u_xlat6.x;
    u_xlat29 = (x_693 * x_695);
    let x_697 : f32 = u_xlat29;
    let x_699 : i32 = u_xlati28;
    let x_701 : vec4<f32> = x_396.x_AdditionalLightsColor[x_699];
    let x_703 : vec3<f32> = (vec3<f32>(x_697, x_697, x_697) * vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_704 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
    let x_706 : vec3<f32> = u_xlat1;
    let x_707 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(x_706, x_707);
    let x_709 : f32 = u_xlat28;
    u_xlat28 = clamp(x_709, 0.0f, 1.0f);
    let x_711 : f32 = u_xlat28;
    let x_713 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec3<f32> = u_xlat5;
    let x_717 : vec4<f32> = u_xlat0;
    let x_720 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_716 * vec3<f32>(x_717.y, x_717.z, x_717.w)) + x_720);

    continuing {
      let x_722 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_722 + bitcast<u32>(1i));
    }
  }
  let x_725 : vec4<f32> = u_xlat2;
  let x_727 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = u_xlat3;
  u_xlat8 = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_727.y, x_727.z, x_727.w)) + x_730);
  let x_734 : vec3<f32> = u_xlat4;
  let x_735 : vec3<f32> = u_xlat8;
  let x_736 : vec3<f32> = (x_734 + x_735);
  let x_737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_741 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_741 == 1.0f);
  let x_743 : bool = u_xlatb8;
  if (x_743) {
    let x_748 : f32 = u_xlat0.x;
    x_744 = x_748;
  } else {
    x_744 = 1.0f;
  }
  let x_750 : f32 = x_744;
  SV_Target0.w = x_750;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


