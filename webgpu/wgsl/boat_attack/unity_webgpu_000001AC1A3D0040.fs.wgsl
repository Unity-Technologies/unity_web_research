diagnostic(off, derivative_uniformity);

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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_271 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

@group(1) @binding(2) var<uniform> x_334 : UnityPerDraw;

var<private> u_xlatu24 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_440 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_576 : f32;
  var x_586 : f32;
  var txVec1 : vec3<f32>;
  var x_791 : f32;
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
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat24;
  let x_91 : f32 = u_xlat16;
  u_xlat16 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat16;
  u_xlat16 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat8;
  let x_98 : f32 = u_xlat16;
  u_xlat8 = (x_97 / x_98);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat8;
  u_xlat8 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb16;
  if (x_110) {
    let x_114 : f32 = u_xlat8;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat8 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat8;
  u_xlatb8 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb8;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_140);
  let x_144 : f32 = u_xlat8;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_152 : f32 = vs_TEXCOORD1.y;
  let x_156 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_152 * x_156);
  let x_159 : f32 = x_28.unity_MatrixV[0i].z;
  let x_161 : f32 = vs_TEXCOORD1.x;
  let x_163 : f32 = u_xlat8;
  u_xlat8 = ((x_159 * x_161) + x_163);
  let x_167 : f32 = x_28.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat8;
  u_xlat8 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat8;
  let x_176 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_173 + x_176);
  let x_178 : f32 = u_xlat8;
  let x_182 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat8;
  u_xlat8 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat8;
  let x_190 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_187 * x_190);
  let x_199 : vec2<f32> = vs_TEXCOORD7;
  let x_201 : f32 = x_28.x_GlobalMipBias.x;
  let x_202 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_199, x_201);
  u_xlat3 = x_202;
  let x_208 : vec2<f32> = vs_TEXCOORD7;
  let x_210 : f32 = x_28.x_GlobalMipBias.x;
  let x_211 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_208, x_210);
  u_xlat4 = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_213 : vec4<f32> = u_xlat3;
  let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec3<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(x_220, vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : f32 = u_xlat24;
  u_xlat24 = (x_224 + 0.5f);
  let x_226 : f32 = u_xlat24;
  let x_228 : vec3<f32> = u_xlat4;
  let x_229 : vec3<f32> = (vec3<f32>(x_226, x_226, x_226) * x_228);
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : f32 = u_xlat3.w;
  u_xlat24 = max(x_233, 0.00009999999747378752f);
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : f32 = u_xlat24;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) / vec3<f32>(x_237, x_237, x_237));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_246 : vec4<f32> = vs_TEXCOORD6;
  let x_247 : vec2<f32> = vec2<f32>(x_246.x, x_246.y);
  let x_249 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_247.x, x_247.y, x_249);
  let x_261 : vec3<f32> = txVec0;
  let x_263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_261.xy, x_261.z);
  u_xlat24 = x_263;
  let x_274 : f32 = x_271.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_274) + 1.0f);
  let x_278 : f32 = u_xlat24;
  let x_280 : f32 = x_271.x_MainLightShadowParams.x;
  let x_283 : f32 = u_xlat1.x;
  u_xlat24 = ((x_278 * x_280) + x_283);
  let x_287 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_287);
  let x_291 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_291 >= 1.0f);
  let x_293 : bool = u_xlatb1;
  let x_294 : bool = u_xlatb26;
  u_xlatb1 = (x_293 | x_294);
  let x_296 : bool = u_xlatb1;
  let x_297 : f32 = u_xlat24;
  u_xlat24 = select(x_297, 1.0f, x_296);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_303 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (x_299 + -(x_303));
  let x_306 : vec3<f32> = u_xlat4;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_306, x_307);
  let x_312 : f32 = u_xlat1.x;
  let x_314 : f32 = x_271.x_MainLightShadowParams.z;
  let x_317 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat26 = ((x_312 * x_314) + x_317);
  let x_319 : f32 = u_xlat26;
  u_xlat26 = clamp(x_319, 0.0f, 1.0f);
  let x_322 : f32 = u_xlat24;
  u_xlat27 = (-(x_322) + 1.0f);
  let x_325 : f32 = u_xlat26;
  let x_326 : f32 = u_xlat27;
  let x_328 : f32 = u_xlat24;
  u_xlat24 = ((x_325 * x_326) + x_328);
  let x_330 : f32 = u_xlat24;
  let x_336 : f32 = x_334.unity_LightData.z;
  u_xlat24 = (x_330 * x_336);
  let x_338 : f32 = u_xlat24;
  let x_341 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec3<f32> = u_xlat2;
  let x_346 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(x_344, vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : f32 = u_xlat24;
  u_xlat24 = clamp(x_349, 0.0f, 1.0f);
  let x_351 : f32 = u_xlat24;
  let x_353 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_351, x_351, x_351) * x_353);
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_355.y, x_355.z, x_355.w) * x_357);
  let x_360 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_362 : f32 = x_334.unity_LightData.y;
  u_xlat24 = min(x_360, x_362);
  let x_366 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_366));
  let x_370 : f32 = u_xlat1.x;
  let x_373 : f32 = x_271.x_AdditionalShadowFadeParams.x;
  let x_376 : f32 = x_271.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_370 * x_373) + x_376);
  let x_380 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_380, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_394 : u32 = u_xlatu_loop_1;
    let x_395 : u32 = u_xlatu24;
    if ((x_394 < x_395)) {
    } else {
      break;
    }
    let x_398 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_398 >> 2u);
    let x_402 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_402 & 3u));
    let x_405 : u32 = u_xlatu27;
    let x_408 : vec4<f32> = x_334.unity_LightIndices[bitcast<i32>(x_405)];
    let x_418 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_423 : vec4<u32> = indexable[x_418];
    u_xlat27 = dot(x_408, bitcast<vec4<f32>>(x_423));
    let x_427 : f32 = u_xlat27;
    u_xlati27 = i32(x_427);
    let x_430 : vec3<f32> = vs_TEXCOORD1;
    let x_441 : i32 = u_xlati27;
    let x_443 : vec4<f32> = x_440.x_AdditionalLightsPosition[x_441];
    let x_446 : i32 = u_xlati27;
    let x_448 : vec4<f32> = x_440.x_AdditionalLightsPosition[x_446];
    u_xlat6 = ((-(x_430) * vec3<f32>(x_443.w, x_443.w, x_443.w)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
    let x_452 : vec3<f32> = u_xlat6;
    let x_453 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_452, x_453);
    let x_455 : f32 = u_xlat28;
    u_xlat28 = max(x_455, 0.00006103515625f);
    let x_459 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_459);
    let x_461 : f32 = u_xlat29;
    let x_463 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_461, x_461, x_461) * x_463);
    let x_465 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_465);
    let x_467 : f32 = u_xlat28;
    let x_468 : i32 = u_xlati27;
    let x_470 : f32 = x_440.x_AdditionalLightsAttenuation[x_468].x;
    u_xlat28 = (x_467 * x_470);
    let x_472 : f32 = u_xlat28;
    let x_474 : f32 = u_xlat28;
    u_xlat28 = ((-(x_472) * x_474) + 1.0f);
    let x_477 : f32 = u_xlat28;
    u_xlat28 = max(x_477, 0.0f);
    let x_479 : f32 = u_xlat28;
    let x_480 : f32 = u_xlat28;
    u_xlat28 = (x_479 * x_480);
    let x_482 : f32 = u_xlat28;
    let x_483 : f32 = u_xlat29;
    u_xlat28 = (x_482 * x_483);
    let x_485 : i32 = u_xlati27;
    let x_487 : vec4<f32> = x_440.x_AdditionalLightsSpotDir[x_485];
    let x_489 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), x_489);
    let x_491 : f32 = u_xlat29;
    let x_492 : i32 = u_xlati27;
    let x_494 : f32 = x_440.x_AdditionalLightsAttenuation[x_492].z;
    let x_496 : i32 = u_xlati27;
    let x_498 : f32 = x_440.x_AdditionalLightsAttenuation[x_496].w;
    u_xlat29 = ((x_491 * x_494) + x_498);
    let x_500 : f32 = u_xlat29;
    u_xlat29 = clamp(x_500, 0.0f, 1.0f);
    let x_502 : f32 = u_xlat29;
    let x_503 : f32 = u_xlat29;
    u_xlat29 = (x_502 * x_503);
    let x_505 : f32 = u_xlat28;
    let x_506 : f32 = u_xlat29;
    u_xlat28 = (x_505 * x_506);
    let x_510 : i32 = u_xlati27;
    let x_512 : f32 = x_271.x_AdditionalShadowParams[x_510].w;
    u_xlati29 = i32(x_512);
    let x_515 : i32 = u_xlati29;
    u_xlatb30 = (x_515 >= 0i);
    let x_517 : bool = u_xlatb30;
    if (x_517) {
      let x_521 : i32 = u_xlati27;
      let x_523 : f32 = x_271.x_AdditionalShadowParams[x_521].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_523, x_523, x_523, x_523))));
      let x_528 : bool = u_xlatb30;
      if (x_528) {
        let x_533 : vec3<f32> = u_xlat6;
        let x_536 : vec3<f32> = u_xlat6;
        let x_539 : vec4<bool> = (abs(vec4<f32>(x_533.z, x_533.z, x_533.y, x_533.z)) >= abs(vec4<f32>(x_536.x, x_536.y, x_536.x, x_536.x)));
        let x_541 : vec3<bool> = vec3<bool>(x_539.x, x_539.y, x_539.z);
        let x_542 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_541.x, x_541.y, x_541.z, x_542.w);
        let x_545 : bool = u_xlatb7.y;
        let x_547 : bool = u_xlatb7.x;
        u_xlatb30 = (x_545 & x_547);
        let x_549 : vec3<f32> = u_xlat6;
        let x_552 : vec4<bool> = (-(vec4<f32>(x_549.z, x_549.y, x_549.z, x_549.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_553 : vec3<bool> = vec3<bool>(x_552.x, x_552.y, x_552.w);
        let x_554 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_553.x, x_553.y, x_554.z, x_553.z);
        let x_558 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_558);
        let x_564 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_564);
        let x_571 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_571);
        let x_575 : bool = u_xlatb7.z;
        if (x_575) {
          let x_580 : f32 = u_xlat7.y;
          x_576 = x_580;
        } else {
          let x_582 : f32 = u_xlat31;
          x_576 = x_582;
        }
        let x_583 : f32 = x_576;
        u_xlat15 = x_583;
        let x_585 : bool = u_xlatb30;
        if (x_585) {
          let x_590 : f32 = u_xlat7.x;
          x_586 = x_590;
        } else {
          let x_592 : f32 = u_xlat15;
          x_586 = x_592;
        }
        let x_593 : f32 = x_586;
        u_xlat30 = x_593;
        let x_594 : i32 = u_xlati27;
        let x_596 : f32 = x_271.x_AdditionalShadowParams[x_594].w;
        u_xlat7.x = trunc(x_596);
        let x_599 : f32 = u_xlat30;
        let x_601 : f32 = u_xlat7.x;
        u_xlat30 = (x_599 + x_601);
        let x_603 : f32 = u_xlat30;
        u_xlati29 = i32(x_603);
      }
      let x_605 : i32 = u_xlati29;
      u_xlati29 = (x_605 << bitcast<u32>(2i));
      let x_607 : vec3<f32> = vs_TEXCOORD1;
      let x_610 : i32 = u_xlati29;
      let x_613 : i32 = u_xlati29;
      let x_617 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_610 + 1i) / 4i)][((x_613 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_607.y, x_607.y, x_607.y, x_607.y) * x_617);
      let x_619 : i32 = u_xlati29;
      let x_621 : i32 = u_xlati29;
      let x_624 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[(x_619 / 4i)][(x_621 % 4i)];
      let x_625 : vec3<f32> = vs_TEXCOORD1;
      let x_628 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_624 * vec4<f32>(x_625.x, x_625.x, x_625.x, x_625.x)) + x_628);
      let x_630 : i32 = u_xlati29;
      let x_633 : i32 = u_xlati29;
      let x_637 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_630 + 2i) / 4i)][((x_633 + 2i) % 4i)];
      let x_638 : vec3<f32> = vs_TEXCOORD1;
      let x_641 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_637 * vec4<f32>(x_638.z, x_638.z, x_638.z, x_638.z)) + x_641);
      let x_643 : vec4<f32> = u_xlat7;
      let x_644 : i32 = u_xlati29;
      let x_647 : i32 = u_xlati29;
      let x_651 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_644 + 3i) / 4i)][((x_647 + 3i) % 4i)];
      u_xlat7 = (x_643 + x_651);
      let x_653 : vec4<f32> = u_xlat7;
      let x_655 : vec4<f32> = u_xlat7;
      let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) / vec3<f32>(x_655.w, x_655.w, x_655.w));
      let x_658 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
      let x_661 : vec4<f32> = u_xlat7;
      let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
      let x_664 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_662.x, x_662.y, x_664);
      let x_672 : vec3<f32> = txVec1;
      let x_674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_672.xy, x_672.z);
      u_xlat29 = x_674;
      let x_675 : i32 = u_xlati27;
      let x_677 : f32 = x_271.x_AdditionalShadowParams[x_675].x;
      u_xlat30 = (1.0f + -(x_677));
      let x_680 : f32 = u_xlat29;
      let x_681 : i32 = u_xlati27;
      let x_683 : f32 = x_271.x_AdditionalShadowParams[x_681].x;
      let x_685 : f32 = u_xlat30;
      u_xlat29 = ((x_680 * x_683) + x_685);
      let x_688 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_688);
      let x_691 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_691 >= 1.0f);
      let x_694 : bool = u_xlatb30;
      let x_696 : bool = u_xlatb7.x;
      u_xlatb30 = (x_694 | x_696);
      let x_698 : bool = u_xlatb30;
      let x_699 : f32 = u_xlat29;
      u_xlat29 = select(x_699, 1.0f, x_698);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_702 : f32 = u_xlat29;
    u_xlat30 = (-(x_702) + 1.0f);
    let x_706 : f32 = u_xlat1.x;
    let x_707 : f32 = u_xlat30;
    let x_709 : f32 = u_xlat29;
    u_xlat29 = ((x_706 * x_707) + x_709);
    let x_711 : f32 = u_xlat28;
    let x_712 : f32 = u_xlat29;
    u_xlat28 = (x_711 * x_712);
    let x_714 : f32 = u_xlat28;
    let x_716 : i32 = u_xlati27;
    let x_718 : vec4<f32> = x_440.x_AdditionalLightsColor[x_716];
    let x_720 : vec3<f32> = (vec3<f32>(x_714, x_714, x_714) * vec3<f32>(x_718.x, x_718.y, x_718.z));
    let x_721 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    let x_723 : vec3<f32> = u_xlat2;
    let x_724 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_723, x_724);
    let x_726 : f32 = u_xlat27;
    u_xlat27 = clamp(x_726, 0.0f, 1.0f);
    let x_728 : f32 = u_xlat27;
    let x_730 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z));
    let x_733 : vec3<f32> = u_xlat6;
    let x_734 : vec4<f32> = u_xlat1;
    let x_737 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_733 * vec3<f32>(x_734.y, x_734.z, x_734.w)) + x_737);

    continuing {
      let x_739 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_739 + bitcast<u32>(1i));
    }
  }
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec4<f32> = u_xlat1;
  let x_746 : vec3<f32> = u_xlat4;
  let x_747 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.y, x_743.z, x_743.w)) + x_746);
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec3<f32> = u_xlat5;
  let x_751 : vec4<f32> = u_xlat1;
  let x_753 : vec3<f32> = (x_750 + vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : f32 = u_xlat8;
  let x_757 : f32 = u_xlat8;
  u_xlat8 = (x_756 * -(x_757));
  let x_760 : f32 = u_xlat8;
  u_xlat8 = exp2(x_760);
  let x_762 : vec4<f32> = u_xlat1;
  let x_765 : vec4<f32> = x_28.unity_FogColor;
  let x_768 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) + -(vec3<f32>(x_765.x, x_765.y, x_765.z)));
  let x_769 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_773 : f32 = u_xlat8;
  let x_775 : vec4<f32> = u_xlat1;
  let x_779 : vec4<f32> = x_28.unity_FogColor;
  let x_781 : vec3<f32> = ((vec3<f32>(x_773, x_773, x_773) * vec3<f32>(x_775.x, x_775.y, x_775.z)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_785 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_785 == 1.0f);
  let x_787 : bool = u_xlatb8;
  let x_788 : bool = u_xlatb16;
  u_xlatb8 = (x_787 | x_788);
  let x_790 : bool = u_xlatb8;
  if (x_790) {
    let x_795 : f32 = u_xlat0.x;
    x_791 = x_795;
  } else {
    x_791 = 1.0f;
  }
  let x_797 : f32 = x_791;
  SV_Target0.w = x_797;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


