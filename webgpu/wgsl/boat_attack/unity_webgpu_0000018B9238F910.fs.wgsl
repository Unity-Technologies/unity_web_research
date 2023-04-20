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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_80 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_583 : UnityPerDraw;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_810 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var x_468 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_955 : f32;
  var x_966 : f32;
  var txVec1 : vec3<f32>;
  var x_1083 : f32;
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
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_61);
  let x_64 : vec3<f32> = u_xlat13;
  let x_66 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_64.x, x_64.x, x_64.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_72 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_72 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres1;
  let x_97 : vec3<f32> = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_109 : vec3<f32> = vs_TEXCOORD7;
  let x_112 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec4<f32> = u_xlat3;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_129 : vec3<f32> = u_xlat4;
  let x_130 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_129, x_130);
  let x_134 : vec3<f32> = u_xlat5;
  let x_135 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_134, x_135);
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_143 < x_146);
  let x_150 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_150);
  let x_156 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_156);
  let x_160 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_168);
  let x_174 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_174);
  let x_178 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_178);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(x_183.y, x_183.z, x_183.w));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = max(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_209);
  let x_213 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_217 : vec3<f32> = vs_TEXCOORD7;
  let x_219 : i32 = u_xlati2;
  let x_222 : i32 = u_xlati2;
  let x_226 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_219 + 1i) / 4i)][((x_222 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_234 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_229 / 4i)][(x_231 % 4i)];
  let x_236 : vec3<f32> = vs_TEXCOORD7;
  let x_239 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + x_239);
  let x_241 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_248 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_241 + 2i) / 4i)][((x_244 + 2i) % 4i)];
  let x_250 : vec3<f32> = vs_TEXCOORD7;
  let x_253 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
  let x_255 : vec3<f32> = u_xlat14;
  let x_256 : i32 = u_xlati2;
  let x_259 : i32 = u_xlati2;
  let x_263 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_256 + 3i) / 4i)][((x_259 + 3i) % 4i)];
  let x_265 : vec3<f32> = (x_255 + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_271 : f32 = vs_TEXCOORD7.y;
  let x_274 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat38 = (x_271 * x_274);
  let x_277 : f32 = x_29.unity_MatrixV[0i].z;
  let x_279 : f32 = vs_TEXCOORD7.x;
  let x_281 : f32 = u_xlat38;
  u_xlat38 = ((x_277 * x_279) + x_281);
  let x_284 : f32 = x_29.unity_MatrixV[2i].z;
  let x_286 : f32 = vs_TEXCOORD7.z;
  let x_288 : f32 = u_xlat38;
  u_xlat38 = ((x_284 * x_286) + x_288);
  let x_290 : f32 = u_xlat38;
  let x_292 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat38 = (x_290 + x_292);
  let x_294 : f32 = u_xlat38;
  let x_297 : f32 = x_29.x_ProjectionParams.y;
  u_xlat38 = (-(x_294) + -(x_297));
  let x_300 : f32 = u_xlat38;
  u_xlat38 = max(x_300, 0.0f);
  let x_302 : f32 = u_xlat38;
  let x_305 : f32 = x_29.unity_FogParams.x;
  u_xlat38 = (x_302 * x_305);
  let x_312 : vec4<f32> = vs_TEXCOORD0;
  let x_315 : f32 = x_29.x_GlobalMipBias.x;
  let x_316 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_312.z, x_312.w), x_315);
  u_xlat3 = x_316;
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  let x_324 : f32 = x_29.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_321.z, x_321.w), x_324);
  u_xlat4 = vec3<f32>(x_325.x, x_325.y, x_325.z);
  let x_327 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat13;
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_334, vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_340 : f32 = u_xlat3.x;
  u_xlat3.x = (x_340 + 0.5f);
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_344.x, x_344.x, x_344.x) * x_346);
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_352 : f32 = u_xlat3.w;
  u_xlat39 = max(x_352, 0.00009999999747378752f);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : f32 = u_xlat39;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) / vec3<f32>(x_357, x_357, x_357));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : f32 = u_xlat1;
  u_xlat39 = ((-(x_362) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_367 : f32 = u_xlat39;
  u_xlat4.x = (-(x_367) + 1.0f);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : f32 = u_xlat39;
  u_xlat16 = (vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374, x_374, x_374));
  let x_377 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : f32 = u_xlat1;
  let x_386 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat1;
  let x_399 : f32 = u_xlat1;
  u_xlat39 = (x_398 * x_399);
  let x_401 : f32 = u_xlat39;
  u_xlat39 = max(x_401, 0.0078125f);
  let x_404 : f32 = u_xlat39;
  let x_405 : f32 = u_xlat39;
  u_xlat5.x = (x_404 * x_405);
  let x_410 : f32 = u_xlat0.w;
  let x_412 : f32 = u_xlat4.x;
  u_xlat36 = (x_410 + x_412);
  let x_414 : f32 = u_xlat36;
  u_xlat36 = clamp(x_414, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat39;
  u_xlat4.x = ((x_416 * 4.0f) + 2.0f);
  let x_422 : vec4<f32> = u_xlat2;
  let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
  let x_425 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_423.x, x_423.y, x_425);
  let x_437 : vec3<f32> = txVec0;
  let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
  u_xlat2.x = x_439;
  let x_442 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_442) + 1.0f);
  let x_447 : f32 = u_xlat2.x;
  let x_449 : f32 = x_80.x_MainLightShadowParams.x;
  let x_452 : f32 = u_xlat14.x;
  u_xlat2.x = ((x_447 * x_449) + x_452);
  let x_457 : f32 = u_xlat2.z;
  u_xlatb14 = (0.0f >= x_457);
  let x_461 : f32 = u_xlat2.z;
  u_xlatb26 = (x_461 >= 1.0f);
  let x_463 : bool = u_xlatb26;
  let x_464 : bool = u_xlatb14;
  u_xlatb14 = (x_463 | x_464);
  let x_466 : bool = u_xlatb14;
  if (x_466) {
    x_468 = 1.0f;
  } else {
    let x_473 : f32 = u_xlat2.x;
    x_468 = x_473;
  }
  let x_474 : f32 = x_468;
  u_xlat2.x = x_474;
  let x_477 : vec3<f32> = vs_TEXCOORD7;
  let x_480 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_477 + -(x_480));
  let x_483 : vec3<f32> = u_xlat17;
  let x_484 : vec3<f32> = u_xlat17;
  u_xlat14.x = dot(x_483, x_484);
  let x_489 : f32 = u_xlat14.x;
  let x_491 : f32 = x_80.x_MainLightShadowParams.z;
  let x_494 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat26 = ((x_489 * x_491) + x_494);
  let x_496 : f32 = u_xlat26;
  u_xlat26 = clamp(x_496, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat2.x;
  u_xlat17.x = (-(x_499) + 1.0f);
  let x_503 : f32 = u_xlat26;
  let x_505 : f32 = u_xlat17.x;
  let x_508 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_503 * x_505) + x_508);
  let x_513 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_513;
  let x_517 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_517;
  let x_521 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_521;
  let x_523 : vec3<f32> = u_xlat6;
  let x_525 : vec3<f32> = u_xlat13;
  u_xlat26 = dot(-(x_523), x_525);
  let x_527 : f32 = u_xlat26;
  let x_528 : f32 = u_xlat26;
  u_xlat26 = (x_527 + x_528);
  let x_530 : vec3<f32> = u_xlat13;
  let x_531 : f32 = u_xlat26;
  let x_535 : vec3<f32> = u_xlat6;
  u_xlat17 = ((x_530 * -(vec3<f32>(x_531, x_531, x_531))) + -(x_535));
  let x_538 : vec3<f32> = u_xlat13;
  let x_539 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_538, x_539);
  let x_541 : f32 = u_xlat26;
  u_xlat26 = clamp(x_541, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat26;
  u_xlat26 = (-(x_543) + 1.0f);
  let x_546 : f32 = u_xlat26;
  let x_547 : f32 = u_xlat26;
  u_xlat26 = (x_546 * x_547);
  let x_549 : f32 = u_xlat26;
  let x_550 : f32 = u_xlat26;
  u_xlat26 = (x_549 * x_550);
  let x_553 : f32 = u_xlat1;
  u_xlat42 = ((-(x_553) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_559 : f32 = u_xlat1;
  let x_560 : f32 = u_xlat42;
  u_xlat1 = (x_559 * x_560);
  let x_562 : f32 = u_xlat1;
  u_xlat1 = (x_562 * 6.0f);
  let x_574 : vec3<f32> = u_xlat17;
  let x_575 : f32 = u_xlat1;
  let x_576 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_574, x_575);
  u_xlat7 = x_576;
  let x_578 : f32 = u_xlat7.w;
  u_xlat1 = (x_578 + -1.0f);
  let x_585 : f32 = x_583.unity_SpecCube0_HDR.w;
  let x_586 : f32 = u_xlat1;
  u_xlat1 = ((x_585 * x_586) + 1.0f);
  let x_589 : f32 = u_xlat1;
  u_xlat1 = max(x_589, 0.0f);
  let x_591 : f32 = u_xlat1;
  u_xlat1 = log2(x_591);
  let x_593 : f32 = u_xlat1;
  let x_595 : f32 = x_583.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_593 * x_595);
  let x_597 : f32 = u_xlat1;
  u_xlat1 = exp2(x_597);
  let x_599 : f32 = u_xlat1;
  let x_601 : f32 = x_583.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_599 * x_601);
  let x_603 : vec4<f32> = u_xlat7;
  let x_605 : f32 = u_xlat1;
  u_xlat17 = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_605, x_605, x_605));
  let x_608 : f32 = u_xlat39;
  let x_610 : f32 = u_xlat39;
  let x_614 : vec2<f32> = ((vec2<f32>(x_608, x_608) * vec2<f32>(x_610, x_610)) + vec2<f32>(-1.0f, 1.0f));
  let x_615 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
  let x_618 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_618);
  let x_621 : vec4<f32> = u_xlat0;
  let x_624 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_621.x, x_621.y, x_621.z)) + vec3<f32>(x_624, x_624, x_624));
  let x_627 : f32 = u_xlat26;
  let x_629 : vec3<f32> = u_xlat19;
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_627, x_627, x_627) * x_629) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : f32 = u_xlat1;
  let x_636 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_634, x_634, x_634) * x_636);
  let x_638 : vec3<f32> = u_xlat17;
  let x_639 : vec3<f32> = u_xlat19;
  u_xlat17 = (x_638 * x_639);
  let x_641 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = u_xlat16;
  let x_645 : vec3<f32> = u_xlat17;
  let x_646 : vec3<f32> = ((vec3<f32>(x_641.x, x_641.y, x_641.z) * x_643) + x_645);
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_650 : f32 = u_xlat2.x;
  let x_652 : f32 = x_583.unity_LightData.z;
  u_xlat36 = (x_650 * x_652);
  let x_654 : vec3<f32> = u_xlat13;
  let x_656 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_654, vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : f32 = u_xlat1;
  u_xlat1 = clamp(x_659, 0.0f, 1.0f);
  let x_661 : f32 = u_xlat36;
  let x_662 : f32 = u_xlat1;
  u_xlat36 = (x_661 * x_662);
  let x_664 : f32 = u_xlat36;
  let x_667 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec3<f32> = u_xlat6;
  let x_672 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_670 + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec3<f32> = u_xlat19;
  let x_676 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_675, x_676);
  let x_678 : f32 = u_xlat36;
  u_xlat36 = max(x_678, 1.17549435e-38f);
  let x_681 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_681);
  let x_683 : f32 = u_xlat36;
  let x_685 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_683, x_683, x_683) * x_685);
  let x_687 : vec3<f32> = u_xlat13;
  let x_688 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_687, x_688);
  let x_690 : f32 = u_xlat36;
  u_xlat36 = clamp(x_690, 0.0f, 1.0f);
  let x_693 : vec4<f32> = x_29.x_MainLightPosition;
  let x_695 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_693.x, x_693.y, x_693.z), x_695);
  let x_697 : f32 = u_xlat1;
  u_xlat1 = clamp(x_697, 0.0f, 1.0f);
  let x_699 : f32 = u_xlat36;
  let x_700 : f32 = u_xlat36;
  u_xlat36 = (x_699 * x_700);
  let x_702 : f32 = u_xlat36;
  let x_704 : f32 = u_xlat7.x;
  u_xlat36 = ((x_702 * x_704) + 1.00001001358032226562f);
  let x_708 : f32 = u_xlat1;
  let x_709 : f32 = u_xlat1;
  u_xlat1 = (x_708 * x_709);
  let x_711 : f32 = u_xlat36;
  let x_712 : f32 = u_xlat36;
  u_xlat36 = (x_711 * x_712);
  let x_714 : f32 = u_xlat1;
  u_xlat1 = max(x_714, 0.10000000149011611938f);
  let x_717 : f32 = u_xlat36;
  let x_718 : f32 = u_xlat1;
  u_xlat36 = (x_717 * x_718);
  let x_721 : f32 = u_xlat4.x;
  let x_722 : f32 = u_xlat36;
  u_xlat36 = (x_721 * x_722);
  let x_725 : f32 = u_xlat5.x;
  let x_726 : f32 = u_xlat36;
  u_xlat36 = (x_725 / x_726);
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : f32 = u_xlat36;
  let x_733 : vec3<f32> = u_xlat16;
  u_xlat19 = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730, x_730, x_730)) + x_733);
  let x_736 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_738 : f32 = x_583.unity_LightData.y;
  u_xlat36 = min(x_736, x_738);
  let x_741 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_741));
  let x_745 : f32 = u_xlat14.x;
  let x_748 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_751 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_745 * x_748) + x_751);
  let x_753 : f32 = u_xlat1;
  u_xlat1 = clamp(x_753, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_765 : u32 = u_xlatu_loop_1;
    let x_766 : u32 = u_xlatu36;
    if ((x_765 < x_766)) {
    } else {
      break;
    }
    let x_769 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_769 >> 2u);
    let x_772 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_772 & 3u));
    let x_775 : u32 = u_xlatu42;
    let x_778 : vec4<f32> = x_583.unity_LightIndices[bitcast<i32>(x_775)];
    let x_788 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_793 : vec4<u32> = indexable[x_788];
    u_xlat42 = dot(x_778, bitcast<vec4<f32>>(x_793));
    let x_797 : f32 = u_xlat42;
    u_xlati42 = i32(x_797);
    let x_800 : vec3<f32> = vs_TEXCOORD7;
    let x_811 : i32 = u_xlati42;
    let x_813 : vec4<f32> = x_810.x_AdditionalLightsPosition[x_811];
    let x_816 : i32 = u_xlati42;
    let x_818 : vec4<f32> = x_810.x_AdditionalLightsPosition[x_816];
    u_xlat8 = ((-(x_800) * vec3<f32>(x_813.w, x_813.w, x_813.w)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
    let x_822 : vec3<f32> = u_xlat8;
    let x_823 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_822, x_823);
    let x_825 : f32 = u_xlat44;
    u_xlat44 = max(x_825, 0.00006103515625f);
    let x_829 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_829);
    let x_832 : vec3<f32> = u_xlat8;
    let x_833 : f32 = u_xlat9;
    u_xlat21 = (x_832 * vec3<f32>(x_833, x_833, x_833));
    let x_837 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_837);
    let x_840 : f32 = u_xlat44;
    let x_841 : i32 = u_xlati42;
    let x_843 : f32 = x_810.x_AdditionalLightsAttenuation[x_841].x;
    u_xlat44 = (x_840 * x_843);
    let x_845 : f32 = u_xlat44;
    let x_847 : f32 = u_xlat44;
    u_xlat44 = ((-(x_845) * x_847) + 1.0f);
    let x_850 : f32 = u_xlat44;
    u_xlat44 = max(x_850, 0.0f);
    let x_852 : f32 = u_xlat44;
    let x_853 : f32 = u_xlat44;
    u_xlat44 = (x_852 * x_853);
    let x_855 : f32 = u_xlat44;
    let x_857 : f32 = u_xlat10.x;
    u_xlat44 = (x_855 * x_857);
    let x_859 : i32 = u_xlati42;
    let x_861 : vec4<f32> = x_810.x_AdditionalLightsSpotDir[x_859];
    let x_863 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_861.x, x_861.y, x_861.z), x_863);
    let x_867 : f32 = u_xlat10.x;
    let x_868 : i32 = u_xlati42;
    let x_870 : f32 = x_810.x_AdditionalLightsAttenuation[x_868].z;
    let x_872 : i32 = u_xlati42;
    let x_874 : f32 = x_810.x_AdditionalLightsAttenuation[x_872].w;
    u_xlat10.x = ((x_867 * x_870) + x_874);
    let x_878 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_878, 0.0f, 1.0f);
    let x_882 : f32 = u_xlat10.x;
    let x_884 : f32 = u_xlat10.x;
    u_xlat10.x = (x_882 * x_884);
    let x_887 : f32 = u_xlat44;
    let x_889 : f32 = u_xlat10.x;
    u_xlat44 = (x_887 * x_889);
    let x_893 : i32 = u_xlati42;
    let x_895 : f32 = x_80.x_AdditionalShadowParams[x_893].w;
    u_xlati10 = i32(x_895);
    let x_900 : i32 = u_xlati10;
    u_xlatb22.x = (x_900 >= 0i);
    let x_904 : bool = u_xlatb22.x;
    if (x_904) {
      let x_908 : i32 = u_xlati42;
      let x_910 : f32 = x_80.x_AdditionalShadowParams[x_908].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_910, x_910, x_910, x_910))));
      let x_916 : bool = u_xlatb22.x;
      if (x_916) {
        let x_919 : vec3<f32> = u_xlat21;
        let x_922 : vec3<f32> = u_xlat21;
        let x_925 : vec4<bool> = (abs(vec4<f32>(x_919.z, x_919.z, x_919.y, x_919.y)) >= abs(vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.x)));
        u_xlatb22 = vec3<bool>(x_925.x, x_925.y, x_925.z);
        let x_928 : bool = u_xlatb22.y;
        let x_930 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_928 & x_930);
        let x_934 : vec3<f32> = u_xlat21;
        let x_937 : vec4<bool> = (-(vec4<f32>(x_934.z, x_934.y, x_934.x, x_934.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_937.x, x_937.y, x_937.z);
        let x_941 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_941);
        let x_946 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_946);
        let x_951 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_951);
        let x_954 : bool = u_xlatb22.z;
        if (x_954) {
          let x_959 : f32 = u_xlat11.y;
          x_955 = x_959;
        } else {
          let x_961 : f32 = u_xlat34;
          x_955 = x_961;
        }
        let x_962 : f32 = x_955;
        u_xlat34 = x_962;
        let x_965 : bool = u_xlatb22.x;
        if (x_965) {
          let x_970 : f32 = u_xlat11.x;
          x_966 = x_970;
        } else {
          let x_972 : f32 = u_xlat34;
          x_966 = x_972;
        }
        let x_973 : f32 = x_966;
        u_xlat22 = x_973;
        let x_974 : i32 = u_xlati42;
        let x_976 : f32 = x_80.x_AdditionalShadowParams[x_974].w;
        u_xlat34 = trunc(x_976);
        let x_978 : f32 = u_xlat22;
        let x_979 : f32 = u_xlat34;
        u_xlat22 = (x_978 + x_979);
        let x_981 : f32 = u_xlat22;
        u_xlati10 = i32(x_981);
      }
      let x_983 : i32 = u_xlati10;
      u_xlati10 = (x_983 << bitcast<u32>(2i));
      let x_985 : vec3<f32> = vs_TEXCOORD7;
      let x_988 : i32 = u_xlati10;
      let x_991 : i32 = u_xlati10;
      let x_995 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_988 + 1i) / 4i)][((x_991 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_985.y, x_985.y, x_985.y, x_985.y) * x_995);
      let x_997 : i32 = u_xlati10;
      let x_999 : i32 = u_xlati10;
      let x_1002 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_997 / 4i)][(x_999 % 4i)];
      let x_1003 : vec3<f32> = vs_TEXCOORD7;
      let x_1006 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1002 * vec4<f32>(x_1003.x, x_1003.x, x_1003.x, x_1003.x)) + x_1006);
      let x_1008 : i32 = u_xlati10;
      let x_1011 : i32 = u_xlati10;
      let x_1015 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1008 + 2i) / 4i)][((x_1011 + 2i) % 4i)];
      let x_1016 : vec3<f32> = vs_TEXCOORD7;
      let x_1019 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1015 * vec4<f32>(x_1016.z, x_1016.z, x_1016.z, x_1016.z)) + x_1019);
      let x_1021 : vec4<f32> = u_xlat11;
      let x_1022 : i32 = u_xlati10;
      let x_1025 : i32 = u_xlati10;
      let x_1029 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_1022 + 3i) / 4i)][((x_1025 + 3i) % 4i)];
      u_xlat10 = (x_1021 + x_1029);
      let x_1031 : vec4<f32> = u_xlat10;
      let x_1033 : vec4<f32> = u_xlat10;
      let x_1035 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) / vec3<f32>(x_1033.w, x_1033.w, x_1033.w));
      let x_1036 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
      let x_1039 : vec4<f32> = u_xlat10;
      let x_1040 : vec2<f32> = vec2<f32>(x_1039.x, x_1039.y);
      let x_1042 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
      let x_1050 : vec3<f32> = txVec1;
      let x_1052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1050.xy, x_1050.z);
      u_xlat10.x = x_1052;
      let x_1054 : i32 = u_xlati42;
      let x_1056 : f32 = x_80.x_AdditionalShadowParams[x_1054].x;
      u_xlat22 = (1.0f + -(x_1056));
      let x_1060 : f32 = u_xlat10.x;
      let x_1061 : i32 = u_xlati42;
      let x_1063 : f32 = x_80.x_AdditionalShadowParams[x_1061].x;
      let x_1065 : f32 = u_xlat22;
      u_xlat10.x = ((x_1060 * x_1063) + x_1065);
      let x_1069 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1069);
      let x_1074 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1074 >= 1.0f);
      let x_1076 : bool = u_xlatb34;
      let x_1078 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1076 | x_1078);
      let x_1082 : bool = u_xlatb22.x;
      if (x_1082) {
        x_1083 = 1.0f;
      } else {
        let x_1088 : f32 = u_xlat10.x;
        x_1083 = x_1088;
      }
      let x_1089 : f32 = x_1083;
      u_xlat10.x = x_1089;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1094 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1094) + 1.0f);
    let x_1097 : f32 = u_xlat1;
    let x_1098 : f32 = u_xlat22;
    let x_1101 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1097 * x_1098) + x_1101);
    let x_1104 : f32 = u_xlat44;
    let x_1106 : f32 = u_xlat10.x;
    u_xlat44 = (x_1104 * x_1106);
    let x_1108 : vec3<f32> = u_xlat13;
    let x_1109 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1108, x_1109);
    let x_1113 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1113, 0.0f, 1.0f);
    let x_1116 : f32 = u_xlat44;
    let x_1118 : f32 = u_xlat10.x;
    u_xlat44 = (x_1116 * x_1118);
    let x_1120 : f32 = u_xlat44;
    let x_1122 : i32 = u_xlati42;
    let x_1124 : vec4<f32> = x_810.x_AdditionalLightsColor[x_1122];
    let x_1126 : vec3<f32> = (vec3<f32>(x_1120, x_1120, x_1120) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
    let x_1127 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
    let x_1129 : vec3<f32> = u_xlat8;
    let x_1130 : f32 = u_xlat9;
    let x_1133 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1129 * vec3<f32>(x_1130, x_1130, x_1130)) + x_1133);
    let x_1135 : vec3<f32> = u_xlat8;
    let x_1136 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1135, x_1136);
    let x_1138 : f32 = u_xlat42;
    u_xlat42 = max(x_1138, 1.17549435e-38f);
    let x_1140 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1140);
    let x_1142 : f32 = u_xlat42;
    let x_1144 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1142, x_1142, x_1142) * x_1144);
    let x_1146 : vec3<f32> = u_xlat13;
    let x_1147 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1146, x_1147);
    let x_1149 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1149, 0.0f, 1.0f);
    let x_1151 : vec3<f32> = u_xlat21;
    let x_1152 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1151, x_1152);
    let x_1156 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1156, 0.0f, 1.0f);
    let x_1159 : f32 = u_xlat42;
    let x_1160 : f32 = u_xlat42;
    u_xlat42 = (x_1159 * x_1160);
    let x_1162 : f32 = u_xlat42;
    let x_1164 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1162 * x_1164) + 1.00001001358032226562f);
    let x_1168 : f32 = u_xlat8.x;
    let x_1170 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1168 * x_1170);
    let x_1173 : f32 = u_xlat42;
    let x_1174 : f32 = u_xlat42;
    u_xlat42 = (x_1173 * x_1174);
    let x_1177 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1177, 0.10000000149011611938f);
    let x_1180 : f32 = u_xlat42;
    let x_1182 : f32 = u_xlat8.x;
    u_xlat42 = (x_1180 * x_1182);
    let x_1185 : f32 = u_xlat4.x;
    let x_1186 : f32 = u_xlat42;
    u_xlat42 = (x_1185 * x_1186);
    let x_1189 : f32 = u_xlat5.x;
    let x_1190 : f32 = u_xlat42;
    u_xlat42 = (x_1189 / x_1190);
    let x_1192 : vec4<f32> = u_xlat0;
    let x_1194 : f32 = u_xlat42;
    let x_1197 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1192.x, x_1192.y, x_1192.z) * vec3<f32>(x_1194, x_1194, x_1194)) + x_1197);
    let x_1199 : vec3<f32> = u_xlat8;
    let x_1200 : vec4<f32> = u_xlat10;
    let x_1203 : vec4<f32> = u_xlat2;
    let x_1205 : vec3<f32> = ((x_1199 * vec3<f32>(x_1200.x, x_1200.y, x_1200.z)) + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
    let x_1206 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);

    continuing {
      let x_1208 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1208 + bitcast<u32>(1i));
    }
  }
  let x_1210 : vec3<f32> = u_xlat19;
  let x_1211 : vec3<f32> = u_xlat17;
  let x_1213 : vec4<f32> = u_xlat3;
  let x_1215 : vec3<f32> = ((x_1210 * x_1211) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat2;
  let x_1220 : vec4<f32> = u_xlat0;
  let x_1222 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) + vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : f32 = u_xlat38;
  let x_1226 : f32 = u_xlat38;
  u_xlat36 = (x_1225 * -(x_1226));
  let x_1229 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1229);
  let x_1231 : vec4<f32> = u_xlat0;
  let x_1235 : vec4<f32> = x_29.unity_FogColor;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.y, x_1231.z) + -(vec3<f32>(x_1235.x, x_1235.y, x_1235.z)));
  let x_1239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1243 : f32 = u_xlat36;
  let x_1245 : vec4<f32> = u_xlat0;
  let x_1249 : vec4<f32> = x_29.unity_FogColor;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1243, x_1243, x_1243) * vec3<f32>(x_1245.x, x_1245.y, x_1245.z)) + vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
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


