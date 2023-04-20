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

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_75 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat25 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlati25 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat26 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

@group(1) @binding(2) var<uniform> x_449 : UnityPerDraw;

var<private> u_xlat27 : f32;

var<private> u_xlatu27 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati13 : i32;

var<private> u_xlati5 : i32;

var<private> u_xlat13 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_564 : AdditionalLights;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlati14 : i32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatu28 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_404 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_725 : f32;
  var x_735 : f32;
  var txVec1 : vec3<f32>;
  var x_846 : f32;
  var x_946 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  let x_53 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_52, x_53);
  let x_58 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_58);
  let x_61 : vec3<f32> = u_xlat1;
  let x_63 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_77 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres0;
  let x_80 : vec3<f32> = (x_67 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec3<f32> = vs_TEXCOORD1;
  let x_87 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres1;
  let x_90 : vec3<f32> = (x_84 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_91 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_94 : vec3<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_94 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_102 : vec3<f32> = vs_TEXCOORD1;
  let x_105 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_102 + -(vec3<f32>(x_105.x, x_105.y, x_105.z)));
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_115 : vec4<f32> = u_xlat3;
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_115.x, x_115.y, x_115.z), vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_122 : vec3<f32> = u_xlat4;
  let x_123 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_122, x_123);
  let x_127 : vec3<f32> = u_xlat5;
  let x_128 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_127, x_128);
  let x_136 : vec4<f32> = u_xlat2;
  let x_139 : vec4<f32> = x_75.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_136 < x_139);
  let x_143 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_143);
  let x_149 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_149);
  let x_153 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_161);
  let x_167 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_167);
  let x_171 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_171);
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + vec3<f32>(x_176.y, x_176.z, x_176.w));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat2;
  let x_184 : vec3<f32> = max(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_184.x, x_184.y, x_184.z);
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(x_188, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_194 : f32 = u_xlat25;
  u_xlat25 = (-(x_194) + 4.0f);
  let x_199 : f32 = u_xlat25;
  u_xlatu25 = u32(x_199);
  let x_203 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_203) << bitcast<u32>(2i));
  let x_206 : vec3<f32> = vs_TEXCOORD1;
  let x_208 : i32 = u_xlati25;
  let x_211 : i32 = u_xlati25;
  let x_215 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_208 + 1i) / 4i)][((x_211 + 1i) % 4i)];
  let x_217 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : i32 = u_xlati25;
  let x_222 : i32 = u_xlati25;
  let x_225 : vec4<f32> = x_75.x_MainLightWorldToShadow[(x_220 / 4i)][(x_222 % 4i)];
  let x_227 : vec3<f32> = vs_TEXCOORD1;
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : i32 = u_xlati25;
  let x_238 : i32 = u_xlati25;
  let x_242 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_235 + 2i) / 4i)][((x_238 + 2i) % 4i)];
  let x_244 : vec3<f32> = vs_TEXCOORD1;
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.z, x_244.z, x_244.z)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : i32 = u_xlati25;
  let x_257 : i32 = u_xlati25;
  let x_261 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_254 + 3i) / 4i)][((x_257 + 3i) % 4i)];
  let x_263 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_268 : f32 = vs_TEXCOORD1.y;
  let x_271 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat25 = (x_268 * x_271);
  let x_274 : f32 = x_28.unity_MatrixV[0i].z;
  let x_276 : f32 = vs_TEXCOORD1.x;
  let x_278 : f32 = u_xlat25;
  u_xlat25 = ((x_274 * x_276) + x_278);
  let x_281 : f32 = x_28.unity_MatrixV[2i].z;
  let x_283 : f32 = vs_TEXCOORD1.z;
  let x_285 : f32 = u_xlat25;
  u_xlat25 = ((x_281 * x_283) + x_285);
  let x_287 : f32 = u_xlat25;
  let x_289 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat25 = (x_287 + x_289);
  let x_291 : f32 = u_xlat25;
  let x_294 : f32 = x_28.x_ProjectionParams.y;
  u_xlat25 = (-(x_291) + -(x_294));
  let x_297 : f32 = u_xlat25;
  u_xlat25 = max(x_297, 0.0f);
  let x_299 : f32 = u_xlat25;
  let x_302 : f32 = x_28.unity_FogParams.x;
  u_xlat25 = (x_299 * x_302);
  let x_310 : vec2<f32> = vs_TEXCOORD7;
  let x_312 : f32 = x_28.x_GlobalMipBias.x;
  let x_313 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_310, x_312);
  u_xlat3 = x_313;
  let x_318 : vec2<f32> = vs_TEXCOORD7;
  let x_320 : f32 = x_28.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_318, x_320);
  u_xlat4 = vec3<f32>(x_321.x, x_321.y, x_321.z);
  let x_323 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec3<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(x_331, vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat26;
  u_xlat26 = (x_335 + 0.5f);
  let x_338 : f32 = u_xlat26;
  let x_340 : vec3<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_338, x_338, x_338) * x_340);
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = u_xlat3.w;
  u_xlat26 = max(x_345, 0.00009999999747378752f);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : f32 = u_xlat26;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) / vec3<f32>(x_350, x_350, x_350));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_357 : vec4<f32> = u_xlat2;
  let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.y);
  let x_360 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_358.x, x_358.y, x_360);
  let x_372 : vec3<f32> = txVec0;
  let x_374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_372.xy, x_372.z);
  u_xlat2.x = x_374;
  let x_378 : f32 = x_75.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_378) + 1.0f);
  let x_383 : f32 = u_xlat2.x;
  let x_385 : f32 = x_75.x_MainLightShadowParams.x;
  let x_388 : f32 = u_xlat10.x;
  u_xlat2.x = ((x_383 * x_385) + x_388);
  let x_393 : f32 = u_xlat2.z;
  u_xlatb10 = (0.0f >= x_393);
  let x_397 : f32 = u_xlat2.z;
  u_xlatb18 = (x_397 >= 1.0f);
  let x_399 : bool = u_xlatb18;
  let x_400 : bool = u_xlatb10;
  u_xlatb10 = (x_399 | x_400);
  let x_402 : bool = u_xlatb10;
  if (x_402) {
    x_404 = 1.0f;
  } else {
    let x_409 : f32 = u_xlat2.x;
    x_404 = x_409;
  }
  let x_410 : f32 = x_404;
  u_xlat2.x = x_410;
  let x_412 : vec3<f32> = vs_TEXCOORD1;
  let x_415 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat10 = (x_412 + -(x_415));
  let x_418 : vec3<f32> = u_xlat10;
  let x_419 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_418, x_419);
  let x_424 : f32 = u_xlat10.x;
  let x_426 : f32 = x_75.x_MainLightShadowParams.z;
  let x_429 : f32 = x_75.x_MainLightShadowParams.w;
  u_xlat18 = ((x_424 * x_426) + x_429);
  let x_431 : f32 = u_xlat18;
  u_xlat18 = clamp(x_431, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat2.x;
  u_xlat26 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat18;
  let x_438 : f32 = u_xlat26;
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_437 * x_438) + x_441);
  let x_445 : f32 = u_xlat2.x;
  let x_451 : f32 = x_449.unity_LightData.z;
  u_xlat2.x = (x_445 * x_451);
  let x_454 : vec4<f32> = u_xlat2;
  let x_457 : vec4<f32> = x_28.x_MainLightColor;
  let x_459 : vec3<f32> = (vec3<f32>(x_454.x, x_454.x, x_454.x) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_459.x, x_460.y, x_459.y, x_459.z);
  let x_463 : vec3<f32> = u_xlat1;
  let x_465 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat27 = dot(x_463, vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : f32 = u_xlat27;
  u_xlat27 = clamp(x_468, 0.0f, 1.0f);
  let x_470 : vec4<f32> = u_xlat2;
  let x_472 : f32 = u_xlat27;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.z, x_470.w) * vec3<f32>(x_472, x_472, x_472));
  let x_475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_474.x, x_475.y, x_474.y, x_474.z);
  let x_477 : vec4<f32> = u_xlat0;
  let x_479 : vec4<f32> = u_xlat2;
  let x_481 : vec3<f32> = (vec3<f32>(x_477.y, x_477.z, x_477.w) * vec3<f32>(x_479.x, x_479.z, x_479.w));
  let x_482 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_481.x, x_482.y, x_481.y, x_481.z);
  let x_485 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_487 : f32 = x_449.unity_LightData.y;
  u_xlat27 = min(x_485, x_487);
  let x_490 : f32 = u_xlat27;
  u_xlatu27 = bitcast<u32>(i32(x_490));
  let x_494 : f32 = u_xlat10.x;
  let x_497 : f32 = x_75.x_AdditionalShadowFadeParams.x;
  let x_500 : f32 = x_75.x_AdditionalShadowFadeParams.y;
  u_xlat10.x = ((x_494 * x_497) + x_500);
  let x_504 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_504, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_517 : u32 = u_xlatu_loop_1;
    let x_518 : u32 = u_xlatu27;
    if ((x_517 < x_518)) {
    } else {
      break;
    }
    let x_521 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_521 >> 2u);
    let x_524 : u32 = u_xlatu_loop_1;
    u_xlati13 = bitcast<i32>((x_524 & 3u));
    let x_527 : u32 = u_xlatu5;
    let x_530 : vec4<f32> = x_449.unity_LightIndices[bitcast<i32>(x_527)];
    let x_540 : i32 = u_xlati13;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_545 : vec4<u32> = indexable[x_540];
    u_xlat5.x = dot(x_530, bitcast<vec4<f32>>(x_545));
    let x_551 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_551);
    let x_554 : vec3<f32> = vs_TEXCOORD1;
    let x_565 : i32 = u_xlati5;
    let x_567 : vec4<f32> = x_564.x_AdditionalLightsPosition[x_565];
    let x_570 : i32 = u_xlati5;
    let x_572 : vec4<f32> = x_564.x_AdditionalLightsPosition[x_570];
    u_xlat13 = ((-(x_554) * vec3<f32>(x_567.w, x_567.w, x_567.w)) + vec3<f32>(x_572.x, x_572.y, x_572.z));
    let x_576 : vec3<f32> = u_xlat13;
    let x_577 : vec3<f32> = u_xlat13;
    u_xlat6.x = dot(x_576, x_577);
    let x_581 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_581, 0.00006103515625f);
    let x_587 : f32 = u_xlat6.x;
    u_xlat14.x = inverseSqrt(x_587);
    let x_590 : vec3<f32> = u_xlat13;
    let x_591 : vec3<f32> = u_xlat14;
    u_xlat13 = (x_590 * vec3<f32>(x_591.x, x_591.x, x_591.x));
    let x_595 : f32 = u_xlat6.x;
    u_xlat14.x = (1.0f / x_595);
    let x_599 : f32 = u_xlat6.x;
    let x_600 : i32 = u_xlati5;
    let x_602 : f32 = x_564.x_AdditionalLightsAttenuation[x_600].x;
    u_xlat6.x = (x_599 * x_602);
    let x_606 : f32 = u_xlat6.x;
    let x_609 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_606) * x_609) + 1.0f);
    let x_614 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_614, 0.0f);
    let x_618 : f32 = u_xlat6.x;
    let x_620 : f32 = u_xlat6.x;
    u_xlat6.x = (x_618 * x_620);
    let x_624 : f32 = u_xlat6.x;
    let x_626 : f32 = u_xlat14.x;
    u_xlat6.x = (x_624 * x_626);
    let x_629 : i32 = u_xlati5;
    let x_631 : vec4<f32> = x_564.x_AdditionalLightsSpotDir[x_629];
    let x_633 : vec3<f32> = u_xlat13;
    u_xlat14.x = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), x_633);
    let x_637 : f32 = u_xlat14.x;
    let x_638 : i32 = u_xlati5;
    let x_640 : f32 = x_564.x_AdditionalLightsAttenuation[x_638].z;
    let x_642 : i32 = u_xlati5;
    let x_644 : f32 = x_564.x_AdditionalLightsAttenuation[x_642].w;
    u_xlat14.x = ((x_637 * x_640) + x_644);
    let x_648 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_648, 0.0f, 1.0f);
    let x_652 : f32 = u_xlat14.x;
    let x_654 : f32 = u_xlat14.x;
    u_xlat14.x = (x_652 * x_654);
    let x_658 : f32 = u_xlat14.x;
    let x_660 : f32 = u_xlat6.x;
    u_xlat6.x = (x_658 * x_660);
    let x_665 : i32 = u_xlati5;
    let x_667 : f32 = x_75.x_AdditionalShadowParams[x_665].w;
    u_xlati14 = i32(x_667);
    let x_670 : i32 = u_xlati14;
    u_xlatb22 = (x_670 >= 0i);
    let x_672 : bool = u_xlatb22;
    if (x_672) {
      let x_676 : i32 = u_xlati5;
      let x_678 : f32 = x_75.x_AdditionalShadowParams[x_676].z;
      u_xlatb22 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_678, x_678, x_678, x_678))));
      let x_682 : bool = u_xlatb22;
      if (x_682) {
        let x_686 : vec3<f32> = u_xlat13;
        let x_689 : vec3<f32> = u_xlat13;
        let x_692 : vec4<bool> = (abs(vec4<f32>(x_686.z, x_686.z, x_686.y, x_686.z)) >= abs(vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.x)));
        let x_694 : vec3<bool> = vec3<bool>(x_692.x, x_692.y, x_692.z);
        let x_695 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_694.x, x_694.y, x_694.z, x_695.w);
        let x_698 : bool = u_xlatb7.y;
        let x_700 : bool = u_xlatb7.x;
        u_xlatb22 = (x_698 & x_700);
        let x_702 : vec3<f32> = u_xlat13;
        let x_705 : vec4<bool> = (-(vec4<f32>(x_702.z, x_702.y, x_702.z, x_702.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_706 : vec3<bool> = vec3<bool>(x_705.x, x_705.y, x_705.w);
        let x_707 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_706.x, x_706.y, x_707.z, x_706.z);
        let x_711 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_711);
        let x_716 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_716);
        let x_721 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_721);
        let x_724 : bool = u_xlatb7.z;
        if (x_724) {
          let x_729 : f32 = u_xlat7.y;
          x_725 = x_729;
        } else {
          let x_731 : f32 = u_xlat30;
          x_725 = x_731;
        }
        let x_732 : f32 = x_725;
        u_xlat30 = x_732;
        let x_734 : bool = u_xlatb22;
        if (x_734) {
          let x_739 : f32 = u_xlat7.x;
          x_735 = x_739;
        } else {
          let x_741 : f32 = u_xlat30;
          x_735 = x_741;
        }
        let x_742 : f32 = x_735;
        u_xlat22 = x_742;
        let x_743 : i32 = u_xlati5;
        let x_745 : f32 = x_75.x_AdditionalShadowParams[x_743].w;
        u_xlat30 = trunc(x_745);
        let x_747 : f32 = u_xlat22;
        let x_748 : f32 = u_xlat30;
        u_xlat22 = (x_747 + x_748);
        let x_750 : f32 = u_xlat22;
        u_xlati14 = i32(x_750);
      }
      let x_752 : i32 = u_xlati14;
      u_xlati14 = (x_752 << bitcast<u32>(2i));
      let x_754 : vec3<f32> = vs_TEXCOORD1;
      let x_757 : i32 = u_xlati14;
      let x_760 : i32 = u_xlati14;
      let x_764 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_757 + 1i) / 4i)][((x_760 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_754.y, x_754.y, x_754.y, x_754.y) * x_764);
      let x_766 : i32 = u_xlati14;
      let x_768 : i32 = u_xlati14;
      let x_771 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[(x_766 / 4i)][(x_768 % 4i)];
      let x_772 : vec3<f32> = vs_TEXCOORD1;
      let x_775 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_771 * vec4<f32>(x_772.x, x_772.x, x_772.x, x_772.x)) + x_775);
      let x_777 : i32 = u_xlati14;
      let x_780 : i32 = u_xlati14;
      let x_784 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_777 + 2i) / 4i)][((x_780 + 2i) % 4i)];
      let x_785 : vec3<f32> = vs_TEXCOORD1;
      let x_788 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_784 * vec4<f32>(x_785.z, x_785.z, x_785.z, x_785.z)) + x_788);
      let x_790 : vec4<f32> = u_xlat7;
      let x_791 : i32 = u_xlati14;
      let x_794 : i32 = u_xlati14;
      let x_798 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_791 + 3i) / 4i)][((x_794 + 3i) % 4i)];
      u_xlat7 = (x_790 + x_798);
      let x_800 : vec4<f32> = u_xlat7;
      let x_802 : vec4<f32> = u_xlat7;
      u_xlat14 = (vec3<f32>(x_800.x, x_800.y, x_800.z) / vec3<f32>(x_802.w, x_802.w, x_802.w));
      let x_806 : vec3<f32> = u_xlat14;
      let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
      let x_809 : f32 = u_xlat14.z;
      txVec1 = vec3<f32>(x_807.x, x_807.y, x_809);
      let x_817 : vec3<f32> = txVec1;
      let x_819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
      u_xlat14.x = x_819;
      let x_821 : i32 = u_xlati5;
      let x_823 : f32 = x_75.x_AdditionalShadowParams[x_821].x;
      u_xlat22 = (1.0f + -(x_823));
      let x_827 : f32 = u_xlat14.x;
      let x_828 : i32 = u_xlati5;
      let x_830 : f32 = x_75.x_AdditionalShadowParams[x_828].x;
      let x_832 : f32 = u_xlat22;
      u_xlat14.x = ((x_827 * x_830) + x_832);
      let x_836 : f32 = u_xlat14.z;
      u_xlatb22 = (0.0f >= x_836);
      let x_840 : f32 = u_xlat14.z;
      u_xlatb30 = (x_840 >= 1.0f);
      let x_842 : bool = u_xlatb30;
      let x_843 : bool = u_xlatb22;
      u_xlatb22 = (x_842 | x_843);
      let x_845 : bool = u_xlatb22;
      if (x_845) {
        x_846 = 1.0f;
      } else {
        let x_851 : f32 = u_xlat14.x;
        x_846 = x_851;
      }
      let x_852 : f32 = x_846;
      u_xlat14.x = x_852;
    } else {
      u_xlat14.x = 1.0f;
    }
    let x_857 : f32 = u_xlat14.x;
    u_xlat22 = (-(x_857) + 1.0f);
    let x_861 : f32 = u_xlat10.x;
    let x_862 : f32 = u_xlat22;
    let x_865 : f32 = u_xlat14.x;
    u_xlat14.x = ((x_861 * x_862) + x_865);
    let x_869 : f32 = u_xlat14.x;
    let x_871 : f32 = u_xlat6.x;
    u_xlat6.x = (x_869 * x_871);
    let x_874 : vec3<f32> = u_xlat6;
    let x_876 : i32 = u_xlati5;
    let x_878 : vec4<f32> = x_564.x_AdditionalLightsColor[x_876];
    u_xlat6 = (vec3<f32>(x_874.x, x_874.x, x_874.x) * vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec3<f32> = u_xlat1;
    let x_882 : vec3<f32> = u_xlat13;
    u_xlat5.x = dot(x_881, x_882);
    let x_886 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_886, 0.0f, 1.0f);
    let x_889 : vec3<f32> = u_xlat5;
    let x_891 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_889.x, x_889.x, x_889.x) * x_891);
    let x_893 : vec3<f32> = u_xlat5;
    let x_894 : vec4<f32> = u_xlat0;
    let x_897 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_893 * vec3<f32>(x_894.y, x_894.z, x_894.w)) + x_897);

    continuing {
      let x_899 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_899 + bitcast<u32>(1i));
    }
  }
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec4<f32> = u_xlat0;
  let x_907 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(x_904.y, x_904.z, x_904.w)) + vec3<f32>(x_907.x, x_907.z, x_907.w));
  let x_910 : vec3<f32> = u_xlat4;
  let x_911 : vec3<f32> = u_xlat8;
  u_xlat8 = (x_910 + x_911);
  let x_913 : f32 = u_xlat25;
  let x_914 : f32 = u_xlat25;
  u_xlat1.x = (x_913 * -(x_914));
  let x_919 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_919);
  let x_922 : vec3<f32> = u_xlat8;
  let x_925 : vec4<f32> = x_28.unity_FogColor;
  u_xlat8 = (x_922 + -(vec3<f32>(x_925.x, x_925.y, x_925.z)));
  let x_931 : vec3<f32> = u_xlat1;
  let x_933 : vec3<f32> = u_xlat8;
  let x_936 : vec4<f32> = x_28.unity_FogColor;
  let x_938 : vec3<f32> = ((vec3<f32>(x_931.x, x_931.x, x_931.x) * x_933) + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_943 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_943 == 1.0f);
  let x_945 : bool = u_xlatb8;
  if (x_945) {
    let x_950 : f32 = u_xlat0.x;
    x_946 = x_950;
  } else {
    x_946 = 1.0f;
  }
  let x_952 : f32 = x_946;
  SV_Target0.w = x_952;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


