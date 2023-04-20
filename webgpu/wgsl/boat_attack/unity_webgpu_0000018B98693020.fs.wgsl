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

@group(1) @binding(3) var<uniform> x_128 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat38 : f32;

var<private> u_xlatu38 : u32;

var<private> u_xlati38 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat15 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlatb27 : bool;

var<private> u_xlat27 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_612 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_855 : AdditionalLights;

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

var<private> u_xlatu15 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_99 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_507 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1000 : f32;
  var x_1011 : f32;
  var txVec1 : vec3<f32>;
  var x_1128 : f32;
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
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_131 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres0;
  let x_134 : vec3<f32> = (x_120 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres1;
  let x_143 : vec3<f32> = (x_138 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_155 : vec3<f32> = vs_TEXCOORD7;
  let x_157 : vec4<f32> = x_128.x_CascadeShadowSplitSpheres3;
  let x_160 : vec3<f32> = (x_155 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = u_xlat5;
  let x_176 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_175, x_176);
  let x_179 : vec4<f32> = u_xlat6;
  let x_181 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_188 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = x_128.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_188 < x_191);
  let x_194 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_194);
  let x_199 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_211);
  let x_217 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_217);
  let x_221 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_221);
  let x_224 : vec4<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.y, x_226.z, x_226.w));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec3<f32> = max(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(x_238, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat38;
  u_xlat38 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat38;
  u_xlatu38 = u32(x_249);
  let x_253 : u32 = u_xlatu38;
  u_xlati38 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_TEXCOORD7;
  let x_258 : i32 = u_xlati38;
  let x_261 : i32 = u_xlati38;
  let x_265 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati38;
  let x_272 : i32 = u_xlati38;
  let x_275 : vec4<f32> = x_128.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_TEXCOORD7;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati38;
  let x_288 : i32 = u_xlati38;
  let x_292 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD7;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : i32 = u_xlati38;
  let x_307 : i32 = u_xlati38;
  let x_311 : vec4<f32> = x_128.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = vs_TEXCOORD7.y;
  let x_320 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat38 = (x_318 * x_320);
  let x_323 : f32 = x_29.unity_MatrixV[0i].z;
  let x_325 : f32 = vs_TEXCOORD7.x;
  let x_327 : f32 = u_xlat38;
  u_xlat38 = ((x_323 * x_325) + x_327);
  let x_330 : f32 = x_29.unity_MatrixV[2i].z;
  let x_332 : f32 = vs_TEXCOORD7.z;
  let x_334 : f32 = u_xlat38;
  u_xlat38 = ((x_330 * x_332) + x_334);
  let x_336 : f32 = u_xlat38;
  let x_338 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat38 = (x_336 + x_338);
  let x_340 : f32 = u_xlat38;
  let x_343 : f32 = x_29.x_ProjectionParams.y;
  u_xlat38 = (-(x_340) + -(x_343));
  let x_346 : f32 = u_xlat38;
  u_xlat38 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat38;
  let x_351 : f32 = x_29.unity_FogParams.x;
  u_xlat38 = (x_348 * x_351);
  let x_358 : vec4<f32> = vs_TEXCOORD0;
  let x_361 : f32 = x_29.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_358.z, x_358.w), x_361);
  u_xlat4 = x_362;
  let x_367 : vec4<f32> = vs_TEXCOORD0;
  let x_370 : f32 = x_29.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_367.z, x_367.w), x_370);
  u_xlat5 = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(x_381, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : f32 = u_xlat39;
  u_xlat39 = (x_385 + 0.5f);
  let x_388 : f32 = u_xlat39;
  let x_390 : vec3<f32> = u_xlat5;
  let x_391 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * x_390);
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat4.w;
  u_xlat39 = max(x_395, 0.00009999999747378752f);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : f32 = u_xlat39;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) / vec3<f32>(x_400, x_400, x_400));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : f32 = u_xlat1;
  u_xlat39 = ((-(x_405) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_411 : f32 = u_xlat39;
  u_xlat40 = (-(x_411) + 1.0f);
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : f32 = u_xlat39;
  u_xlat5 = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416, x_416, x_416));
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : f32 = u_xlat1;
  let x_428 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426, x_426, x_426) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat1;
  let x_441 : f32 = u_xlat1;
  u_xlat39 = (x_440 * x_441);
  let x_443 : f32 = u_xlat39;
  u_xlat39 = max(x_443, 0.0078125f);
  let x_447 : f32 = u_xlat39;
  let x_448 : f32 = u_xlat39;
  u_xlat41 = (x_447 * x_448);
  let x_452 : f32 = u_xlat0.w;
  let x_453 : f32 = u_xlat40;
  u_xlat36 = (x_452 + x_453);
  let x_455 : f32 = u_xlat36;
  u_xlat36 = clamp(x_455, 0.0f, 1.0f);
  let x_457 : f32 = u_xlat39;
  u_xlat40 = ((x_457 * 4.0f) + 2.0f);
  let x_461 : vec4<f32> = u_xlat3;
  let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
  let x_464 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_462.x, x_462.y, x_464);
  let x_476 : vec3<f32> = txVec0;
  let x_478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_476.xy, x_476.z);
  u_xlat3.x = x_478;
  let x_483 : f32 = x_128.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_483) + 1.0f);
  let x_487 : f32 = u_xlat3.x;
  let x_489 : f32 = x_128.x_MainLightShadowParams.x;
  let x_491 : f32 = u_xlat15;
  u_xlat3.x = ((x_487 * x_489) + x_491);
  let x_496 : f32 = u_xlat3.z;
  u_xlatb15 = (0.0f >= x_496);
  let x_500 : f32 = u_xlat3.z;
  u_xlatb27 = (x_500 >= 1.0f);
  let x_502 : bool = u_xlatb27;
  let x_503 : bool = u_xlatb15;
  u_xlatb15 = (x_502 | x_503);
  let x_505 : bool = u_xlatb15;
  if (x_505) {
    x_507 = 1.0f;
  } else {
    let x_512 : f32 = u_xlat3.x;
    x_507 = x_512;
  }
  let x_513 : f32 = x_507;
  u_xlat3.x = x_513;
  let x_515 : vec3<f32> = vs_TEXCOORD7;
  let x_517 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_519 : vec3<f32> = (x_515 + -(x_517));
  let x_520 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat6;
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat15 = dot(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_528 : f32 = u_xlat15;
  let x_530 : f32 = x_128.x_MainLightShadowParams.z;
  let x_533 : f32 = x_128.x_MainLightShadowParams.w;
  u_xlat27 = ((x_528 * x_530) + x_533);
  let x_535 : f32 = u_xlat27;
  u_xlat27 = clamp(x_535, 0.0f, 1.0f);
  let x_538 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_538) + 1.0f);
  let x_542 : f32 = u_xlat27;
  let x_544 : f32 = u_xlat6.x;
  let x_547 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_542 * x_544) + x_547);
  let x_550 : vec3<f32> = u_xlat13;
  let x_552 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(-(x_550), x_552);
  let x_554 : f32 = u_xlat27;
  let x_555 : f32 = u_xlat27;
  u_xlat27 = (x_554 + x_555);
  let x_557 : vec3<f32> = u_xlat2;
  let x_558 : f32 = u_xlat27;
  let x_562 : vec3<f32> = u_xlat13;
  let x_564 : vec3<f32> = ((x_557 * -(vec3<f32>(x_558, x_558, x_558))) + -(x_562));
  let x_565 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec3<f32> = u_xlat2;
  let x_568 : vec3<f32> = u_xlat13;
  u_xlat27 = dot(x_567, x_568);
  let x_570 : f32 = u_xlat27;
  u_xlat27 = clamp(x_570, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat27;
  u_xlat27 = (-(x_572) + 1.0f);
  let x_575 : f32 = u_xlat27;
  let x_576 : f32 = u_xlat27;
  u_xlat27 = (x_575 * x_576);
  let x_578 : f32 = u_xlat27;
  let x_579 : f32 = u_xlat27;
  u_xlat27 = (x_578 * x_579);
  let x_582 : f32 = u_xlat1;
  u_xlat42 = ((-(x_582) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_588 : f32 = u_xlat1;
  let x_589 : f32 = u_xlat42;
  u_xlat1 = (x_588 * x_589);
  let x_591 : f32 = u_xlat1;
  u_xlat1 = (x_591 * 6.0f);
  let x_602 : vec4<f32> = u_xlat6;
  let x_604 : f32 = u_xlat1;
  let x_605 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_602.x, x_602.y, x_602.z), x_604);
  u_xlat6 = x_605;
  let x_607 : f32 = u_xlat6.w;
  u_xlat1 = (x_607 + -1.0f);
  let x_614 : f32 = x_612.unity_SpecCube0_HDR.w;
  let x_615 : f32 = u_xlat1;
  u_xlat1 = ((x_614 * x_615) + 1.0f);
  let x_618 : f32 = u_xlat1;
  u_xlat1 = max(x_618, 0.0f);
  let x_620 : f32 = u_xlat1;
  u_xlat1 = log2(x_620);
  let x_622 : f32 = u_xlat1;
  let x_624 : f32 = x_612.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_622 * x_624);
  let x_626 : f32 = u_xlat1;
  u_xlat1 = exp2(x_626);
  let x_628 : f32 = u_xlat1;
  let x_630 : f32 = x_612.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_628 * x_630);
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : f32 = u_xlat1;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_634, x_634, x_634));
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_641 : f32 = u_xlat39;
  let x_643 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_641, x_641) * vec2<f32>(x_643, x_643)) + vec2<f32>(-1.0f, 1.0f));
  let x_649 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_649);
  let x_652 : vec4<f32> = u_xlat0;
  let x_655 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_652.x, x_652.y, x_652.z)) + vec3<f32>(x_655, x_655, x_655));
  let x_658 : f32 = u_xlat27;
  let x_660 : vec3<f32> = u_xlat19;
  let x_662 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_658, x_658, x_658) * x_660) + vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : f32 = u_xlat1;
  let x_667 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_665, x_665, x_665) * x_667);
  let x_669 : vec4<f32> = u_xlat6;
  let x_671 : vec3<f32> = u_xlat19;
  let x_672 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) * x_671);
  let x_673 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat4;
  let x_677 : vec3<f32> = u_xlat5;
  let x_679 : vec4<f32> = u_xlat6;
  let x_681 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * x_677) + vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = u_xlat3.x;
  let x_687 : f32 = x_612.unity_LightData.z;
  u_xlat36 = (x_685 * x_687);
  let x_689 : vec3<f32> = u_xlat2;
  let x_691 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_689, vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : f32 = u_xlat1;
  u_xlat1 = clamp(x_694, 0.0f, 1.0f);
  let x_696 : f32 = u_xlat36;
  let x_697 : f32 = u_xlat1;
  u_xlat36 = (x_696 * x_697);
  let x_699 : f32 = u_xlat36;
  let x_702 : vec4<f32> = x_29.x_MainLightColor;
  let x_704 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_704.x, x_705.y, x_704.y, x_704.z);
  let x_707 : vec3<f32> = u_xlat13;
  let x_709 : vec4<f32> = x_29.x_MainLightPosition;
  let x_711 : vec3<f32> = (x_707 + vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat6;
  let x_716 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_714.x, x_714.y, x_714.z), vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : f32 = u_xlat36;
  u_xlat36 = max(x_719, 1.17549435e-38f);
  let x_722 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_722);
  let x_724 : f32 = u_xlat36;
  let x_726 : vec4<f32> = u_xlat6;
  let x_728 : vec3<f32> = (vec3<f32>(x_724, x_724, x_724) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec3<f32> = u_xlat2;
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_731, vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : f32 = u_xlat36;
  u_xlat36 = clamp(x_735, 0.0f, 1.0f);
  let x_738 : vec4<f32> = x_29.x_MainLightPosition;
  let x_740 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_738.x, x_738.y, x_738.z), vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : f32 = u_xlat1;
  u_xlat1 = clamp(x_743, 0.0f, 1.0f);
  let x_745 : f32 = u_xlat36;
  let x_746 : f32 = u_xlat36;
  u_xlat36 = (x_745 * x_746);
  let x_748 : f32 = u_xlat36;
  let x_750 : f32 = u_xlat7.x;
  u_xlat36 = ((x_748 * x_750) + 1.00001001358032226562f);
  let x_754 : f32 = u_xlat1;
  let x_755 : f32 = u_xlat1;
  u_xlat1 = (x_754 * x_755);
  let x_757 : f32 = u_xlat36;
  let x_758 : f32 = u_xlat36;
  u_xlat36 = (x_757 * x_758);
  let x_760 : f32 = u_xlat1;
  u_xlat1 = max(x_760, 0.10000000149011611938f);
  let x_763 : f32 = u_xlat36;
  let x_764 : f32 = u_xlat1;
  u_xlat36 = (x_763 * x_764);
  let x_766 : f32 = u_xlat40;
  let x_767 : f32 = u_xlat36;
  u_xlat36 = (x_766 * x_767);
  let x_769 : f32 = u_xlat41;
  let x_770 : f32 = u_xlat36;
  u_xlat36 = (x_769 / x_770);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : f32 = u_xlat36;
  let x_777 : vec3<f32> = u_xlat5;
  let x_778 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774, x_774, x_774)) + x_777);
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_782 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_784 : f32 = x_612.unity_LightData.y;
  u_xlat36 = min(x_782, x_784);
  let x_787 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_787));
  let x_790 : f32 = u_xlat15;
  let x_793 : f32 = x_128.x_AdditionalShadowFadeParams.x;
  let x_796 : f32 = x_128.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_790 * x_793) + x_796);
  let x_798 : f32 = u_xlat1;
  u_xlat1 = clamp(x_798, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_810 : u32 = u_xlatu_loop_1;
    let x_811 : u32 = u_xlatu36;
    if ((x_810 < x_811)) {
    } else {
      break;
    }
    let x_814 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_814 >> 2u);
    let x_817 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_817 & 3u));
    let x_820 : u32 = u_xlatu42;
    let x_823 : vec4<f32> = x_612.unity_LightIndices[bitcast<i32>(x_820)];
    let x_833 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_838 : vec4<u32> = indexable[x_833];
    u_xlat42 = dot(x_823, bitcast<vec4<f32>>(x_838));
    let x_842 : f32 = u_xlat42;
    u_xlati42 = i32(x_842);
    let x_845 : vec3<f32> = vs_TEXCOORD7;
    let x_856 : i32 = u_xlati42;
    let x_858 : vec4<f32> = x_855.x_AdditionalLightsPosition[x_856];
    let x_861 : i32 = u_xlati42;
    let x_863 : vec4<f32> = x_855.x_AdditionalLightsPosition[x_861];
    u_xlat8 = ((-(x_845) * vec3<f32>(x_858.w, x_858.w, x_858.w)) + vec3<f32>(x_863.x, x_863.y, x_863.z));
    let x_867 : vec3<f32> = u_xlat8;
    let x_868 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_867, x_868);
    let x_870 : f32 = u_xlat44;
    u_xlat44 = max(x_870, 0.00006103515625f);
    let x_874 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_874);
    let x_877 : vec3<f32> = u_xlat8;
    let x_878 : f32 = u_xlat9;
    u_xlat21 = (x_877 * vec3<f32>(x_878, x_878, x_878));
    let x_882 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_882);
    let x_885 : f32 = u_xlat44;
    let x_886 : i32 = u_xlati42;
    let x_888 : f32 = x_855.x_AdditionalLightsAttenuation[x_886].x;
    u_xlat44 = (x_885 * x_888);
    let x_890 : f32 = u_xlat44;
    let x_892 : f32 = u_xlat44;
    u_xlat44 = ((-(x_890) * x_892) + 1.0f);
    let x_895 : f32 = u_xlat44;
    u_xlat44 = max(x_895, 0.0f);
    let x_897 : f32 = u_xlat44;
    let x_898 : f32 = u_xlat44;
    u_xlat44 = (x_897 * x_898);
    let x_900 : f32 = u_xlat44;
    let x_902 : f32 = u_xlat10.x;
    u_xlat44 = (x_900 * x_902);
    let x_904 : i32 = u_xlati42;
    let x_906 : vec4<f32> = x_855.x_AdditionalLightsSpotDir[x_904];
    let x_908 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), x_908);
    let x_912 : f32 = u_xlat10.x;
    let x_913 : i32 = u_xlati42;
    let x_915 : f32 = x_855.x_AdditionalLightsAttenuation[x_913].z;
    let x_917 : i32 = u_xlati42;
    let x_919 : f32 = x_855.x_AdditionalLightsAttenuation[x_917].w;
    u_xlat10.x = ((x_912 * x_915) + x_919);
    let x_923 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_923, 0.0f, 1.0f);
    let x_927 : f32 = u_xlat10.x;
    let x_929 : f32 = u_xlat10.x;
    u_xlat10.x = (x_927 * x_929);
    let x_932 : f32 = u_xlat44;
    let x_934 : f32 = u_xlat10.x;
    u_xlat44 = (x_932 * x_934);
    let x_938 : i32 = u_xlati42;
    let x_940 : f32 = x_128.x_AdditionalShadowParams[x_938].w;
    u_xlati10 = i32(x_940);
    let x_945 : i32 = u_xlati10;
    u_xlatb22.x = (x_945 >= 0i);
    let x_949 : bool = u_xlatb22.x;
    if (x_949) {
      let x_953 : i32 = u_xlati42;
      let x_955 : f32 = x_128.x_AdditionalShadowParams[x_953].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_955, x_955, x_955, x_955))));
      let x_961 : bool = u_xlatb22.x;
      if (x_961) {
        let x_964 : vec3<f32> = u_xlat21;
        let x_967 : vec3<f32> = u_xlat21;
        let x_970 : vec4<bool> = (abs(vec4<f32>(x_964.z, x_964.z, x_964.y, x_964.y)) >= abs(vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.x)));
        u_xlatb22 = vec3<bool>(x_970.x, x_970.y, x_970.z);
        let x_973 : bool = u_xlatb22.y;
        let x_975 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_973 & x_975);
        let x_979 : vec3<f32> = u_xlat21;
        let x_982 : vec4<bool> = (-(vec4<f32>(x_979.z, x_979.y, x_979.x, x_979.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_982.x, x_982.y, x_982.z);
        let x_986 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_986);
        let x_991 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_991);
        let x_996 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_996);
        let x_999 : bool = u_xlatb22.z;
        if (x_999) {
          let x_1004 : f32 = u_xlat11.y;
          x_1000 = x_1004;
        } else {
          let x_1006 : f32 = u_xlat34;
          x_1000 = x_1006;
        }
        let x_1007 : f32 = x_1000;
        u_xlat34 = x_1007;
        let x_1010 : bool = u_xlatb22.x;
        if (x_1010) {
          let x_1015 : f32 = u_xlat11.x;
          x_1011 = x_1015;
        } else {
          let x_1017 : f32 = u_xlat34;
          x_1011 = x_1017;
        }
        let x_1018 : f32 = x_1011;
        u_xlat22 = x_1018;
        let x_1019 : i32 = u_xlati42;
        let x_1021 : f32 = x_128.x_AdditionalShadowParams[x_1019].w;
        u_xlat34 = trunc(x_1021);
        let x_1023 : f32 = u_xlat22;
        let x_1024 : f32 = u_xlat34;
        u_xlat22 = (x_1023 + x_1024);
        let x_1026 : f32 = u_xlat22;
        u_xlati10 = i32(x_1026);
      }
      let x_1028 : i32 = u_xlati10;
      u_xlati10 = (x_1028 << bitcast<u32>(2i));
      let x_1030 : vec3<f32> = vs_TEXCOORD7;
      let x_1033 : i32 = u_xlati10;
      let x_1036 : i32 = u_xlati10;
      let x_1040 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_1033 + 1i) / 4i)][((x_1036 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1030.y, x_1030.y, x_1030.y, x_1030.y) * x_1040);
      let x_1042 : i32 = u_xlati10;
      let x_1044 : i32 = u_xlati10;
      let x_1047 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[(x_1042 / 4i)][(x_1044 % 4i)];
      let x_1048 : vec3<f32> = vs_TEXCOORD7;
      let x_1051 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1047 * vec4<f32>(x_1048.x, x_1048.x, x_1048.x, x_1048.x)) + x_1051);
      let x_1053 : i32 = u_xlati10;
      let x_1056 : i32 = u_xlati10;
      let x_1060 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_1053 + 2i) / 4i)][((x_1056 + 2i) % 4i)];
      let x_1061 : vec3<f32> = vs_TEXCOORD7;
      let x_1064 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1060 * vec4<f32>(x_1061.z, x_1061.z, x_1061.z, x_1061.z)) + x_1064);
      let x_1066 : vec4<f32> = u_xlat11;
      let x_1067 : i32 = u_xlati10;
      let x_1070 : i32 = u_xlati10;
      let x_1074 : vec4<f32> = x_128.x_AdditionalLightsWorldToShadow[((x_1067 + 3i) / 4i)][((x_1070 + 3i) % 4i)];
      u_xlat10 = (x_1066 + x_1074);
      let x_1076 : vec4<f32> = u_xlat10;
      let x_1078 : vec4<f32> = u_xlat10;
      let x_1080 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) / vec3<f32>(x_1078.w, x_1078.w, x_1078.w));
      let x_1081 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
      let x_1084 : vec4<f32> = u_xlat10;
      let x_1085 : vec2<f32> = vec2<f32>(x_1084.x, x_1084.y);
      let x_1087 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
      let x_1095 : vec3<f32> = txVec1;
      let x_1097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
      u_xlat10.x = x_1097;
      let x_1099 : i32 = u_xlati42;
      let x_1101 : f32 = x_128.x_AdditionalShadowParams[x_1099].x;
      u_xlat22 = (1.0f + -(x_1101));
      let x_1105 : f32 = u_xlat10.x;
      let x_1106 : i32 = u_xlati42;
      let x_1108 : f32 = x_128.x_AdditionalShadowParams[x_1106].x;
      let x_1110 : f32 = u_xlat22;
      u_xlat10.x = ((x_1105 * x_1108) + x_1110);
      let x_1114 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1114);
      let x_1119 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1119 >= 1.0f);
      let x_1121 : bool = u_xlatb34;
      let x_1123 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1121 | x_1123);
      let x_1127 : bool = u_xlatb22.x;
      if (x_1127) {
        x_1128 = 1.0f;
      } else {
        let x_1133 : f32 = u_xlat10.x;
        x_1128 = x_1133;
      }
      let x_1134 : f32 = x_1128;
      u_xlat10.x = x_1134;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1139 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1139) + 1.0f);
    let x_1142 : f32 = u_xlat1;
    let x_1143 : f32 = u_xlat22;
    let x_1146 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1142 * x_1143) + x_1146);
    let x_1149 : f32 = u_xlat44;
    let x_1151 : f32 = u_xlat10.x;
    u_xlat44 = (x_1149 * x_1151);
    let x_1153 : vec3<f32> = u_xlat2;
    let x_1154 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1153, x_1154);
    let x_1158 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1158, 0.0f, 1.0f);
    let x_1161 : f32 = u_xlat44;
    let x_1163 : f32 = u_xlat10.x;
    u_xlat44 = (x_1161 * x_1163);
    let x_1165 : f32 = u_xlat44;
    let x_1167 : i32 = u_xlati42;
    let x_1169 : vec4<f32> = x_855.x_AdditionalLightsColor[x_1167];
    let x_1171 : vec3<f32> = (vec3<f32>(x_1165, x_1165, x_1165) * vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
    let x_1172 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
    let x_1174 : vec3<f32> = u_xlat8;
    let x_1175 : f32 = u_xlat9;
    let x_1178 : vec3<f32> = u_xlat13;
    u_xlat8 = ((x_1174 * vec3<f32>(x_1175, x_1175, x_1175)) + x_1178);
    let x_1180 : vec3<f32> = u_xlat8;
    let x_1181 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1180, x_1181);
    let x_1183 : f32 = u_xlat42;
    u_xlat42 = max(x_1183, 1.17549435e-38f);
    let x_1185 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1185);
    let x_1187 : f32 = u_xlat42;
    let x_1189 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1187, x_1187, x_1187) * x_1189);
    let x_1191 : vec3<f32> = u_xlat2;
    let x_1192 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1191, x_1192);
    let x_1194 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1194, 0.0f, 1.0f);
    let x_1196 : vec3<f32> = u_xlat21;
    let x_1197 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1196, x_1197);
    let x_1201 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1201, 0.0f, 1.0f);
    let x_1204 : f32 = u_xlat42;
    let x_1205 : f32 = u_xlat42;
    u_xlat42 = (x_1204 * x_1205);
    let x_1207 : f32 = u_xlat42;
    let x_1209 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1207 * x_1209) + 1.00001001358032226562f);
    let x_1213 : f32 = u_xlat8.x;
    let x_1215 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1213 * x_1215);
    let x_1218 : f32 = u_xlat42;
    let x_1219 : f32 = u_xlat42;
    u_xlat42 = (x_1218 * x_1219);
    let x_1222 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1222, 0.10000000149011611938f);
    let x_1225 : f32 = u_xlat42;
    let x_1227 : f32 = u_xlat8.x;
    u_xlat42 = (x_1225 * x_1227);
    let x_1229 : f32 = u_xlat40;
    let x_1230 : f32 = u_xlat42;
    u_xlat42 = (x_1229 * x_1230);
    let x_1232 : f32 = u_xlat41;
    let x_1233 : f32 = u_xlat42;
    u_xlat42 = (x_1232 / x_1233);
    let x_1235 : vec4<f32> = u_xlat0;
    let x_1237 : f32 = u_xlat42;
    let x_1240 : vec3<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1237, x_1237, x_1237)) + x_1240);
    let x_1242 : vec3<f32> = u_xlat8;
    let x_1243 : vec4<f32> = u_xlat10;
    let x_1246 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1242 * vec3<f32>(x_1243.x, x_1243.y, x_1243.z)) + x_1246);

    continuing {
      let x_1248 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1248 + bitcast<u32>(1i));
    }
  }
  let x_1250 : vec4<f32> = u_xlat6;
  let x_1252 : vec4<f32> = u_xlat3;
  let x_1255 : vec4<f32> = u_xlat4;
  let x_1257 : vec3<f32> = ((vec3<f32>(x_1250.x, x_1250.y, x_1250.z) * vec3<f32>(x_1252.x, x_1252.z, x_1252.w)) + vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec3<f32> = u_xlat19;
  let x_1261 : vec4<f32> = u_xlat0;
  let x_1263 : vec3<f32> = (x_1260 + vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : f32 = u_xlat38;
  let x_1267 : f32 = u_xlat38;
  u_xlat36 = (x_1266 * -(x_1267));
  let x_1270 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1270);
  let x_1272 : vec4<f32> = u_xlat0;
  let x_1275 : vec4<f32> = x_29.unity_FogColor;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) + -(vec3<f32>(x_1275.x, x_1275.y, x_1275.z)));
  let x_1279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1283 : f32 = u_xlat36;
  let x_1285 : vec4<f32> = u_xlat0;
  let x_1289 : vec4<f32> = x_29.unity_FogColor;
  let x_1291 : vec3<f32> = ((vec3<f32>(x_1283, x_1283, x_1283) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z)) + vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


