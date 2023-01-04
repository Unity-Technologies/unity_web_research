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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_146 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_370 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_767 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat29 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var x_546 : f32;
  var u_xlat21 : f32;
  var u_xlat32 : f32;
  var u_xlatu5 : u32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati24 : i32;
  var u_xlat15 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat33 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_962 : f32;
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
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat10 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat10;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat2;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat1 = x_118;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat28;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_130 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec3<f32> = u_xlat1;
  let x_133 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_132, x_133);
  let x_135 : f32 = u_xlat28;
  u_xlat28 = max(x_135, 1.17549435e-37f);
  let x_138 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_138);
  let x_141 : vec3<f32> = vs_TEXCOORD1;
  let x_148 : vec4<f32> = x_146.x_CascadeShadowSplitSpheres0;
  let x_151 : vec3<f32> = (x_141 + -(vec3<f32>(x_148.x, x_148.y, x_148.z)));
  let x_152 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_146.x_CascadeShadowSplitSpheres1;
  let x_160 : vec3<f32> = (x_155 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_167 : vec4<f32> = x_146.x_CascadeShadowSplitSpheres2;
  let x_170 : vec3<f32> = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec3<f32> = vs_TEXCOORD1;
  let x_177 : vec4<f32> = x_146.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_174 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat3;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat4;
  let x_189 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat5;
  let x_195 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec3<f32> = u_xlat6;
  let x_200 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_199, x_200);
  let x_206 : vec4<f32> = u_xlat3;
  let x_209 : vec4<f32> = x_146.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_206 < x_209);
  let x_212 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_212);
  let x_216 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_216);
  let x_220 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_220);
  let x_224 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_228);
  let x_234 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_234);
  let x_238 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_238);
  let x_241 : vec4<f32> = u_xlat3;
  let x_243 : vec4<f32> = u_xlat4;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + vec3<f32>(x_243.y, x_243.z, x_243.w));
  let x_246 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat3;
  let x_251 : vec3<f32> = max(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_262 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_262) + 4.0f);
  let x_269 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_269);
  let x_273 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_273) << bitcast<u32>(2i));
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : i32 = u_xlati3;
  let x_282 : i32 = u_xlati3;
  let x_286 : vec4<f32> = x_146.x_MainLightWorldToShadow[((x_279 + 1i) / 4i)][((x_282 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_277.y, x_277.y, x_277.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : i32 = u_xlati3;
  let x_291 : i32 = u_xlati3;
  let x_294 : vec4<f32> = x_146.x_MainLightWorldToShadow[(x_289 / 4i)][(x_291 % 4i)];
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_299 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.x, x_296.x, x_296.x)) + x_299);
  let x_301 : i32 = u_xlati3;
  let x_304 : i32 = u_xlati3;
  let x_308 : vec4<f32> = x_146.x_MainLightWorldToShadow[((x_301 + 2i) / 4i)][((x_304 + 2i) % 4i)];
  let x_310 : vec3<f32> = vs_TEXCOORD1;
  let x_313 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.z, x_310.z, x_310.z)) + x_313);
  let x_315 : vec3<f32> = u_xlat12;
  let x_316 : i32 = u_xlati3;
  let x_319 : i32 = u_xlati3;
  let x_323 : vec4<f32> = x_146.x_MainLightWorldToShadow[((x_316 + 3i) / 4i)][((x_319 + 3i) % 4i)];
  let x_325 : vec3<f32> = (x_315 + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_330 : f32 = vs_TEXCOORD1.y;
  let x_332 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_330 * x_332);
  let x_335 : f32 = x_44.unity_MatrixV[0i].z;
  let x_337 : f32 = vs_TEXCOORD1.x;
  let x_339 : f32 = u_xlat30;
  u_xlat30 = ((x_335 * x_337) + x_339);
  let x_342 : f32 = x_44.unity_MatrixV[2i].z;
  let x_344 : f32 = vs_TEXCOORD1.z;
  let x_346 : f32 = u_xlat30;
  u_xlat30 = ((x_342 * x_344) + x_346);
  let x_348 : f32 = u_xlat30;
  let x_350 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_348 + x_350);
  let x_352 : f32 = u_xlat30;
  let x_356 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_352) + -(x_356));
  let x_359 : f32 = u_xlat30;
  u_xlat30 = max(x_359, 0.0f);
  let x_361 : f32 = u_xlat30;
  let x_364 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_361 * x_364);
  u_xlat2.w = 1.0f;
  let x_373 : vec4<f32> = x_370.unity_SHAr;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_370.unity_SHAg;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_379, x_380);
  let x_385 : vec4<f32> = x_370.unity_SHAb;
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_385, x_386);
  let x_389 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_389.y, x_389.z, x_389.z, x_389.x) * vec4<f32>(x_391.x, x_391.y, x_391.z, x_391.z));
  let x_396 : vec4<f32> = x_370.unity_SHBr;
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_396, x_397);
  let x_402 : vec4<f32> = x_370.unity_SHBg;
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_402, x_403);
  let x_408 : vec4<f32> = x_370.unity_SHBb;
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_408, x_409);
  let x_414 : f32 = u_xlat2.y;
  let x_416 : f32 = u_xlat2.y;
  u_xlat29 = (x_414 * x_416);
  let x_419 : f32 = u_xlat2.x;
  let x_421 : f32 = u_xlat2.x;
  let x_423 : f32 = u_xlat29;
  u_xlat29 = ((x_419 * x_421) + -(x_423));
  let x_428 : vec4<f32> = x_370.unity_SHC;
  let x_430 : f32 = u_xlat29;
  let x_433 : vec3<f32> = u_xlat6;
  let x_434 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430)) + x_433);
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : vec4<f32> = u_xlat5;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat4;
  let x_446 : vec3<f32> = max(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_452 : vec2<f32> = vec2<f32>(x_451.x, x_451.y);
  let x_456 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_452.x, x_452.y));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat5;
  let x_461 : vec4<f32> = hlslcc_FragCoord;
  let x_463 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_461.x, x_461.y));
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_467 : f32 = u_xlat5.y;
  let x_470 : f32 = x_44.x_ScaleBiasRt.x;
  let x_473 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29 = ((x_467 * x_470) + x_473);
  let x_475 : f32 = u_xlat29;
  u_xlat5.z = (-(x_475) + 1.0f);
  let x_484 : vec4<f32> = u_xlat5;
  let x_487 : f32 = x_44.x_GlobalMipBias.x;
  let x_488 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_484.x, x_484.z), x_487);
  u_xlat29 = x_488.x;
  let x_491 : f32 = u_xlat29;
  u_xlat31 = (x_491 + -1.0f);
  let x_494 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_495 : f32 = u_xlat31;
  u_xlat31 = ((x_494 * x_495) + 1.0f);
  let x_498 : f32 = u_xlat29;
  u_xlat29 = min(x_498, 1.0f);
  let x_501 : vec4<f32> = u_xlat3;
  let x_502 : vec2<f32> = vec2<f32>(x_501.x, x_501.y);
  let x_504 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_502.x, x_502.y, x_504);
  let x_516 : vec3<f32> = txVec0;
  let x_518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_516.xy, x_516.z);
  u_xlat3.x = x_518;
  let x_521 : f32 = x_146.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_521) + 1.0f);
  let x_526 : f32 = u_xlat3.x;
  let x_528 : f32 = x_146.x_MainLightShadowParams.x;
  let x_531 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_526 * x_528) + x_531);
  let x_536 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_536);
  let x_540 : f32 = u_xlat3.z;
  u_xlatb21 = (x_540 >= 1.0f);
  let x_542 : bool = u_xlatb21;
  let x_543 : bool = u_xlatb12;
  u_xlatb12 = (x_542 | x_543);
  let x_545 : bool = u_xlatb12;
  if (x_545) {
    x_546 = 1.0f;
  } else {
    let x_551 : f32 = u_xlat3.x;
    x_546 = x_551;
  }
  let x_552 : f32 = x_546;
  u_xlat3.x = x_552;
  let x_554 : vec3<f32> = vs_TEXCOORD1;
  let x_556 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_558 : vec3<f32> = (x_554 + -(x_556));
  let x_559 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat5;
  let x_563 : vec4<f32> = u_xlat5;
  u_xlat12.x = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_568 : f32 = u_xlat12.x;
  let x_570 : f32 = x_146.x_MainLightShadowParams.z;
  let x_573 : f32 = x_146.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_568 * x_570) + x_573);
  let x_577 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_577, 0.0f, 1.0f);
  let x_582 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_582) + 1.0f);
  let x_586 : f32 = u_xlat12.x;
  let x_587 : f32 = u_xlat21;
  let x_590 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_586 * x_587) + x_590);
  let x_593 : f32 = u_xlat31;
  let x_596 : vec4<f32> = x_44.x_MainLightColor;
  let x_598 : vec3<f32> = (vec3<f32>(x_593, x_593, x_593) * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : f32 = u_xlat29;
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_609 : f32 = u_xlat3.x;
  let x_611 : f32 = x_370.unity_LightData.z;
  u_xlat29 = (x_609 * x_611);
  let x_613 : f32 = u_xlat29;
  let x_615 : vec4<f32> = u_xlat5;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_623 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : f32 = u_xlat29;
  u_xlat29 = clamp(x_626, 0.0f, 1.0f);
  let x_628 : f32 = u_xlat29;
  let x_630 : vec4<f32> = u_xlat3;
  let x_632 : vec3<f32> = (vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_636 : f32 = u_xlat0.x;
  u_xlat29 = ((x_636 * 10.0f) + 1.0f);
  let x_640 : f32 = u_xlat29;
  u_xlat29 = exp2(x_640);
  let x_642 : vec3<f32> = u_xlat1;
  let x_643 : f32 = u_xlat28;
  let x_647 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_642 * vec3<f32>(x_643, x_643, x_643)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec3<f32> = u_xlat6;
  let x_652 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_651, x_652);
  let x_654 : f32 = u_xlat32;
  u_xlat32 = max(x_654, 1.17549435e-37f);
  let x_656 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_656);
  let x_658 : f32 = u_xlat32;
  let x_660 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_658, x_658, x_658) * x_660);
  let x_662 : vec4<f32> = u_xlat2;
  let x_664 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), x_664);
  let x_666 : f32 = u_xlat32;
  u_xlat32 = clamp(x_666, 0.0f, 1.0f);
  let x_668 : f32 = u_xlat32;
  u_xlat32 = log2(x_668);
  let x_670 : f32 = u_xlat29;
  let x_671 : f32 = u_xlat32;
  u_xlat32 = (x_670 * x_671);
  let x_673 : f32 = u_xlat32;
  u_xlat32 = exp2(x_673);
  let x_675 : f32 = u_xlat32;
  let x_678 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat3;
  let x_683 : vec3<f32> = u_xlat6;
  let x_684 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * x_683);
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat5;
  let x_689 : vec4<f32> = u_xlat0;
  let x_692 : vec4<f32> = u_xlat3;
  let x_694 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689.y, x_689.z, x_689.w)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_698 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_700 : f32 = x_370.unity_LightData.y;
  u_xlat5.x = min(x_698, x_700);
  let x_705 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_705));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_718 : u32 = u_xlatu_loop_1;
    let x_719 : u32 = u_xlatu5;
    if ((x_718 < x_719)) {
    } else {
      break;
    }
    let x_722 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_722 >> 2u);
    let x_725 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_725 & 3u));
    let x_729 : u32 = u_xlatu15;
    let x_732 : vec4<f32> = x_370.unity_LightIndices[bitcast<i32>(x_729)];
    let x_742 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_747 : vec4<u32> = indexable[x_742];
    u_xlat15.x = dot(x_732, bitcast<vec4<f32>>(x_747));
    let x_753 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_753);
    let x_756 : vec3<f32> = vs_TEXCOORD1;
    let x_768 : i32 = u_xlati15;
    let x_770 : vec4<f32> = x_767.x_AdditionalLightsPosition[x_768];
    let x_773 : i32 = u_xlati15;
    let x_775 : vec4<f32> = x_767.x_AdditionalLightsPosition[x_773];
    u_xlat7 = ((-(x_756) * vec3<f32>(x_770.w, x_770.w, x_770.w)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
    let x_779 : vec3<f32> = u_xlat7;
    let x_780 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_779, x_780);
    let x_782 : f32 = u_xlat24;
    u_xlat24 = max(x_782, 6.10351562e-05f);
    let x_786 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_786);
    let x_788 : f32 = u_xlat33;
    let x_790 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_788, x_788, x_788) * x_790);
    let x_792 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_792);
    let x_794 : f32 = u_xlat24;
    let x_795 : i32 = u_xlati15;
    let x_797 : f32 = x_767.x_AdditionalLightsAttenuation[x_795].x;
    u_xlat24 = (x_794 * x_797);
    let x_799 : f32 = u_xlat24;
    let x_801 : f32 = u_xlat24;
    u_xlat24 = ((-(x_799) * x_801) + 1.0f);
    let x_804 : f32 = u_xlat24;
    u_xlat24 = max(x_804, 0.0f);
    let x_806 : f32 = u_xlat24;
    let x_807 : f32 = u_xlat24;
    u_xlat24 = (x_806 * x_807);
    let x_809 : f32 = u_xlat24;
    let x_810 : f32 = u_xlat33;
    u_xlat24 = (x_809 * x_810);
    let x_812 : i32 = u_xlati15;
    let x_814 : vec4<f32> = x_767.x_AdditionalLightsSpotDir[x_812];
    let x_816 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_814.x, x_814.y, x_814.z), x_816);
    let x_818 : f32 = u_xlat33;
    let x_819 : i32 = u_xlati15;
    let x_821 : f32 = x_767.x_AdditionalLightsAttenuation[x_819].z;
    let x_823 : i32 = u_xlati15;
    let x_825 : f32 = x_767.x_AdditionalLightsAttenuation[x_823].w;
    u_xlat33 = ((x_818 * x_821) + x_825);
    let x_827 : f32 = u_xlat33;
    u_xlat33 = clamp(x_827, 0.0f, 1.0f);
    let x_829 : f32 = u_xlat33;
    let x_830 : f32 = u_xlat33;
    u_xlat33 = (x_829 * x_830);
    let x_832 : f32 = u_xlat33;
    let x_833 : f32 = u_xlat24;
    u_xlat24 = (x_832 * x_833);
    let x_836 : f32 = u_xlat31;
    let x_838 : i32 = u_xlati15;
    let x_840 : vec4<f32> = x_767.x_AdditionalLightsColor[x_838];
    u_xlat8 = (vec3<f32>(x_836, x_836, x_836) * vec3<f32>(x_840.x, x_840.y, x_840.z));
    let x_843 : f32 = u_xlat24;
    let x_845 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_843, x_843, x_843) * x_845);
    let x_848 : vec4<f32> = u_xlat2;
    let x_850 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_848.x, x_848.y, x_848.z), x_850);
    let x_852 : f32 = u_xlat34;
    u_xlat34 = clamp(x_852, 0.0f, 1.0f);
    let x_854 : vec3<f32> = u_xlat15;
    let x_855 : f32 = u_xlat34;
    u_xlat8 = (x_854 * vec3<f32>(x_855, x_855, x_855));
    let x_858 : vec3<f32> = u_xlat1;
    let x_859 : f32 = u_xlat28;
    let x_862 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_858 * vec3<f32>(x_859, x_859, x_859)) + x_862);
    let x_864 : vec3<f32> = u_xlat7;
    let x_865 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_864, x_865);
    let x_867 : f32 = u_xlat34;
    u_xlat34 = max(x_867, 1.17549435e-37f);
    let x_869 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_869);
    let x_871 : f32 = u_xlat34;
    let x_873 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_871, x_871, x_871) * x_873);
    let x_875 : vec4<f32> = u_xlat2;
    let x_877 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_875.x, x_875.y, x_875.z), x_877);
    let x_881 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_881, 0.0f, 1.0f);
    let x_885 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_885);
    let x_888 : f32 = u_xlat29;
    let x_890 : f32 = u_xlat7.x;
    u_xlat7.x = (x_888 * x_890);
    let x_894 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_894);
    let x_897 : vec3<f32> = u_xlat7;
    let x_900 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_897.x, x_897.x, x_897.x) * vec3<f32>(x_900.x, x_900.y, x_900.z));
    let x_903 : vec3<f32> = u_xlat15;
    let x_904 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_903 * x_904);
    let x_906 : vec3<f32> = u_xlat8;
    let x_907 : vec4<f32> = u_xlat0;
    let x_910 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_906 * vec3<f32>(x_907.y, x_907.z, x_907.w)) + x_910);
    let x_912 : vec3<f32> = u_xlat14;
    let x_913 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_912 + x_913);

    continuing {
      let x_915 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_915 + bitcast<u32>(1i));
    }
  }
  let x_918 : vec4<f32> = u_xlat4;
  let x_920 : vec4<f32> = u_xlat0;
  let x_923 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_918.x, x_918.y, x_918.z) * vec3<f32>(x_920.y, x_920.z, x_920.w)) + vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec3<f32> = u_xlat14;
  let x_927 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_926 + x_927);
  let x_929 : f32 = u_xlat30;
  let x_930 : f32 = u_xlat30;
  u_xlat1.x = (x_929 * -(x_930));
  let x_935 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_935);
  let x_938 : vec3<f32> = u_xlat9;
  let x_941 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_938 + -(vec3<f32>(x_941.x, x_941.y, x_941.z)));
  let x_947 : vec3<f32> = u_xlat1;
  let x_949 : vec3<f32> = u_xlat9;
  let x_952 : vec4<f32> = x_44.unity_FogColor;
  let x_954 : vec3<f32> = ((vec3<f32>(x_947.x, x_947.x, x_947.x) * x_949) + vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_959 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_959 == 1.0f);
  let x_961 : bool = u_xlatb9;
  if (x_961) {
    let x_966 : f32 = u_xlat0.x;
    x_962 = x_966;
  } else {
    x_962 = 1.0f;
  }
  let x_968 : f32 = x_962;
  SV_Target0.w = x_968;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

