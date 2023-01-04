struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_162 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_546 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_694 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat29 : f32;
  var u_xlatu29 : u32;
  var u_xlati29 : i32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var x_491 : f32;
  var u_xlat21 : f32;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu6 : u32;
  var u_xlati15 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati6 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_897 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat10;
  let x_83 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat10;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat10.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat10.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat10.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_148 : vec3<f32> = u_xlat2;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_148, x_149);
  let x_151 : f32 = u_xlat28;
  u_xlat28 = max(x_151, 1.17549435e-37f);
  let x_154 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_154);
  let x_157 : vec3<f32> = vs_TEXCOORD1;
  let x_164 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_167 : vec3<f32> = (x_157 + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_176 : vec3<f32> = (x_171 + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec3<f32> = vs_TEXCOORD1;
  let x_183 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_180 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_188 : vec3<f32> = vs_TEXCOORD1;
  let x_191 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_188 + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec3<f32> = u_xlat5;
  let x_208 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_207, x_208);
  let x_211 : vec3<f32> = u_xlat6;
  let x_212 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_211, x_212);
  let x_218 : vec4<f32> = u_xlat3;
  let x_221 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_218 < x_221);
  let x_224 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_240);
  let x_246 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_246);
  let x_250 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_250);
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(x_255.y, x_255.z, x_255.w));
  let x_258 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = max(vec3<f32>(x_260.x, x_260.y, x_260.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_263.x, x_263.y, x_263.z);
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_267, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_273 : f32 = u_xlat29;
  u_xlat29 = (-(x_273) + 4.0f);
  let x_278 : f32 = u_xlat29;
  u_xlatu29 = u32(x_278);
  let x_282 : u32 = u_xlatu29;
  u_xlati29 = (bitcast<i32>(x_282) << bitcast<u32>(2i));
  let x_285 : vec3<f32> = vs_TEXCOORD1;
  let x_287 : i32 = u_xlati29;
  let x_290 : i32 = u_xlati29;
  let x_294 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_287 + 1i) / 4i)][((x_290 + 1i) % 4i)];
  let x_296 : vec3<f32> = (vec3<f32>(x_285.y, x_285.y, x_285.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : i32 = u_xlati29;
  let x_301 : i32 = u_xlati29;
  let x_304 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_299 / 4i)][(x_301 % 4i)];
  let x_306 : vec3<f32> = vs_TEXCOORD1;
  let x_309 : vec4<f32> = u_xlat3;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : i32 = u_xlati29;
  let x_317 : i32 = u_xlati29;
  let x_321 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_314 + 2i) / 4i)][((x_317 + 2i) % 4i)];
  let x_323 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.z, x_323.z, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : i32 = u_xlati29;
  let x_336 : i32 = u_xlati29;
  let x_340 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_333 + 3i) / 4i)][((x_336 + 3i) % 4i)];
  let x_342 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_351 : vec2<f32> = vs_TEXCOORD7;
  let x_353 : f32 = x_44.x_GlobalMipBias.x;
  let x_354 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_351, x_353);
  u_xlat4 = x_354;
  let x_359 : vec2<f32> = vs_TEXCOORD7;
  let x_361 : f32 = x_44.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_359, x_361);
  u_xlat5 = vec3<f32>(x_362.x, x_362.y, x_362.z);
  let x_364 : vec4<f32> = u_xlat4;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec3<f32> = u_xlat1;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_371, vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat29;
  u_xlat29 = (x_375 + 0.5f);
  let x_378 : f32 = u_xlat29;
  let x_380 : vec3<f32> = u_xlat5;
  let x_381 : vec3<f32> = (vec3<f32>(x_378, x_378, x_378) * x_380);
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : f32 = u_xlat4.w;
  u_xlat29 = max(x_385, 0.0001f);
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : f32 = u_xlat29;
  let x_392 : vec3<f32> = (vec3<f32>(x_388.x, x_388.y, x_388.z) / vec3<f32>(x_390, x_390, x_390));
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_397 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_398 : vec2<f32> = vec2<f32>(x_397.x, x_397.y);
  let x_402 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_398.x, x_398.y));
  let x_403 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_402.x, x_402.y, x_403.z);
  let x_405 : vec3<f32> = u_xlat5;
  let x_407 : vec4<f32> = hlslcc_FragCoord;
  let x_409 : vec2<f32> = (vec2<f32>(x_405.x, x_405.y) * vec2<f32>(x_407.x, x_407.y));
  let x_410 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_409.x, x_409.y, x_410.z);
  let x_413 : f32 = u_xlat5.y;
  let x_416 : f32 = x_44.x_ScaleBiasRt.x;
  let x_419 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_413 * x_416) + x_419);
  let x_421 : f32 = u_xlat29;
  u_xlat5.z = (-(x_421) + 1.0f);
  let x_430 : vec3<f32> = u_xlat5;
  let x_433 : f32 = x_44.x_GlobalMipBias.x;
  let x_434 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_430.x, x_430.z), x_433);
  u_xlat29 = x_434.x;
  let x_437 : f32 = u_xlat29;
  u_xlat30 = (x_437 + -1.0f);
  let x_440 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_441 : f32 = u_xlat30;
  u_xlat30 = ((x_440 * x_441) + 1.0f);
  let x_444 : f32 = u_xlat29;
  u_xlat29 = min(x_444, 1.0f);
  let x_447 : vec4<f32> = u_xlat3;
  let x_448 : vec2<f32> = vec2<f32>(x_447.x, x_447.y);
  let x_450 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_448.x, x_448.y, x_450);
  let x_462 : vec3<f32> = txVec0;
  let x_464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_462.xy, x_462.z);
  u_xlat3.x = x_464;
  let x_468 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat12 = (-(x_468) + 1.0f);
  let x_472 : f32 = u_xlat3.x;
  let x_474 : f32 = x_162.x_MainLightShadowParams.x;
  let x_476 : f32 = u_xlat12;
  u_xlat3.x = ((x_472 * x_474) + x_476);
  let x_481 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_481);
  let x_485 : f32 = u_xlat3.z;
  u_xlatb21 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb21;
  let x_488 : bool = u_xlatb12;
  u_xlatb12 = (x_487 | x_488);
  let x_490 : bool = u_xlatb12;
  if (x_490) {
    x_491 = 1.0f;
  } else {
    let x_496 : f32 = u_xlat3.x;
    x_491 = x_496;
  }
  let x_497 : f32 = x_491;
  u_xlat3.x = x_497;
  let x_499 : vec3<f32> = vs_TEXCOORD1;
  let x_501 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_499 + -(x_501));
  let x_504 : vec3<f32> = u_xlat5;
  let x_505 : vec3<f32> = u_xlat5;
  u_xlat12 = dot(x_504, x_505);
  let x_507 : f32 = u_xlat12;
  let x_509 : f32 = x_162.x_MainLightShadowParams.z;
  let x_512 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat12 = ((x_507 * x_509) + x_512);
  let x_514 : f32 = u_xlat12;
  u_xlat12 = clamp(x_514, 0.0f, 1.0f);
  let x_518 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat12;
  let x_522 : f32 = u_xlat21;
  let x_525 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_521 * x_522) + x_525);
  let x_528 : f32 = u_xlat30;
  let x_531 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_528, x_528, x_528) * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : f32 = u_xlat29;
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : vec3<f32> = (vec3<f32>(x_534, x_534, x_534) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_542 : f32 = u_xlat3.x;
  let x_548 : f32 = x_546.unity_LightData.z;
  u_xlat29 = (x_542 * x_548);
  let x_550 : f32 = u_xlat29;
  let x_552 : vec3<f32> = u_xlat5;
  let x_553 : vec3<f32> = (vec3<f32>(x_550, x_550, x_550) * x_552);
  let x_554 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec3<f32> = u_xlat1;
  let x_558 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(x_556, vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : f32 = u_xlat29;
  u_xlat29 = clamp(x_561, 0.0f, 1.0f);
  let x_563 : f32 = u_xlat29;
  let x_565 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_563, x_563, x_563) * vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_569 : f32 = u_xlat0.x;
  u_xlat29 = ((x_569 * 10.0f) + 1.0f);
  let x_573 : f32 = u_xlat29;
  u_xlat29 = exp2(x_573);
  let x_575 : vec3<f32> = u_xlat2;
  let x_576 : f32 = u_xlat28;
  let x_580 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_575 * vec3<f32>(x_576, x_576, x_576)) + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_584 : vec3<f32> = u_xlat6;
  let x_585 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat31;
  u_xlat31 = max(x_587, 1.17549435e-37f);
  let x_589 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_589);
  let x_591 : f32 = u_xlat31;
  let x_593 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_591, x_591, x_591) * x_593);
  let x_595 : vec3<f32> = u_xlat1;
  let x_596 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_595, x_596);
  let x_598 : f32 = u_xlat31;
  u_xlat31 = clamp(x_598, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat31;
  u_xlat31 = log2(x_600);
  let x_602 : f32 = u_xlat29;
  let x_603 : f32 = u_xlat31;
  u_xlat31 = (x_602 * x_603);
  let x_605 : f32 = u_xlat31;
  u_xlat31 = exp2(x_605);
  let x_607 : f32 = u_xlat31;
  let x_610 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec3<f32> = u_xlat6;
  let x_616 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) * x_615);
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = u_xlat5;
  let x_620 : vec4<f32> = u_xlat0;
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = ((x_619 * vec3<f32>(x_620.y, x_620.z, x_620.w)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_629 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_631 : f32 = x_546.unity_LightData.y;
  u_xlat31 = min(x_629, x_631);
  let x_634 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_634));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_646 : u32 = u_xlatu_loop_1;
    let x_647 : u32 = u_xlatu31;
    if ((x_646 < x_647)) {
    } else {
      break;
    }
    let x_650 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_650 >> 2u);
    let x_653 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_653 & 3u));
    let x_656 : u32 = u_xlatu6;
    let x_659 : vec4<f32> = x_546.unity_LightIndices[bitcast<i32>(x_656)];
    let x_669 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_674 : vec4<u32> = indexable[x_669];
    u_xlat6.x = dot(x_659, bitcast<vec4<f32>>(x_674));
    let x_680 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_680);
    let x_683 : vec3<f32> = vs_TEXCOORD1;
    let x_695 : i32 = u_xlati6;
    let x_697 : vec4<f32> = x_694.x_AdditionalLightsPosition[x_695];
    let x_700 : i32 = u_xlati6;
    let x_702 : vec4<f32> = x_694.x_AdditionalLightsPosition[x_700];
    u_xlat15 = ((-(x_683) * vec3<f32>(x_697.w, x_697.w, x_697.w)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_706 : vec3<f32> = u_xlat15;
    let x_707 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_706, x_707);
    let x_711 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_711, 6.10351562e-05f);
    let x_717 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_717);
    let x_720 : vec3<f32> = u_xlat15;
    let x_721 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_720 * vec3<f32>(x_721.x, x_721.x, x_721.x));
    let x_725 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_725);
    let x_729 : f32 = u_xlat7.x;
    let x_730 : i32 = u_xlati6;
    let x_732 : f32 = x_694.x_AdditionalLightsAttenuation[x_730].x;
    u_xlat7.x = (x_729 * x_732);
    let x_736 : f32 = u_xlat7.x;
    let x_739 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_736) * x_739) + 1.0f);
    let x_744 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_744, 0.0f);
    let x_748 : f32 = u_xlat7.x;
    let x_750 : f32 = u_xlat7.x;
    u_xlat7.x = (x_748 * x_750);
    let x_754 : f32 = u_xlat7.x;
    let x_756 : f32 = u_xlat16.x;
    u_xlat7.x = (x_754 * x_756);
    let x_759 : i32 = u_xlati6;
    let x_761 : vec4<f32> = x_694.x_AdditionalLightsSpotDir[x_759];
    let x_763 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_761.x, x_761.y, x_761.z), x_763);
    let x_767 : f32 = u_xlat16.x;
    let x_768 : i32 = u_xlati6;
    let x_770 : f32 = x_694.x_AdditionalLightsAttenuation[x_768].z;
    let x_772 : i32 = u_xlati6;
    let x_774 : f32 = x_694.x_AdditionalLightsAttenuation[x_772].w;
    u_xlat16.x = ((x_767 * x_770) + x_774);
    let x_778 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_778, 0.0f, 1.0f);
    let x_782 : f32 = u_xlat16.x;
    let x_784 : f32 = u_xlat16.x;
    u_xlat16.x = (x_782 * x_784);
    let x_788 : f32 = u_xlat16.x;
    let x_790 : f32 = u_xlat7.x;
    u_xlat7.x = (x_788 * x_790);
    let x_793 : f32 = u_xlat30;
    let x_795 : i32 = u_xlati6;
    let x_797 : vec4<f32> = x_694.x_AdditionalLightsColor[x_795];
    u_xlat16 = (vec3<f32>(x_793, x_793, x_793) * vec3<f32>(x_797.x, x_797.y, x_797.z));
    let x_800 : vec3<f32> = u_xlat7;
    let x_802 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_800.x, x_800.x, x_800.x) * x_802);
    let x_804 : vec3<f32> = u_xlat1;
    let x_805 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_804, x_805);
    let x_809 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_809, 0.0f, 1.0f);
    let x_813 : vec3<f32> = u_xlat6;
    let x_815 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_813.x, x_813.x, x_813.x) * x_815);
    let x_817 : vec3<f32> = u_xlat2;
    let x_818 : f32 = u_xlat28;
    let x_821 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_817 * vec3<f32>(x_818, x_818, x_818)) + x_821);
    let x_824 : vec3<f32> = u_xlat6;
    let x_825 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_824, x_825);
    let x_827 : f32 = u_xlat33;
    u_xlat33 = max(x_827, 1.17549435e-37f);
    let x_829 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_829);
    let x_831 : f32 = u_xlat33;
    let x_833 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_831, x_831, x_831) * x_833);
    let x_835 : vec3<f32> = u_xlat1;
    let x_836 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_835, x_836);
    let x_840 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_840, 0.0f, 1.0f);
    let x_844 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_844);
    let x_847 : f32 = u_xlat29;
    let x_849 : f32 = u_xlat6.x;
    u_xlat6.x = (x_847 * x_849);
    let x_853 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_853);
    let x_856 : vec3<f32> = u_xlat6;
    let x_859 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_856.x, x_856.x, x_856.x) * vec3<f32>(x_859.x, x_859.y, x_859.z));
    let x_862 : vec3<f32> = u_xlat6;
    let x_863 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_862 * x_863);
    let x_865 : vec3<f32> = u_xlat8;
    let x_866 : vec4<f32> = u_xlat0;
    let x_869 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_865 * vec3<f32>(x_866.y, x_866.z, x_866.w)) + x_869);
    let x_871 : vec3<f32> = u_xlat5;
    let x_872 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_871 + x_872);

    continuing {
      let x_874 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_874 + bitcast<u32>(1i));
    }
  }
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat0;
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879.y, x_879.z, x_879.w)) + vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_887 : vec3<f32> = u_xlat5;
  let x_888 : vec3<f32> = u_xlat9;
  let x_889 : vec3<f32> = (x_887 + x_888);
  let x_890 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_894 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_894 == 1.0f);
  let x_896 : bool = u_xlatb9;
  if (x_896) {
    let x_901 : f32 = u_xlat0.x;
    x_897 = x_901;
  } else {
    x_897 = 1.0f;
  }
  let x_903 : f32 = x_897;
  SV_Target0.w = x_903;
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

