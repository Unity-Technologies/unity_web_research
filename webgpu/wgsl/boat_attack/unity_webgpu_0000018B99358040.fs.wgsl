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
  /* @offset(208) */
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

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb10 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_210 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat29 : f32;

var<private> u_xlatu29 : u32;

var<private> u_xlati29 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlati24 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_738 : AdditionalLights;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlati33 : i32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb15 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_175 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_527 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_868 : f32;
  var x_878 : f32;
  var txVec1 : vec3<f32>;
  var x_1127 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb10 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb10;
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
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat10;
  let x_151 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat10;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_164 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat2.x = x_164;
  let x_167 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2.y = x_167;
  let x_171 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat2.z = x_171;
  let x_173 : bool = u_xlatb1;
  if (x_173) {
    let x_178 : vec3<f32> = u_xlat10;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat2;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat1 = x_181;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat28;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat28;
  u_xlat28 = max(x_196, 0.00006103515625f);
  let x_199 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_199);
  let x_202 : vec3<f32> = vs_TEXCOORD1;
  let x_212 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres0;
  let x_215 : vec3<f32> = (x_202 + -(vec3<f32>(x_212.x, x_212.y, x_212.z)));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec3<f32> = vs_TEXCOORD1;
  let x_221 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres1;
  let x_224 : vec3<f32> = (x_219 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec3<f32> = vs_TEXCOORD1;
  let x_231 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_228 + -(vec3<f32>(x_231.x, x_231.y, x_231.z)));
  let x_236 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_236 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec3<f32> = u_xlat5;
  let x_255 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_254, x_255);
  let x_258 : vec3<f32> = u_xlat6;
  let x_259 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_258, x_259);
  let x_265 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = x_210.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_265 < x_268);
  let x_271 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_271);
  let x_275 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_275);
  let x_279 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_279);
  let x_283 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_283);
  let x_287 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_287);
  let x_293 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_293);
  let x_297 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_297);
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + vec3<f32>(x_302.y, x_302.z, x_302.w));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat3;
  let x_310 : vec3<f32> = max(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_310.x, x_310.y, x_310.z);
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_314, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_320 : f32 = u_xlat29;
  u_xlat29 = (-(x_320) + 4.0f);
  let x_325 : f32 = u_xlat29;
  u_xlatu29 = u32(x_325);
  let x_329 : u32 = u_xlatu29;
  u_xlati29 = (bitcast<i32>(x_329) << bitcast<u32>(2i));
  let x_332 : vec3<f32> = vs_TEXCOORD1;
  let x_334 : i32 = u_xlati29;
  let x_337 : i32 = u_xlati29;
  let x_341 : vec4<f32> = x_210.x_MainLightWorldToShadow[((x_334 + 1i) / 4i)][((x_337 + 1i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.y, x_332.y, x_332.y) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : i32 = u_xlati29;
  let x_348 : i32 = u_xlati29;
  let x_351 : vec4<f32> = x_210.x_MainLightWorldToShadow[(x_346 / 4i)][(x_348 % 4i)];
  let x_353 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec4<f32> = u_xlat3;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.x, x_353.x, x_353.x)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : i32 = u_xlati29;
  let x_364 : i32 = u_xlati29;
  let x_368 : vec4<f32> = x_210.x_MainLightWorldToShadow[((x_361 + 2i) / 4i)][((x_364 + 2i) % 4i)];
  let x_370 : vec3<f32> = vs_TEXCOORD1;
  let x_373 : vec4<f32> = u_xlat3;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.z, x_370.z, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat3;
  let x_380 : i32 = u_xlati29;
  let x_383 : i32 = u_xlati29;
  let x_387 : vec4<f32> = x_210.x_MainLightWorldToShadow[((x_380 + 3i) / 4i)][((x_383 + 3i) % 4i)];
  let x_389 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = vs_TEXCOORD1.y;
  let x_395 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat29 = (x_393 * x_395);
  let x_398 : f32 = x_45.unity_MatrixV[0i].z;
  let x_400 : f32 = vs_TEXCOORD1.x;
  let x_402 : f32 = u_xlat29;
  u_xlat29 = ((x_398 * x_400) + x_402);
  let x_405 : f32 = x_45.unity_MatrixV[2i].z;
  let x_407 : f32 = vs_TEXCOORD1.z;
  let x_409 : f32 = u_xlat29;
  u_xlat29 = ((x_405 * x_407) + x_409);
  let x_411 : f32 = u_xlat29;
  let x_413 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat29 = (x_411 + x_413);
  let x_415 : f32 = u_xlat29;
  let x_418 : f32 = x_45.x_ProjectionParams.y;
  u_xlat29 = (-(x_415) + -(x_418));
  let x_421 : f32 = u_xlat29;
  u_xlat29 = max(x_421, 0.0f);
  let x_423 : f32 = u_xlat29;
  let x_426 : f32 = x_45.unity_FogParams.x;
  u_xlat29 = (x_423 * x_426);
  let x_434 : vec2<f32> = vs_TEXCOORD7;
  let x_436 : f32 = x_45.x_GlobalMipBias.x;
  let x_437 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_434, x_436);
  u_xlat4 = x_437;
  let x_442 : vec2<f32> = vs_TEXCOORD7;
  let x_444 : f32 = x_45.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_442, x_444);
  u_xlat5 = vec3<f32>(x_445.x, x_445.y, x_445.z);
  let x_447 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : vec3<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_455, vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : f32 = u_xlat30;
  u_xlat30 = (x_459 + 0.5f);
  let x_462 : f32 = u_xlat30;
  let x_464 : vec3<f32> = u_xlat5;
  let x_465 : vec3<f32> = (vec3<f32>(x_462, x_462, x_462) * x_464);
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_469 : f32 = u_xlat4.w;
  u_xlat30 = max(x_469, 0.00009999999747378752f);
  let x_472 : vec4<f32> = u_xlat4;
  let x_474 : f32 = u_xlat30;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) / vec3<f32>(x_474, x_474, x_474));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : vec4<f32> = u_xlat3;
  let x_481 : vec2<f32> = vec2<f32>(x_480.x, x_480.y);
  let x_483 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_481.x, x_481.y, x_483);
  let x_495 : vec3<f32> = txVec0;
  let x_497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_495.xy, x_495.z);
  u_xlat3.x = x_497;
  let x_502 : f32 = x_210.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_502) + 1.0f);
  let x_507 : f32 = u_xlat3.x;
  let x_509 : f32 = x_210.x_MainLightShadowParams.x;
  let x_512 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_507 * x_509) + x_512);
  let x_517 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_517);
  let x_521 : f32 = u_xlat3.z;
  u_xlatb21 = (x_521 >= 1.0f);
  let x_523 : bool = u_xlatb21;
  let x_524 : bool = u_xlatb12;
  u_xlatb12 = (x_523 | x_524);
  let x_526 : bool = u_xlatb12;
  if (x_526) {
    x_527 = 1.0f;
  } else {
    let x_532 : f32 = u_xlat3.x;
    x_527 = x_532;
  }
  let x_533 : f32 = x_527;
  u_xlat3.x = x_533;
  let x_535 : vec3<f32> = vs_TEXCOORD1;
  let x_537 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat12 = (x_535 + -(x_537));
  let x_540 : vec3<f32> = u_xlat12;
  let x_541 : vec3<f32> = u_xlat12;
  u_xlat12.x = dot(x_540, x_541);
  let x_546 : f32 = u_xlat12.x;
  let x_548 : f32 = x_210.x_MainLightShadowParams.z;
  let x_551 : f32 = x_210.x_MainLightShadowParams.w;
  u_xlat21 = ((x_546 * x_548) + x_551);
  let x_553 : f32 = u_xlat21;
  u_xlat21 = clamp(x_553, 0.0f, 1.0f);
  let x_556 : f32 = u_xlat3.x;
  u_xlat30 = (-(x_556) + 1.0f);
  let x_559 : f32 = u_xlat21;
  let x_560 : f32 = u_xlat30;
  let x_563 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_559 * x_560) + x_563);
  let x_567 : f32 = u_xlat3.x;
  let x_569 : f32 = x_95.unity_LightData.z;
  u_xlat3.x = (x_567 * x_569);
  let x_572 : vec4<f32> = u_xlat3;
  let x_575 : vec4<f32> = x_45.x_MainLightColor;
  let x_577 : vec3<f32> = (vec3<f32>(x_572.x, x_572.x, x_572.x) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_577.x, x_578.y, x_577.y, x_577.z);
  let x_581 : vec3<f32> = u_xlat2;
  let x_583 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat31 = dot(x_581, vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : f32 = u_xlat31;
  u_xlat31 = clamp(x_586, 0.0f, 1.0f);
  let x_588 : vec4<f32> = u_xlat3;
  let x_590 : f32 = u_xlat31;
  u_xlat5 = (vec3<f32>(x_588.x, x_588.z, x_588.w) * vec3<f32>(x_590, x_590, x_590));
  let x_594 : f32 = u_xlat0.x;
  u_xlat31 = ((x_594 * 10.0f) + 1.0f);
  let x_598 : f32 = u_xlat31;
  u_xlat31 = exp2(x_598);
  let x_600 : vec3<f32> = u_xlat1;
  let x_601 : f32 = u_xlat28;
  let x_605 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_600 * vec3<f32>(x_601, x_601, x_601)) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_609 : vec3<f32> = u_xlat6;
  let x_610 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_609, x_610);
  let x_612 : f32 = u_xlat32;
  u_xlat32 = max(x_612, 1.17549435e-38f);
  let x_615 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_615);
  let x_617 : f32 = u_xlat32;
  let x_619 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_617, x_617, x_617) * x_619);
  let x_621 : vec3<f32> = u_xlat2;
  let x_622 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_621, x_622);
  let x_624 : f32 = u_xlat32;
  u_xlat32 = clamp(x_624, 0.0f, 1.0f);
  let x_626 : f32 = u_xlat32;
  u_xlat32 = log2(x_626);
  let x_628 : f32 = u_xlat31;
  let x_629 : f32 = u_xlat32;
  u_xlat32 = (x_628 * x_629);
  let x_631 : f32 = u_xlat32;
  u_xlat32 = exp2(x_631);
  let x_633 : f32 = u_xlat32;
  let x_636 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec3<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_639.x, x_639.z, x_639.w) * x_641);
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_642.z);
  let x_645 : vec3<f32> = u_xlat5;
  let x_646 : vec4<f32> = u_xlat0;
  let x_649 : vec4<f32> = u_xlat3;
  let x_651 : vec3<f32> = ((x_645 * vec3<f32>(x_646.y, x_646.z, x_646.w)) + vec3<f32>(x_649.x, x_649.z, x_649.w));
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_651.x, x_652.y, x_651.y, x_651.z);
  let x_655 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_657 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_655, x_657);
  let x_662 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_662));
  let x_666 : f32 = u_xlat12.x;
  let x_669 : f32 = x_210.x_AdditionalShadowFadeParams.x;
  let x_672 : f32 = x_210.x_AdditionalShadowFadeParams.y;
  u_xlat12.x = ((x_666 * x_669) + x_672);
  let x_676 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_676, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_690 : u32 = u_xlatu_loop_1;
    let x_691 : u32 = u_xlatu5;
    if ((x_690 < x_691)) {
    } else {
      break;
    }
    let x_694 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_694 >> 2u);
    let x_697 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_697 & 3u));
    let x_701 : u32 = u_xlatu15;
    let x_704 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_701)];
    let x_714 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_719 : vec4<u32> = indexable[x_714];
    u_xlat15.x = dot(x_704, bitcast<vec4<f32>>(x_719));
    let x_725 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_725);
    let x_728 : vec3<f32> = vs_TEXCOORD1;
    let x_739 : i32 = u_xlati15;
    let x_741 : vec4<f32> = x_738.x_AdditionalLightsPosition[x_739];
    let x_744 : i32 = u_xlati15;
    let x_746 : vec4<f32> = x_738.x_AdditionalLightsPosition[x_744];
    u_xlat7 = ((-(x_728) * vec3<f32>(x_741.w, x_741.w, x_741.w)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
    let x_750 : vec3<f32> = u_xlat7;
    let x_751 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_750, x_751);
    let x_753 : f32 = u_xlat24;
    u_xlat24 = max(x_753, 0.00006103515625f);
    let x_756 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_756);
    let x_758 : f32 = u_xlat33;
    let x_760 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_758, x_758, x_758) * x_760);
    let x_762 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_762);
    let x_764 : f32 = u_xlat24;
    let x_765 : i32 = u_xlati15;
    let x_767 : f32 = x_738.x_AdditionalLightsAttenuation[x_765].x;
    u_xlat24 = (x_764 * x_767);
    let x_769 : f32 = u_xlat24;
    let x_771 : f32 = u_xlat24;
    u_xlat24 = ((-(x_769) * x_771) + 1.0f);
    let x_774 : f32 = u_xlat24;
    u_xlat24 = max(x_774, 0.0f);
    let x_776 : f32 = u_xlat24;
    let x_777 : f32 = u_xlat24;
    u_xlat24 = (x_776 * x_777);
    let x_779 : f32 = u_xlat24;
    let x_780 : f32 = u_xlat33;
    u_xlat24 = (x_779 * x_780);
    let x_782 : i32 = u_xlati15;
    let x_784 : vec4<f32> = x_738.x_AdditionalLightsSpotDir[x_782];
    let x_786 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), x_786);
    let x_788 : f32 = u_xlat33;
    let x_789 : i32 = u_xlati15;
    let x_791 : f32 = x_738.x_AdditionalLightsAttenuation[x_789].z;
    let x_793 : i32 = u_xlati15;
    let x_795 : f32 = x_738.x_AdditionalLightsAttenuation[x_793].w;
    u_xlat33 = ((x_788 * x_791) + x_795);
    let x_797 : f32 = u_xlat33;
    u_xlat33 = clamp(x_797, 0.0f, 1.0f);
    let x_799 : f32 = u_xlat33;
    let x_800 : f32 = u_xlat33;
    u_xlat33 = (x_799 * x_800);
    let x_802 : f32 = u_xlat33;
    let x_803 : f32 = u_xlat24;
    u_xlat24 = (x_802 * x_803);
    let x_807 : i32 = u_xlati15;
    let x_809 : f32 = x_210.x_AdditionalShadowParams[x_807].w;
    u_xlati33 = i32(x_809);
    let x_812 : i32 = u_xlati33;
    u_xlatb34 = (x_812 >= 0i);
    let x_814 : bool = u_xlatb34;
    if (x_814) {
      let x_818 : i32 = u_xlati15;
      let x_820 : f32 = x_210.x_AdditionalShadowParams[x_818].z;
      u_xlatb34 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_820, x_820, x_820, x_820))));
      let x_824 : bool = u_xlatb34;
      if (x_824) {
        let x_828 : vec3<f32> = u_xlat7;
        let x_831 : vec3<f32> = u_xlat7;
        let x_834 : vec4<bool> = (abs(vec4<f32>(x_828.z, x_828.z, x_828.y, x_828.z)) >= abs(vec4<f32>(x_831.x, x_831.y, x_831.x, x_831.x)));
        let x_836 : vec3<bool> = vec3<bool>(x_834.x, x_834.y, x_834.z);
        let x_837 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_840 : bool = u_xlatb8.y;
        let x_842 : bool = u_xlatb8.x;
        u_xlatb34 = (x_840 & x_842);
        let x_844 : vec3<f32> = u_xlat7;
        let x_847 : vec4<bool> = (-(vec4<f32>(x_844.z, x_844.y, x_844.z, x_844.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_848 : vec3<bool> = vec3<bool>(x_847.x, x_847.y, x_847.w);
        let x_849 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_848.x, x_848.y, x_849.z, x_848.z);
        let x_853 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_853);
        let x_858 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_858);
        let x_863 : bool = u_xlatb8.w;
        u_xlat35 = select(0.0f, 1.0f, x_863);
        let x_867 : bool = u_xlatb8.z;
        if (x_867) {
          let x_872 : f32 = u_xlat8.y;
          x_868 = x_872;
        } else {
          let x_874 : f32 = u_xlat35;
          x_868 = x_874;
        }
        let x_875 : f32 = x_868;
        u_xlat17 = x_875;
        let x_877 : bool = u_xlatb34;
        if (x_877) {
          let x_882 : f32 = u_xlat8.x;
          x_878 = x_882;
        } else {
          let x_884 : f32 = u_xlat17;
          x_878 = x_884;
        }
        let x_885 : f32 = x_878;
        u_xlat34 = x_885;
        let x_886 : i32 = u_xlati15;
        let x_888 : f32 = x_210.x_AdditionalShadowParams[x_886].w;
        u_xlat8.x = trunc(x_888);
        let x_891 : f32 = u_xlat34;
        let x_893 : f32 = u_xlat8.x;
        u_xlat34 = (x_891 + x_893);
        let x_895 : f32 = u_xlat34;
        u_xlati33 = i32(x_895);
      }
      let x_897 : i32 = u_xlati33;
      u_xlati33 = (x_897 << bitcast<u32>(2i));
      let x_899 : vec3<f32> = vs_TEXCOORD1;
      let x_902 : i32 = u_xlati33;
      let x_905 : i32 = u_xlati33;
      let x_909 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[((x_902 + 1i) / 4i)][((x_905 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_899.y, x_899.y, x_899.y, x_899.y) * x_909);
      let x_911 : i32 = u_xlati33;
      let x_913 : i32 = u_xlati33;
      let x_916 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[(x_911 / 4i)][(x_913 % 4i)];
      let x_917 : vec3<f32> = vs_TEXCOORD1;
      let x_920 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_916 * vec4<f32>(x_917.x, x_917.x, x_917.x, x_917.x)) + x_920);
      let x_922 : i32 = u_xlati33;
      let x_925 : i32 = u_xlati33;
      let x_929 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[((x_922 + 2i) / 4i)][((x_925 + 2i) % 4i)];
      let x_930 : vec3<f32> = vs_TEXCOORD1;
      let x_933 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_929 * vec4<f32>(x_930.z, x_930.z, x_930.z, x_930.z)) + x_933);
      let x_935 : vec4<f32> = u_xlat8;
      let x_936 : i32 = u_xlati33;
      let x_939 : i32 = u_xlati33;
      let x_943 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[((x_936 + 3i) / 4i)][((x_939 + 3i) % 4i)];
      u_xlat8 = (x_935 + x_943);
      let x_945 : vec4<f32> = u_xlat8;
      let x_947 : vec4<f32> = u_xlat8;
      let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) / vec3<f32>(x_947.w, x_947.w, x_947.w));
      let x_950 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
      let x_953 : vec4<f32> = u_xlat8;
      let x_954 : vec2<f32> = vec2<f32>(x_953.x, x_953.y);
      let x_956 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_954.x, x_954.y, x_956);
      let x_964 : vec3<f32> = txVec1;
      let x_966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_964.xy, x_964.z);
      u_xlat33 = x_966;
      let x_967 : i32 = u_xlati15;
      let x_969 : f32 = x_210.x_AdditionalShadowParams[x_967].x;
      u_xlat34 = (1.0f + -(x_969));
      let x_972 : f32 = u_xlat33;
      let x_973 : i32 = u_xlati15;
      let x_975 : f32 = x_210.x_AdditionalShadowParams[x_973].x;
      let x_977 : f32 = u_xlat34;
      u_xlat33 = ((x_972 * x_975) + x_977);
      let x_980 : f32 = u_xlat8.z;
      u_xlatb34 = (0.0f >= x_980);
      let x_983 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_983 >= 1.0f);
      let x_986 : bool = u_xlatb34;
      let x_988 : bool = u_xlatb8.x;
      u_xlatb34 = (x_986 | x_988);
      let x_990 : bool = u_xlatb34;
      let x_991 : f32 = u_xlat33;
      u_xlat33 = select(x_991, 1.0f, x_990);
    } else {
      u_xlat33 = 1.0f;
    }
    let x_994 : f32 = u_xlat33;
    u_xlat34 = (-(x_994) + 1.0f);
    let x_998 : f32 = u_xlat12.x;
    let x_999 : f32 = u_xlat34;
    let x_1001 : f32 = u_xlat33;
    u_xlat33 = ((x_998 * x_999) + x_1001);
    let x_1003 : f32 = u_xlat33;
    let x_1004 : f32 = u_xlat24;
    u_xlat24 = (x_1003 * x_1004);
    let x_1006 : f32 = u_xlat24;
    let x_1008 : i32 = u_xlati15;
    let x_1010 : vec4<f32> = x_738.x_AdditionalLightsColor[x_1008];
    u_xlat15 = (vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec3<f32> = u_xlat2;
    let x_1014 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_1013, x_1014);
    let x_1016 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1016, 0.0f, 1.0f);
    let x_1018 : vec3<f32> = u_xlat15;
    let x_1019 : f32 = u_xlat34;
    let x_1021 : vec3<f32> = (x_1018 * vec3<f32>(x_1019, x_1019, x_1019));
    let x_1022 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
    let x_1024 : vec3<f32> = u_xlat1;
    let x_1025 : f32 = u_xlat28;
    let x_1028 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1024 * vec3<f32>(x_1025, x_1025, x_1025)) + x_1028);
    let x_1030 : vec3<f32> = u_xlat7;
    let x_1031 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_1030, x_1031);
    let x_1033 : f32 = u_xlat34;
    u_xlat34 = max(x_1033, 1.17549435e-38f);
    let x_1035 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_1035);
    let x_1037 : f32 = u_xlat34;
    let x_1039 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1037, x_1037, x_1037) * x_1039);
    let x_1041 : vec3<f32> = u_xlat2;
    let x_1042 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_1041, x_1042);
    let x_1046 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_1046, 0.0f, 1.0f);
    let x_1050 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_1050);
    let x_1053 : f32 = u_xlat31;
    let x_1055 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1053 * x_1055);
    let x_1059 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_1059);
    let x_1062 : vec3<f32> = u_xlat7;
    let x_1065 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1062.x, x_1062.x, x_1062.x) * vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1068 : vec3<f32> = u_xlat15;
    let x_1069 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_1068 * x_1069);
    let x_1071 : vec4<f32> = u_xlat8;
    let x_1073 : vec4<f32> = u_xlat0;
    let x_1076 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1073.y, x_1073.z, x_1073.w)) + x_1076);
    let x_1078 : vec3<f32> = u_xlat14;
    let x_1079 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_1078 + x_1079);

    continuing {
      let x_1081 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1081 + bitcast<u32>(1i));
    }
  }
  let x_1084 : vec4<f32> = u_xlat4;
  let x_1086 : vec4<f32> = u_xlat0;
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1086.y, x_1086.z, x_1086.w)) + vec3<f32>(x_1089.x, x_1089.z, x_1089.w));
  let x_1092 : vec3<f32> = u_xlat14;
  let x_1093 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_1092 + x_1093);
  let x_1095 : f32 = u_xlat29;
  let x_1096 : f32 = u_xlat29;
  u_xlat1.x = (x_1095 * -(x_1096));
  let x_1101 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1101);
  let x_1104 : vec3<f32> = u_xlat9;
  let x_1106 : vec4<f32> = x_45.unity_FogColor;
  u_xlat9 = (x_1104 + -(vec3<f32>(x_1106.x, x_1106.y, x_1106.z)));
  let x_1112 : vec3<f32> = u_xlat1;
  let x_1114 : vec3<f32> = u_xlat9;
  let x_1117 : vec4<f32> = x_45.unity_FogColor;
  let x_1119 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.x, x_1112.x) * x_1114) + vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1124 : f32 = x_57.x_Surface;
  u_xlatb9 = (x_1124 == 1.0f);
  let x_1126 : bool = u_xlatb9;
  if (x_1126) {
    let x_1131 : f32 = u_xlat0.x;
    x_1127 = x_1131;
  } else {
    x_1127 = 1.0f;
  }
  let x_1133 : f32 = x_1127;
  SV_Target0.w = x_1133;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


