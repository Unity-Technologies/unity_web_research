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

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(3) var<uniform> x_331 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_465 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_701 : AdditionalLights;

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

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_123 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_358 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_848 : f32;
  var x_859 : f32;
  var txVec1 : vec3<f32>;
  var x_976 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_83 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_89) + x_94);
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_97, x_98);
  let x_100 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_100);
  let x_102 : f32 = u_xlat25;
  let x_104 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_102, x_102, x_102) * x_104);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_110;
  let x_113 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_113;
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_118;
  let x_121 : bool = u_xlatb13;
  if (x_121) {
    let x_126 : vec3<f32> = u_xlat2;
    x_123 = x_126;
  } else {
    let x_128 : vec4<f32> = u_xlat3;
    x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  }
  let x_130 : vec3<f32> = x_123;
  u_xlat13 = x_130;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  let x_133 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_132, x_133);
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142);
  let x_147 : f32 = vs_TEXCOORD7.y;
  let x_149 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat38 = (x_147 * x_149);
  let x_152 : f32 = x_29.unity_MatrixV[0i].z;
  let x_154 : f32 = vs_TEXCOORD7.x;
  let x_156 : f32 = u_xlat38;
  u_xlat38 = ((x_152 * x_154) + x_156);
  let x_159 : f32 = x_29.unity_MatrixV[2i].z;
  let x_161 : f32 = vs_TEXCOORD7.z;
  let x_163 : f32 = u_xlat38;
  u_xlat38 = ((x_159 * x_161) + x_163);
  let x_165 : f32 = u_xlat38;
  let x_168 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat38 = (x_165 + x_168);
  let x_170 : f32 = u_xlat38;
  let x_174 : f32 = x_29.x_ProjectionParams.y;
  u_xlat38 = (-(x_170) + -(x_174));
  let x_177 : f32 = u_xlat38;
  u_xlat38 = max(x_177, 0.0f);
  let x_179 : f32 = u_xlat38;
  let x_182 : f32 = x_29.unity_FogParams.x;
  u_xlat38 = (x_179 * x_182);
  let x_189 : vec4<f32> = vs_TEXCOORD0;
  let x_192 : f32 = x_29.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_189.z, x_189.w), x_192);
  u_xlat3 = x_193;
  let x_199 : vec4<f32> = vs_TEXCOORD0;
  let x_202 : f32 = x_29.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_199.z, x_199.w), x_202);
  u_xlat4 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  let x_205 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_212, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : f32 = u_xlat3.x;
  u_xlat3.x = (x_218 + 0.5f);
  let x_222 : vec4<f32> = u_xlat3;
  let x_224 : vec3<f32> = u_xlat4;
  let x_225 : vec3<f32> = (vec3<f32>(x_222.x, x_222.x, x_222.x) * x_224);
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : f32 = u_xlat3.w;
  u_xlat39 = max(x_230, 0.00009999999747378752f);
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : f32 = u_xlat39;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) / vec3<f32>(x_235, x_235, x_235));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : f32 = u_xlat1;
  u_xlat39 = ((-(x_240) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_245 : f32 = u_xlat39;
  u_xlat4.x = (-(x_245) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat39;
  u_xlat16 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat39 = (x_277 * x_278);
  let x_280 : f32 = u_xlat39;
  u_xlat39 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat39;
  let x_285 : f32 = u_xlat39;
  u_xlat5 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_291 : f32 = u_xlat4.x;
  u_xlat36 = (x_289 + x_291);
  let x_293 : f32 = u_xlat36;
  u_xlat36 = clamp(x_293, 0.0f, 1.0f);
  let x_295 : f32 = u_xlat39;
  u_xlat4.x = ((x_295 * 4.0f) + 2.0f);
  let x_303 : vec4<f32> = vs_TEXCOORD8;
  let x_304 : vec2<f32> = vec2<f32>(x_303.x, x_303.y);
  let x_306 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_304.x, x_304.y, x_306);
  let x_319 : vec3<f32> = txVec0;
  let x_321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_319.xy, x_319.z);
  u_xlat17.x = x_321;
  let x_334 : f32 = x_331.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_334) + 1.0f);
  let x_338 : f32 = u_xlat17.x;
  let x_340 : f32 = x_331.x_MainLightShadowParams.x;
  let x_342 : f32 = u_xlat29;
  u_xlat17.x = ((x_338 * x_340) + x_342);
  let x_347 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (0.0f >= x_347);
  let x_351 : f32 = vs_TEXCOORD8.z;
  u_xlatb41 = (x_351 >= 1.0f);
  let x_353 : bool = u_xlatb41;
  let x_354 : bool = u_xlatb29;
  u_xlatb29 = (x_353 | x_354);
  let x_356 : bool = u_xlatb29;
  if (x_356) {
    x_358 = 1.0f;
  } else {
    let x_363 : f32 = u_xlat17.x;
    x_358 = x_363;
  }
  let x_364 : f32 = x_358;
  u_xlat17.x = x_364;
  let x_367 : vec3<f32> = vs_TEXCOORD7;
  let x_369 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_371 : vec3<f32> = (x_367 + -(x_369));
  let x_372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat6;
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_380 : f32 = u_xlat29;
  let x_382 : f32 = x_331.x_MainLightShadowParams.z;
  let x_385 : f32 = x_331.x_MainLightShadowParams.w;
  u_xlat41 = ((x_380 * x_382) + x_385);
  let x_387 : f32 = u_xlat41;
  u_xlat41 = clamp(x_387, 0.0f, 1.0f);
  let x_390 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_390) + 1.0f);
  let x_394 : f32 = u_xlat41;
  let x_396 : f32 = u_xlat6.x;
  let x_399 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_394 * x_396) + x_399);
  let x_402 : vec3<f32> = u_xlat13;
  let x_404 : vec3<f32> = u_xlat2;
  u_xlat41 = dot(-(x_402), x_404);
  let x_406 : f32 = u_xlat41;
  let x_407 : f32 = u_xlat41;
  u_xlat41 = (x_406 + x_407);
  let x_409 : vec3<f32> = u_xlat2;
  let x_410 : f32 = u_xlat41;
  let x_414 : vec3<f32> = u_xlat13;
  let x_416 : vec3<f32> = ((x_409 * -(vec3<f32>(x_410, x_410, x_410))) + -(x_414));
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec3<f32> = u_xlat2;
  let x_420 : vec3<f32> = u_xlat13;
  u_xlat41 = dot(x_419, x_420);
  let x_422 : f32 = u_xlat41;
  u_xlat41 = clamp(x_422, 0.0f, 1.0f);
  let x_424 : f32 = u_xlat41;
  u_xlat41 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat41;
  let x_428 : f32 = u_xlat41;
  u_xlat41 = (x_427 * x_428);
  let x_430 : f32 = u_xlat41;
  let x_431 : f32 = u_xlat41;
  u_xlat41 = (x_430 * x_431);
  let x_434 : f32 = u_xlat1;
  u_xlat42 = ((-(x_434) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_440 : f32 = u_xlat1;
  let x_441 : f32 = u_xlat42;
  u_xlat1 = (x_440 * x_441);
  let x_443 : f32 = u_xlat1;
  u_xlat1 = (x_443 * 6.0f);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : f32 = u_xlat1;
  let x_457 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_454.x, x_454.y, x_454.z), x_456);
  u_xlat6 = x_457;
  let x_459 : f32 = u_xlat6.w;
  u_xlat1 = (x_459 + -1.0f);
  let x_467 : f32 = x_465.unity_SpecCube0_HDR.w;
  let x_468 : f32 = u_xlat1;
  u_xlat1 = ((x_467 * x_468) + 1.0f);
  let x_471 : f32 = u_xlat1;
  u_xlat1 = max(x_471, 0.0f);
  let x_473 : f32 = u_xlat1;
  u_xlat1 = log2(x_473);
  let x_475 : f32 = u_xlat1;
  let x_477 : f32 = x_465.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_475 * x_477);
  let x_479 : f32 = u_xlat1;
  u_xlat1 = exp2(x_479);
  let x_481 : f32 = u_xlat1;
  let x_483 : f32 = x_465.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_481 * x_483);
  let x_485 : vec4<f32> = u_xlat6;
  let x_487 : f32 = u_xlat1;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487, x_487, x_487));
  let x_490 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_494 : f32 = u_xlat39;
  let x_496 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_494, x_494) * vec2<f32>(x_496, x_496)) + vec2<f32>(-1.0f, 1.0f));
  let x_502 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_502);
  let x_505 : vec4<f32> = u_xlat0;
  let x_508 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_505.x, x_505.y, x_505.z)) + vec3<f32>(x_508, x_508, x_508));
  let x_511 : f32 = u_xlat41;
  let x_513 : vec3<f32> = u_xlat19;
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_511, x_511, x_511) * x_513) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : f32 = u_xlat1;
  let x_520 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_518, x_518, x_518) * x_520);
  let x_522 : vec4<f32> = u_xlat6;
  let x_524 : vec3<f32> = u_xlat19;
  let x_525 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) * x_524);
  let x_526 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat3;
  let x_530 : vec3<f32> = u_xlat16;
  let x_532 : vec4<f32> = u_xlat6;
  let x_534 : vec3<f32> = ((vec3<f32>(x_528.x, x_528.y, x_528.z) * x_530) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = u_xlat17.x;
  let x_540 : f32 = x_465.unity_LightData.z;
  u_xlat36 = (x_538 * x_540);
  let x_542 : vec3<f32> = u_xlat2;
  let x_545 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_542, vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : f32 = u_xlat1;
  u_xlat1 = clamp(x_548, 0.0f, 1.0f);
  let x_550 : f32 = u_xlat36;
  let x_551 : f32 = u_xlat1;
  u_xlat36 = (x_550 * x_551);
  let x_553 : f32 = u_xlat36;
  let x_556 : vec4<f32> = x_29.x_MainLightColor;
  let x_558 : vec3<f32> = (vec3<f32>(x_553, x_553, x_553) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat13;
  let x_563 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_561 + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec3<f32> = u_xlat19;
  let x_567 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_566, x_567);
  let x_569 : f32 = u_xlat36;
  u_xlat36 = max(x_569, 1.17549435e-38f);
  let x_572 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat36;
  let x_576 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = u_xlat2;
  let x_579 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_578, x_579);
  let x_581 : f32 = u_xlat36;
  u_xlat36 = clamp(x_581, 0.0f, 1.0f);
  let x_584 : vec4<f32> = x_29.x_MainLightPosition;
  let x_586 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_584.x, x_584.y, x_584.z), x_586);
  let x_588 : f32 = u_xlat1;
  u_xlat1 = clamp(x_588, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat36;
  let x_591 : f32 = u_xlat36;
  u_xlat36 = (x_590 * x_591);
  let x_593 : f32 = u_xlat36;
  let x_595 : f32 = u_xlat7.x;
  u_xlat36 = ((x_593 * x_595) + 1.00001001358032226562f);
  let x_599 : f32 = u_xlat1;
  let x_600 : f32 = u_xlat1;
  u_xlat1 = (x_599 * x_600);
  let x_602 : f32 = u_xlat36;
  let x_603 : f32 = u_xlat36;
  u_xlat36 = (x_602 * x_603);
  let x_605 : f32 = u_xlat1;
  u_xlat1 = max(x_605, 0.10000000149011611938f);
  let x_608 : f32 = u_xlat36;
  let x_609 : f32 = u_xlat1;
  u_xlat36 = (x_608 * x_609);
  let x_612 : f32 = u_xlat4.x;
  let x_613 : f32 = u_xlat36;
  u_xlat36 = (x_612 * x_613);
  let x_615 : f32 = u_xlat5;
  let x_616 : f32 = u_xlat36;
  u_xlat36 = (x_615 / x_616);
  let x_618 : vec4<f32> = u_xlat0;
  let x_620 : f32 = u_xlat36;
  let x_623 : vec3<f32> = u_xlat16;
  u_xlat19 = ((vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_620, x_620, x_620)) + x_623);
  let x_626 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_628 : f32 = x_465.unity_LightData.y;
  u_xlat36 = min(x_626, x_628);
  let x_632 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_632));
  let x_635 : f32 = u_xlat29;
  let x_638 : f32 = x_331.x_AdditionalShadowFadeParams.x;
  let x_641 : f32 = x_331.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_635 * x_638) + x_641);
  let x_643 : f32 = u_xlat1;
  u_xlat1 = clamp(x_643, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_655 : u32 = u_xlatu_loop_1;
    let x_656 : u32 = u_xlatu36;
    if ((x_655 < x_656)) {
    } else {
      break;
    }
    let x_659 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_659 >> 2u);
    let x_663 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_663 & 3u));
    let x_666 : u32 = u_xlatu42;
    let x_669 : vec4<f32> = x_465.unity_LightIndices[bitcast<i32>(x_666)];
    let x_679 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_684 : vec4<u32> = indexable[x_679];
    u_xlat42 = dot(x_669, bitcast<vec4<f32>>(x_684));
    let x_688 : f32 = u_xlat42;
    u_xlati42 = i32(x_688);
    let x_691 : vec3<f32> = vs_TEXCOORD7;
    let x_702 : i32 = u_xlati42;
    let x_704 : vec4<f32> = x_701.x_AdditionalLightsPosition[x_702];
    let x_707 : i32 = u_xlati42;
    let x_709 : vec4<f32> = x_701.x_AdditionalLightsPosition[x_707];
    u_xlat8 = ((-(x_691) * vec3<f32>(x_704.w, x_704.w, x_704.w)) + vec3<f32>(x_709.x, x_709.y, x_709.z));
    let x_713 : vec3<f32> = u_xlat8;
    let x_714 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_713, x_714);
    let x_716 : f32 = u_xlat44;
    u_xlat44 = max(x_716, 0.00006103515625f);
    let x_720 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_720);
    let x_723 : vec3<f32> = u_xlat8;
    let x_724 : f32 = u_xlat9;
    u_xlat21 = (x_723 * vec3<f32>(x_724, x_724, x_724));
    let x_728 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_728);
    let x_731 : f32 = u_xlat44;
    let x_732 : i32 = u_xlati42;
    let x_734 : f32 = x_701.x_AdditionalLightsAttenuation[x_732].x;
    u_xlat44 = (x_731 * x_734);
    let x_736 : f32 = u_xlat44;
    let x_738 : f32 = u_xlat44;
    u_xlat44 = ((-(x_736) * x_738) + 1.0f);
    let x_741 : f32 = u_xlat44;
    u_xlat44 = max(x_741, 0.0f);
    let x_743 : f32 = u_xlat44;
    let x_744 : f32 = u_xlat44;
    u_xlat44 = (x_743 * x_744);
    let x_746 : f32 = u_xlat44;
    let x_748 : f32 = u_xlat10.x;
    u_xlat44 = (x_746 * x_748);
    let x_750 : i32 = u_xlati42;
    let x_752 : vec4<f32> = x_701.x_AdditionalLightsSpotDir[x_750];
    let x_754 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), x_754);
    let x_758 : f32 = u_xlat10.x;
    let x_759 : i32 = u_xlati42;
    let x_761 : f32 = x_701.x_AdditionalLightsAttenuation[x_759].z;
    let x_763 : i32 = u_xlati42;
    let x_765 : f32 = x_701.x_AdditionalLightsAttenuation[x_763].w;
    u_xlat10.x = ((x_758 * x_761) + x_765);
    let x_769 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_769, 0.0f, 1.0f);
    let x_773 : f32 = u_xlat10.x;
    let x_775 : f32 = u_xlat10.x;
    u_xlat10.x = (x_773 * x_775);
    let x_778 : f32 = u_xlat44;
    let x_780 : f32 = u_xlat10.x;
    u_xlat44 = (x_778 * x_780);
    let x_784 : i32 = u_xlati42;
    let x_786 : f32 = x_331.x_AdditionalShadowParams[x_784].w;
    u_xlati10 = i32(x_786);
    let x_791 : i32 = u_xlati10;
    u_xlatb22.x = (x_791 >= 0i);
    let x_795 : bool = u_xlatb22.x;
    if (x_795) {
      let x_799 : i32 = u_xlati42;
      let x_801 : f32 = x_331.x_AdditionalShadowParams[x_799].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_801, x_801, x_801, x_801))));
      let x_808 : bool = u_xlatb22.x;
      if (x_808) {
        let x_811 : vec3<f32> = u_xlat21;
        let x_814 : vec3<f32> = u_xlat21;
        let x_817 : vec4<bool> = (abs(vec4<f32>(x_811.z, x_811.z, x_811.y, x_811.y)) >= abs(vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.x)));
        u_xlatb22 = vec3<bool>(x_817.x, x_817.y, x_817.z);
        let x_820 : bool = u_xlatb22.y;
        let x_822 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_820 & x_822);
        let x_826 : vec3<f32> = u_xlat21;
        let x_829 : vec4<bool> = (-(vec4<f32>(x_826.z, x_826.y, x_826.x, x_826.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_829.x, x_829.y, x_829.z);
        let x_833 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_833);
        let x_838 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_838);
        let x_844 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_844);
        let x_847 : bool = u_xlatb22.z;
        if (x_847) {
          let x_852 : f32 = u_xlat11.y;
          x_848 = x_852;
        } else {
          let x_854 : f32 = u_xlat34;
          x_848 = x_854;
        }
        let x_855 : f32 = x_848;
        u_xlat34 = x_855;
        let x_858 : bool = u_xlatb22.x;
        if (x_858) {
          let x_863 : f32 = u_xlat11.x;
          x_859 = x_863;
        } else {
          let x_865 : f32 = u_xlat34;
          x_859 = x_865;
        }
        let x_866 : f32 = x_859;
        u_xlat22 = x_866;
        let x_867 : i32 = u_xlati42;
        let x_869 : f32 = x_331.x_AdditionalShadowParams[x_867].w;
        u_xlat34 = trunc(x_869);
        let x_871 : f32 = u_xlat22;
        let x_872 : f32 = u_xlat34;
        u_xlat22 = (x_871 + x_872);
        let x_874 : f32 = u_xlat22;
        u_xlati10 = i32(x_874);
      }
      let x_876 : i32 = u_xlati10;
      u_xlati10 = (x_876 << bitcast<u32>(2i));
      let x_878 : vec3<f32> = vs_TEXCOORD7;
      let x_881 : i32 = u_xlati10;
      let x_884 : i32 = u_xlati10;
      let x_888 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[((x_881 + 1i) / 4i)][((x_884 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_878.y, x_878.y, x_878.y, x_878.y) * x_888);
      let x_890 : i32 = u_xlati10;
      let x_892 : i32 = u_xlati10;
      let x_895 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[(x_890 / 4i)][(x_892 % 4i)];
      let x_896 : vec3<f32> = vs_TEXCOORD7;
      let x_899 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_895 * vec4<f32>(x_896.x, x_896.x, x_896.x, x_896.x)) + x_899);
      let x_901 : i32 = u_xlati10;
      let x_904 : i32 = u_xlati10;
      let x_908 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[((x_901 + 2i) / 4i)][((x_904 + 2i) % 4i)];
      let x_909 : vec3<f32> = vs_TEXCOORD7;
      let x_912 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_908 * vec4<f32>(x_909.z, x_909.z, x_909.z, x_909.z)) + x_912);
      let x_914 : vec4<f32> = u_xlat11;
      let x_915 : i32 = u_xlati10;
      let x_918 : i32 = u_xlati10;
      let x_922 : vec4<f32> = x_331.x_AdditionalLightsWorldToShadow[((x_915 + 3i) / 4i)][((x_918 + 3i) % 4i)];
      u_xlat10 = (x_914 + x_922);
      let x_924 : vec4<f32> = u_xlat10;
      let x_926 : vec4<f32> = u_xlat10;
      let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) / vec3<f32>(x_926.w, x_926.w, x_926.w));
      let x_929 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
      let x_932 : vec4<f32> = u_xlat10;
      let x_933 : vec2<f32> = vec2<f32>(x_932.x, x_932.y);
      let x_935 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_933.x, x_933.y, x_935);
      let x_943 : vec3<f32> = txVec1;
      let x_945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_943.xy, x_943.z);
      u_xlat10.x = x_945;
      let x_947 : i32 = u_xlati42;
      let x_949 : f32 = x_331.x_AdditionalShadowParams[x_947].x;
      u_xlat22 = (1.0f + -(x_949));
      let x_953 : f32 = u_xlat10.x;
      let x_954 : i32 = u_xlati42;
      let x_956 : f32 = x_331.x_AdditionalShadowParams[x_954].x;
      let x_958 : f32 = u_xlat22;
      u_xlat10.x = ((x_953 * x_956) + x_958);
      let x_962 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_962);
      let x_967 : f32 = u_xlat10.z;
      u_xlatb34 = (x_967 >= 1.0f);
      let x_969 : bool = u_xlatb34;
      let x_971 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_969 | x_971);
      let x_975 : bool = u_xlatb22.x;
      if (x_975) {
        x_976 = 1.0f;
      } else {
        let x_981 : f32 = u_xlat10.x;
        x_976 = x_981;
      }
      let x_982 : f32 = x_976;
      u_xlat10.x = x_982;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_987 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_987) + 1.0f);
    let x_990 : f32 = u_xlat1;
    let x_991 : f32 = u_xlat22;
    let x_994 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_990 * x_991) + x_994);
    let x_997 : f32 = u_xlat44;
    let x_999 : f32 = u_xlat10.x;
    u_xlat44 = (x_997 * x_999);
    let x_1001 : vec3<f32> = u_xlat2;
    let x_1002 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1001, x_1002);
    let x_1006 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1006, 0.0f, 1.0f);
    let x_1009 : f32 = u_xlat44;
    let x_1011 : f32 = u_xlat10.x;
    u_xlat44 = (x_1009 * x_1011);
    let x_1013 : f32 = u_xlat44;
    let x_1015 : i32 = u_xlati42;
    let x_1017 : vec4<f32> = x_701.x_AdditionalLightsColor[x_1015];
    let x_1019 : vec3<f32> = (vec3<f32>(x_1013, x_1013, x_1013) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
    let x_1020 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
    let x_1022 : vec3<f32> = u_xlat8;
    let x_1023 : f32 = u_xlat9;
    let x_1026 : vec3<f32> = u_xlat13;
    u_xlat8 = ((x_1022 * vec3<f32>(x_1023, x_1023, x_1023)) + x_1026);
    let x_1028 : vec3<f32> = u_xlat8;
    let x_1029 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1028, x_1029);
    let x_1031 : f32 = u_xlat42;
    u_xlat42 = max(x_1031, 1.17549435e-38f);
    let x_1033 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1033);
    let x_1035 : f32 = u_xlat42;
    let x_1037 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1035, x_1035, x_1035) * x_1037);
    let x_1039 : vec3<f32> = u_xlat2;
    let x_1040 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1039, x_1040);
    let x_1042 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1042, 0.0f, 1.0f);
    let x_1044 : vec3<f32> = u_xlat21;
    let x_1045 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1044, x_1045);
    let x_1049 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1049, 0.0f, 1.0f);
    let x_1052 : f32 = u_xlat42;
    let x_1053 : f32 = u_xlat42;
    u_xlat42 = (x_1052 * x_1053);
    let x_1055 : f32 = u_xlat42;
    let x_1057 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1055 * x_1057) + 1.00001001358032226562f);
    let x_1061 : f32 = u_xlat8.x;
    let x_1063 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1061 * x_1063);
    let x_1066 : f32 = u_xlat42;
    let x_1067 : f32 = u_xlat42;
    u_xlat42 = (x_1066 * x_1067);
    let x_1070 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1070, 0.10000000149011611938f);
    let x_1073 : f32 = u_xlat42;
    let x_1075 : f32 = u_xlat8.x;
    u_xlat42 = (x_1073 * x_1075);
    let x_1078 : f32 = u_xlat4.x;
    let x_1079 : f32 = u_xlat42;
    u_xlat42 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat5;
    let x_1082 : f32 = u_xlat42;
    u_xlat42 = (x_1081 / x_1082);
    let x_1084 : vec4<f32> = u_xlat0;
    let x_1086 : f32 = u_xlat42;
    let x_1089 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1086, x_1086, x_1086)) + x_1089);
    let x_1091 : vec3<f32> = u_xlat8;
    let x_1092 : vec4<f32> = u_xlat10;
    let x_1095 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1091 * vec3<f32>(x_1092.x, x_1092.y, x_1092.z)) + x_1095);

    continuing {
      let x_1097 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1097 + bitcast<u32>(1i));
    }
  }
  let x_1099 : vec3<f32> = u_xlat19;
  let x_1100 : vec4<f32> = u_xlat6;
  let x_1103 : vec4<f32> = u_xlat3;
  let x_1105 : vec3<f32> = ((x_1099 * vec3<f32>(x_1100.x, x_1100.y, x_1100.z)) + vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1108 : vec3<f32> = u_xlat17;
  let x_1109 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = (x_1108 + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : f32 = u_xlat38;
  let x_1115 : f32 = u_xlat38;
  u_xlat36 = (x_1114 * -(x_1115));
  let x_1118 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1118);
  let x_1120 : vec4<f32> = u_xlat0;
  let x_1123 : vec4<f32> = x_29.unity_FogColor;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) + -(vec3<f32>(x_1123.x, x_1123.y, x_1123.z)));
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1131 : f32 = u_xlat36;
  let x_1133 : vec4<f32> = u_xlat0;
  let x_1137 : vec4<f32> = x_29.unity_FogColor;
  let x_1139 : vec3<f32> = ((vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
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


