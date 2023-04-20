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

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_108 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_607 : UnityPerDraw;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_834 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var x_492 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_979 : f32;
  var x_990 : f32;
  var txVec1 : vec3<f32>;
  var x_1107 : f32;
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
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_89);
  let x_92 : vec3<f32> = u_xlat13;
  let x_94 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_92.x, x_92.x, x_92.x) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_100 : vec3<f32> = vs_TEXCOORD7;
  let x_111 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres0;
  let x_114 : vec3<f32> = (x_100 + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = vs_TEXCOORD7;
  let x_121 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres1;
  let x_124 : vec3<f32> = (x_118 + -(vec3<f32>(x_121.x, x_121.y, x_121.z)));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_128 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_136 : vec3<f32> = vs_TEXCOORD7;
  let x_139 : vec4<f32> = x_108.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_136 + -(vec3<f32>(x_139.x, x_139.y, x_139.z)));
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_149 : vec4<f32> = u_xlat3;
  let x_151 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_149.x, x_149.y, x_149.z), vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_156 : vec3<f32> = u_xlat4;
  let x_157 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_156, x_157);
  let x_161 : vec3<f32> = u_xlat5;
  let x_162 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_161, x_162);
  let x_169 : vec4<f32> = u_xlat2;
  let x_172 : vec4<f32> = x_108.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_169 < x_172);
  let x_175 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_175);
  let x_180 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_180);
  let x_184 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_184);
  let x_188 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_188);
  let x_192 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_192);
  let x_198 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_198);
  let x_202 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_202);
  let x_205 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + vec3<f32>(x_207.y, x_207.z, x_207.w));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : vec3<f32> = max(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_216.x, x_215.x, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_218, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_226 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_226) + 4.0f);
  let x_233 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_233);
  let x_237 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_237) << bitcast<u32>(2i));
  let x_241 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : i32 = u_xlati2;
  let x_246 : i32 = u_xlati2;
  let x_250 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_243 + 1i) / 4i)][((x_246 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_241.y, x_241.y, x_241.y) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : i32 = u_xlati2;
  let x_255 : i32 = u_xlati2;
  let x_258 : vec4<f32> = x_108.x_MainLightWorldToShadow[(x_253 / 4i)][(x_255 % 4i)];
  let x_260 : vec3<f32> = vs_TEXCOORD7;
  let x_263 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + x_263);
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_265 + 2i) / 4i)][((x_268 + 2i) % 4i)];
  let x_274 : vec3<f32> = vs_TEXCOORD7;
  let x_277 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.z, x_274.z, x_274.z)) + x_277);
  let x_279 : vec3<f32> = u_xlat14;
  let x_280 : i32 = u_xlati2;
  let x_283 : i32 = u_xlati2;
  let x_287 : vec4<f32> = x_108.x_MainLightWorldToShadow[((x_280 + 3i) / 4i)][((x_283 + 3i) % 4i)];
  let x_289 : vec3<f32> = (x_279 + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_295 : f32 = vs_TEXCOORD7.y;
  let x_298 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat38 = (x_295 * x_298);
  let x_301 : f32 = x_29.unity_MatrixV[0i].z;
  let x_303 : f32 = vs_TEXCOORD7.x;
  let x_305 : f32 = u_xlat38;
  u_xlat38 = ((x_301 * x_303) + x_305);
  let x_308 : f32 = x_29.unity_MatrixV[2i].z;
  let x_310 : f32 = vs_TEXCOORD7.z;
  let x_312 : f32 = u_xlat38;
  u_xlat38 = ((x_308 * x_310) + x_312);
  let x_314 : f32 = u_xlat38;
  let x_316 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat38 = (x_314 + x_316);
  let x_318 : f32 = u_xlat38;
  let x_321 : f32 = x_29.x_ProjectionParams.y;
  u_xlat38 = (-(x_318) + -(x_321));
  let x_324 : f32 = u_xlat38;
  u_xlat38 = max(x_324, 0.0f);
  let x_326 : f32 = u_xlat38;
  let x_329 : f32 = x_29.unity_FogParams.x;
  u_xlat38 = (x_326 * x_329);
  let x_336 : vec4<f32> = vs_TEXCOORD0;
  let x_339 : f32 = x_29.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_336.z, x_336.w), x_339);
  u_xlat3 = x_340;
  let x_345 : vec4<f32> = vs_TEXCOORD0;
  let x_348 : f32 = x_29.x_GlobalMipBias.x;
  let x_349 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_345.z, x_345.w), x_348);
  u_xlat4 = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_351 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = u_xlat13;
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_358, vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_364 : f32 = u_xlat3.x;
  u_xlat3.x = (x_364 + 0.5f);
  let x_368 : vec4<f32> = u_xlat3;
  let x_370 : vec3<f32> = u_xlat4;
  let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_376 : f32 = u_xlat3.w;
  u_xlat39 = max(x_376, 0.00009999999747378752f);
  let x_379 : vec4<f32> = u_xlat3;
  let x_381 : f32 = u_xlat39;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) / vec3<f32>(x_381, x_381, x_381));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : f32 = u_xlat1;
  u_xlat39 = ((-(x_386) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_391 : f32 = u_xlat39;
  u_xlat4.x = (-(x_391) + 1.0f);
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : f32 = u_xlat39;
  u_xlat16 = (vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398, x_398, x_398));
  let x_401 : vec4<f32> = u_xlat0;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : f32 = u_xlat1;
  let x_410 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_419) + 1.0f);
  let x_422 : f32 = u_xlat1;
  let x_423 : f32 = u_xlat1;
  u_xlat39 = (x_422 * x_423);
  let x_425 : f32 = u_xlat39;
  u_xlat39 = max(x_425, 0.0078125f);
  let x_428 : f32 = u_xlat39;
  let x_429 : f32 = u_xlat39;
  u_xlat5.x = (x_428 * x_429);
  let x_434 : f32 = u_xlat0.w;
  let x_436 : f32 = u_xlat4.x;
  u_xlat36 = (x_434 + x_436);
  let x_438 : f32 = u_xlat36;
  u_xlat36 = clamp(x_438, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat39;
  u_xlat4.x = ((x_440 * 4.0f) + 2.0f);
  let x_446 : vec4<f32> = u_xlat2;
  let x_447 : vec2<f32> = vec2<f32>(x_446.x, x_446.y);
  let x_449 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_447.x, x_447.y, x_449);
  let x_461 : vec3<f32> = txVec0;
  let x_463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_461.xy, x_461.z);
  u_xlat2.x = x_463;
  let x_466 : f32 = x_108.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat2.x;
  let x_473 : f32 = x_108.x_MainLightShadowParams.x;
  let x_476 : f32 = u_xlat14.x;
  u_xlat2.x = ((x_471 * x_473) + x_476);
  let x_481 : f32 = u_xlat2.z;
  u_xlatb14 = (0.0f >= x_481);
  let x_485 : f32 = u_xlat2.z;
  u_xlatb26 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb26;
  let x_488 : bool = u_xlatb14;
  u_xlatb14 = (x_487 | x_488);
  let x_490 : bool = u_xlatb14;
  if (x_490) {
    x_492 = 1.0f;
  } else {
    let x_497 : f32 = u_xlat2.x;
    x_492 = x_497;
  }
  let x_498 : f32 = x_492;
  u_xlat2.x = x_498;
  let x_501 : vec3<f32> = vs_TEXCOORD7;
  let x_504 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_501 + -(x_504));
  let x_507 : vec3<f32> = u_xlat17;
  let x_508 : vec3<f32> = u_xlat17;
  u_xlat14.x = dot(x_507, x_508);
  let x_513 : f32 = u_xlat14.x;
  let x_515 : f32 = x_108.x_MainLightShadowParams.z;
  let x_518 : f32 = x_108.x_MainLightShadowParams.w;
  u_xlat26 = ((x_513 * x_515) + x_518);
  let x_520 : f32 = u_xlat26;
  u_xlat26 = clamp(x_520, 0.0f, 1.0f);
  let x_523 : f32 = u_xlat2.x;
  u_xlat17.x = (-(x_523) + 1.0f);
  let x_527 : f32 = u_xlat26;
  let x_529 : f32 = u_xlat17.x;
  let x_532 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_527 * x_529) + x_532);
  let x_537 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_537;
  let x_541 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_541;
  let x_545 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_545;
  let x_547 : vec3<f32> = u_xlat6;
  let x_549 : vec3<f32> = u_xlat13;
  u_xlat26 = dot(-(x_547), x_549);
  let x_551 : f32 = u_xlat26;
  let x_552 : f32 = u_xlat26;
  u_xlat26 = (x_551 + x_552);
  let x_554 : vec3<f32> = u_xlat13;
  let x_555 : f32 = u_xlat26;
  let x_559 : vec3<f32> = u_xlat6;
  u_xlat17 = ((x_554 * -(vec3<f32>(x_555, x_555, x_555))) + -(x_559));
  let x_562 : vec3<f32> = u_xlat13;
  let x_563 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_562, x_563);
  let x_565 : f32 = u_xlat26;
  u_xlat26 = clamp(x_565, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat26;
  u_xlat26 = (-(x_567) + 1.0f);
  let x_570 : f32 = u_xlat26;
  let x_571 : f32 = u_xlat26;
  u_xlat26 = (x_570 * x_571);
  let x_573 : f32 = u_xlat26;
  let x_574 : f32 = u_xlat26;
  u_xlat26 = (x_573 * x_574);
  let x_577 : f32 = u_xlat1;
  u_xlat42 = ((-(x_577) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_583 : f32 = u_xlat1;
  let x_584 : f32 = u_xlat42;
  u_xlat1 = (x_583 * x_584);
  let x_586 : f32 = u_xlat1;
  u_xlat1 = (x_586 * 6.0f);
  let x_598 : vec3<f32> = u_xlat17;
  let x_599 : f32 = u_xlat1;
  let x_600 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_598, x_599);
  u_xlat7 = x_600;
  let x_602 : f32 = u_xlat7.w;
  u_xlat1 = (x_602 + -1.0f);
  let x_609 : f32 = x_607.unity_SpecCube0_HDR.w;
  let x_610 : f32 = u_xlat1;
  u_xlat1 = ((x_609 * x_610) + 1.0f);
  let x_613 : f32 = u_xlat1;
  u_xlat1 = max(x_613, 0.0f);
  let x_615 : f32 = u_xlat1;
  u_xlat1 = log2(x_615);
  let x_617 : f32 = u_xlat1;
  let x_619 : f32 = x_607.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_617 * x_619);
  let x_621 : f32 = u_xlat1;
  u_xlat1 = exp2(x_621);
  let x_623 : f32 = u_xlat1;
  let x_625 : f32 = x_607.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_623 * x_625);
  let x_627 : vec4<f32> = u_xlat7;
  let x_629 : f32 = u_xlat1;
  u_xlat17 = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(x_629, x_629, x_629));
  let x_632 : f32 = u_xlat39;
  let x_634 : f32 = u_xlat39;
  let x_638 : vec2<f32> = ((vec2<f32>(x_632, x_632) * vec2<f32>(x_634, x_634)) + vec2<f32>(-1.0f, 1.0f));
  let x_639 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
  let x_642 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_642);
  let x_645 : vec4<f32> = u_xlat0;
  let x_648 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_645.x, x_645.y, x_645.z)) + vec3<f32>(x_648, x_648, x_648));
  let x_651 : f32 = u_xlat26;
  let x_653 : vec3<f32> = u_xlat19;
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_651, x_651, x_651) * x_653) + vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : f32 = u_xlat1;
  let x_660 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_658, x_658, x_658) * x_660);
  let x_662 : vec3<f32> = u_xlat17;
  let x_663 : vec3<f32> = u_xlat19;
  u_xlat17 = (x_662 * x_663);
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec3<f32> = u_xlat16;
  let x_669 : vec3<f32> = u_xlat17;
  let x_670 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * x_667) + x_669);
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_674 : f32 = u_xlat2.x;
  let x_676 : f32 = x_607.unity_LightData.z;
  u_xlat36 = (x_674 * x_676);
  let x_678 : vec3<f32> = u_xlat13;
  let x_680 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_678, vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : f32 = u_xlat1;
  u_xlat1 = clamp(x_683, 0.0f, 1.0f);
  let x_685 : f32 = u_xlat36;
  let x_686 : f32 = u_xlat1;
  u_xlat36 = (x_685 * x_686);
  let x_688 : f32 = u_xlat36;
  let x_691 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec3<f32> = u_xlat6;
  let x_696 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_694 + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec3<f32> = u_xlat19;
  let x_700 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_699, x_700);
  let x_702 : f32 = u_xlat36;
  u_xlat36 = max(x_702, 1.17549435e-38f);
  let x_705 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_705);
  let x_707 : f32 = u_xlat36;
  let x_709 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_707, x_707, x_707) * x_709);
  let x_711 : vec3<f32> = u_xlat13;
  let x_712 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_711, x_712);
  let x_714 : f32 = u_xlat36;
  u_xlat36 = clamp(x_714, 0.0f, 1.0f);
  let x_717 : vec4<f32> = x_29.x_MainLightPosition;
  let x_719 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), x_719);
  let x_721 : f32 = u_xlat1;
  u_xlat1 = clamp(x_721, 0.0f, 1.0f);
  let x_723 : f32 = u_xlat36;
  let x_724 : f32 = u_xlat36;
  u_xlat36 = (x_723 * x_724);
  let x_726 : f32 = u_xlat36;
  let x_728 : f32 = u_xlat7.x;
  u_xlat36 = ((x_726 * x_728) + 1.00001001358032226562f);
  let x_732 : f32 = u_xlat1;
  let x_733 : f32 = u_xlat1;
  u_xlat1 = (x_732 * x_733);
  let x_735 : f32 = u_xlat36;
  let x_736 : f32 = u_xlat36;
  u_xlat36 = (x_735 * x_736);
  let x_738 : f32 = u_xlat1;
  u_xlat1 = max(x_738, 0.10000000149011611938f);
  let x_741 : f32 = u_xlat36;
  let x_742 : f32 = u_xlat1;
  u_xlat36 = (x_741 * x_742);
  let x_745 : f32 = u_xlat4.x;
  let x_746 : f32 = u_xlat36;
  u_xlat36 = (x_745 * x_746);
  let x_749 : f32 = u_xlat5.x;
  let x_750 : f32 = u_xlat36;
  u_xlat36 = (x_749 / x_750);
  let x_752 : vec4<f32> = u_xlat0;
  let x_754 : f32 = u_xlat36;
  let x_757 : vec3<f32> = u_xlat16;
  u_xlat19 = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754, x_754, x_754)) + x_757);
  let x_760 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_762 : f32 = x_607.unity_LightData.y;
  u_xlat36 = min(x_760, x_762);
  let x_765 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_765));
  let x_769 : f32 = u_xlat14.x;
  let x_772 : f32 = x_108.x_AdditionalShadowFadeParams.x;
  let x_775 : f32 = x_108.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_769 * x_772) + x_775);
  let x_777 : f32 = u_xlat1;
  u_xlat1 = clamp(x_777, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_789 : u32 = u_xlatu_loop_1;
    let x_790 : u32 = u_xlatu36;
    if ((x_789 < x_790)) {
    } else {
      break;
    }
    let x_793 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_793 >> 2u);
    let x_796 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_796 & 3u));
    let x_799 : u32 = u_xlatu42;
    let x_802 : vec4<f32> = x_607.unity_LightIndices[bitcast<i32>(x_799)];
    let x_812 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_817 : vec4<u32> = indexable[x_812];
    u_xlat42 = dot(x_802, bitcast<vec4<f32>>(x_817));
    let x_821 : f32 = u_xlat42;
    u_xlati42 = i32(x_821);
    let x_824 : vec3<f32> = vs_TEXCOORD7;
    let x_835 : i32 = u_xlati42;
    let x_837 : vec4<f32> = x_834.x_AdditionalLightsPosition[x_835];
    let x_840 : i32 = u_xlati42;
    let x_842 : vec4<f32> = x_834.x_AdditionalLightsPosition[x_840];
    u_xlat8 = ((-(x_824) * vec3<f32>(x_837.w, x_837.w, x_837.w)) + vec3<f32>(x_842.x, x_842.y, x_842.z));
    let x_846 : vec3<f32> = u_xlat8;
    let x_847 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_846, x_847);
    let x_849 : f32 = u_xlat44;
    u_xlat44 = max(x_849, 0.00006103515625f);
    let x_853 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_853);
    let x_856 : vec3<f32> = u_xlat8;
    let x_857 : f32 = u_xlat9;
    u_xlat21 = (x_856 * vec3<f32>(x_857, x_857, x_857));
    let x_861 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_861);
    let x_864 : f32 = u_xlat44;
    let x_865 : i32 = u_xlati42;
    let x_867 : f32 = x_834.x_AdditionalLightsAttenuation[x_865].x;
    u_xlat44 = (x_864 * x_867);
    let x_869 : f32 = u_xlat44;
    let x_871 : f32 = u_xlat44;
    u_xlat44 = ((-(x_869) * x_871) + 1.0f);
    let x_874 : f32 = u_xlat44;
    u_xlat44 = max(x_874, 0.0f);
    let x_876 : f32 = u_xlat44;
    let x_877 : f32 = u_xlat44;
    u_xlat44 = (x_876 * x_877);
    let x_879 : f32 = u_xlat44;
    let x_881 : f32 = u_xlat10.x;
    u_xlat44 = (x_879 * x_881);
    let x_883 : i32 = u_xlati42;
    let x_885 : vec4<f32> = x_834.x_AdditionalLightsSpotDir[x_883];
    let x_887 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), x_887);
    let x_891 : f32 = u_xlat10.x;
    let x_892 : i32 = u_xlati42;
    let x_894 : f32 = x_834.x_AdditionalLightsAttenuation[x_892].z;
    let x_896 : i32 = u_xlati42;
    let x_898 : f32 = x_834.x_AdditionalLightsAttenuation[x_896].w;
    u_xlat10.x = ((x_891 * x_894) + x_898);
    let x_902 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_902, 0.0f, 1.0f);
    let x_906 : f32 = u_xlat10.x;
    let x_908 : f32 = u_xlat10.x;
    u_xlat10.x = (x_906 * x_908);
    let x_911 : f32 = u_xlat44;
    let x_913 : f32 = u_xlat10.x;
    u_xlat44 = (x_911 * x_913);
    let x_917 : i32 = u_xlati42;
    let x_919 : f32 = x_108.x_AdditionalShadowParams[x_917].w;
    u_xlati10 = i32(x_919);
    let x_924 : i32 = u_xlati10;
    u_xlatb22.x = (x_924 >= 0i);
    let x_928 : bool = u_xlatb22.x;
    if (x_928) {
      let x_932 : i32 = u_xlati42;
      let x_934 : f32 = x_108.x_AdditionalShadowParams[x_932].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_934, x_934, x_934, x_934))));
      let x_940 : bool = u_xlatb22.x;
      if (x_940) {
        let x_943 : vec3<f32> = u_xlat21;
        let x_946 : vec3<f32> = u_xlat21;
        let x_949 : vec4<bool> = (abs(vec4<f32>(x_943.z, x_943.z, x_943.y, x_943.y)) >= abs(vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.x)));
        u_xlatb22 = vec3<bool>(x_949.x, x_949.y, x_949.z);
        let x_952 : bool = u_xlatb22.y;
        let x_954 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_952 & x_954);
        let x_958 : vec3<f32> = u_xlat21;
        let x_961 : vec4<bool> = (-(vec4<f32>(x_958.z, x_958.y, x_958.x, x_958.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_961.x, x_961.y, x_961.z);
        let x_965 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_965);
        let x_970 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_970);
        let x_975 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_975);
        let x_978 : bool = u_xlatb22.z;
        if (x_978) {
          let x_983 : f32 = u_xlat11.y;
          x_979 = x_983;
        } else {
          let x_985 : f32 = u_xlat34;
          x_979 = x_985;
        }
        let x_986 : f32 = x_979;
        u_xlat34 = x_986;
        let x_989 : bool = u_xlatb22.x;
        if (x_989) {
          let x_994 : f32 = u_xlat11.x;
          x_990 = x_994;
        } else {
          let x_996 : f32 = u_xlat34;
          x_990 = x_996;
        }
        let x_997 : f32 = x_990;
        u_xlat22 = x_997;
        let x_998 : i32 = u_xlati42;
        let x_1000 : f32 = x_108.x_AdditionalShadowParams[x_998].w;
        u_xlat34 = trunc(x_1000);
        let x_1002 : f32 = u_xlat22;
        let x_1003 : f32 = u_xlat34;
        u_xlat22 = (x_1002 + x_1003);
        let x_1005 : f32 = u_xlat22;
        u_xlati10 = i32(x_1005);
      }
      let x_1007 : i32 = u_xlati10;
      u_xlati10 = (x_1007 << bitcast<u32>(2i));
      let x_1009 : vec3<f32> = vs_TEXCOORD7;
      let x_1012 : i32 = u_xlati10;
      let x_1015 : i32 = u_xlati10;
      let x_1019 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1012 + 1i) / 4i)][((x_1015 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1009.y, x_1009.y, x_1009.y, x_1009.y) * x_1019);
      let x_1021 : i32 = u_xlati10;
      let x_1023 : i32 = u_xlati10;
      let x_1026 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[(x_1021 / 4i)][(x_1023 % 4i)];
      let x_1027 : vec3<f32> = vs_TEXCOORD7;
      let x_1030 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1026 * vec4<f32>(x_1027.x, x_1027.x, x_1027.x, x_1027.x)) + x_1030);
      let x_1032 : i32 = u_xlati10;
      let x_1035 : i32 = u_xlati10;
      let x_1039 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1032 + 2i) / 4i)][((x_1035 + 2i) % 4i)];
      let x_1040 : vec3<f32> = vs_TEXCOORD7;
      let x_1043 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1039 * vec4<f32>(x_1040.z, x_1040.z, x_1040.z, x_1040.z)) + x_1043);
      let x_1045 : vec4<f32> = u_xlat11;
      let x_1046 : i32 = u_xlati10;
      let x_1049 : i32 = u_xlati10;
      let x_1053 : vec4<f32> = x_108.x_AdditionalLightsWorldToShadow[((x_1046 + 3i) / 4i)][((x_1049 + 3i) % 4i)];
      u_xlat10 = (x_1045 + x_1053);
      let x_1055 : vec4<f32> = u_xlat10;
      let x_1057 : vec4<f32> = u_xlat10;
      let x_1059 : vec3<f32> = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) / vec3<f32>(x_1057.w, x_1057.w, x_1057.w));
      let x_1060 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
      let x_1063 : vec4<f32> = u_xlat10;
      let x_1064 : vec2<f32> = vec2<f32>(x_1063.x, x_1063.y);
      let x_1066 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1064.x, x_1064.y, x_1066);
      let x_1074 : vec3<f32> = txVec1;
      let x_1076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1074.xy, x_1074.z);
      u_xlat10.x = x_1076;
      let x_1078 : i32 = u_xlati42;
      let x_1080 : f32 = x_108.x_AdditionalShadowParams[x_1078].x;
      u_xlat22 = (1.0f + -(x_1080));
      let x_1084 : f32 = u_xlat10.x;
      let x_1085 : i32 = u_xlati42;
      let x_1087 : f32 = x_108.x_AdditionalShadowParams[x_1085].x;
      let x_1089 : f32 = u_xlat22;
      u_xlat10.x = ((x_1084 * x_1087) + x_1089);
      let x_1093 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1093);
      let x_1098 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1098 >= 1.0f);
      let x_1100 : bool = u_xlatb34;
      let x_1102 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1100 | x_1102);
      let x_1106 : bool = u_xlatb22.x;
      if (x_1106) {
        x_1107 = 1.0f;
      } else {
        let x_1112 : f32 = u_xlat10.x;
        x_1107 = x_1112;
      }
      let x_1113 : f32 = x_1107;
      u_xlat10.x = x_1113;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1118 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1118) + 1.0f);
    let x_1121 : f32 = u_xlat1;
    let x_1122 : f32 = u_xlat22;
    let x_1125 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1121 * x_1122) + x_1125);
    let x_1128 : f32 = u_xlat44;
    let x_1130 : f32 = u_xlat10.x;
    u_xlat44 = (x_1128 * x_1130);
    let x_1132 : vec3<f32> = u_xlat13;
    let x_1133 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1132, x_1133);
    let x_1137 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1137, 0.0f, 1.0f);
    let x_1140 : f32 = u_xlat44;
    let x_1142 : f32 = u_xlat10.x;
    u_xlat44 = (x_1140 * x_1142);
    let x_1144 : f32 = u_xlat44;
    let x_1146 : i32 = u_xlati42;
    let x_1148 : vec4<f32> = x_834.x_AdditionalLightsColor[x_1146];
    let x_1150 : vec3<f32> = (vec3<f32>(x_1144, x_1144, x_1144) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
    let x_1151 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
    let x_1153 : vec3<f32> = u_xlat8;
    let x_1154 : f32 = u_xlat9;
    let x_1157 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1153 * vec3<f32>(x_1154, x_1154, x_1154)) + x_1157);
    let x_1159 : vec3<f32> = u_xlat8;
    let x_1160 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1159, x_1160);
    let x_1162 : f32 = u_xlat42;
    u_xlat42 = max(x_1162, 1.17549435e-38f);
    let x_1164 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1164);
    let x_1166 : f32 = u_xlat42;
    let x_1168 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1166, x_1166, x_1166) * x_1168);
    let x_1170 : vec3<f32> = u_xlat13;
    let x_1171 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1170, x_1171);
    let x_1173 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1173, 0.0f, 1.0f);
    let x_1175 : vec3<f32> = u_xlat21;
    let x_1176 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1175, x_1176);
    let x_1180 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1180, 0.0f, 1.0f);
    let x_1183 : f32 = u_xlat42;
    let x_1184 : f32 = u_xlat42;
    u_xlat42 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat42;
    let x_1188 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1186 * x_1188) + 1.00001001358032226562f);
    let x_1192 : f32 = u_xlat8.x;
    let x_1194 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1192 * x_1194);
    let x_1197 : f32 = u_xlat42;
    let x_1198 : f32 = u_xlat42;
    u_xlat42 = (x_1197 * x_1198);
    let x_1201 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1201, 0.10000000149011611938f);
    let x_1204 : f32 = u_xlat42;
    let x_1206 : f32 = u_xlat8.x;
    u_xlat42 = (x_1204 * x_1206);
    let x_1209 : f32 = u_xlat4.x;
    let x_1210 : f32 = u_xlat42;
    u_xlat42 = (x_1209 * x_1210);
    let x_1213 : f32 = u_xlat5.x;
    let x_1214 : f32 = u_xlat42;
    u_xlat42 = (x_1213 / x_1214);
    let x_1216 : vec4<f32> = u_xlat0;
    let x_1218 : f32 = u_xlat42;
    let x_1221 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1216.x, x_1216.y, x_1216.z) * vec3<f32>(x_1218, x_1218, x_1218)) + x_1221);
    let x_1223 : vec3<f32> = u_xlat8;
    let x_1224 : vec4<f32> = u_xlat10;
    let x_1227 : vec4<f32> = u_xlat2;
    let x_1229 : vec3<f32> = ((x_1223 * vec3<f32>(x_1224.x, x_1224.y, x_1224.z)) + vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
    let x_1230 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);

    continuing {
      let x_1232 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1232 + bitcast<u32>(1i));
    }
  }
  let x_1234 : vec3<f32> = u_xlat19;
  let x_1235 : vec3<f32> = u_xlat17;
  let x_1237 : vec4<f32> = u_xlat3;
  let x_1239 : vec3<f32> = ((x_1234 * x_1235) + vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec4<f32> = u_xlat2;
  let x_1244 : vec4<f32> = u_xlat0;
  let x_1246 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) + vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : f32 = u_xlat38;
  let x_1250 : f32 = u_xlat38;
  u_xlat36 = (x_1249 * -(x_1250));
  let x_1253 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1253);
  let x_1255 : vec4<f32> = u_xlat0;
  let x_1259 : vec4<f32> = x_29.unity_FogColor;
  let x_1262 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) + -(vec3<f32>(x_1259.x, x_1259.y, x_1259.z)));
  let x_1263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1267 : f32 = u_xlat36;
  let x_1269 : vec4<f32> = u_xlat0;
  let x_1273 : vec4<f32> = x_29.unity_FogColor;
  let x_1275 : vec3<f32> = ((vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z)) + vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
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


