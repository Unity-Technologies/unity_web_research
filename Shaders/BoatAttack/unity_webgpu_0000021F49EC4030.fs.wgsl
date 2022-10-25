struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_258 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1214 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb36 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat2 : vec3<f32>;
  var x_133 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb38 : bool;
  var u_xlatb40 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat38 : f32;
  var x_375 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu26 : u32;
  var u_xlatu3 : u32;
  var u_xlati26 : i32;
  var u_xlati14 : i32;
  var u_xlatu14 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat14 : vec3<f32>;
  var x_508 : f32;
  var u_xlatb14 : vec2<bool>;
  var x_539 : f32;
  var u_xlat26 : f32;
  var u_xlatb2 : bool;
  var x_586 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat29 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb42 : bool;
  var u_xlat7 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu37 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati17 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat21 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_65 : vec3<f32> = vs_INTERP1;
  let x_66 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_65, x_66);
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_72);
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_76);
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_79.x, x_79.x, x_79.x) * x_81);
  let x_94 : f32 = x_90.unity_OrthoParams.w;
  u_xlatb36 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat37;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat36 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat36;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  let x_203 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_212 : vec4<f32> = vs_INTERP3;
  let x_215 : f32 = x_90.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_212.x, x_212.y), x_215);
  u_xlat5 = vec4<f32>(x_216.w, x_216.x, x_216.y, x_216.z);
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_219.y, x_219.z, x_219.w, x_219.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_227 : vec4<f32> = u_xlat6;
  let x_228 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_230);
  let x_233 : f32 = u_xlat36;
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_240 * 200.0f);
  let x_243 : f32 = u_xlat36;
  u_xlat36 = min(x_243, 1.0f);
  let x_245 : f32 = u_xlat36;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_260 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][1i];
  let x_262 : vec3<f32> = (vec3<f32>(x_252.y, x_252.y, x_252.y) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][0i];
  let x_268 : vec3<f32> = vs_INTERP0;
  let x_271 : vec4<f32> = u_xlat6;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.x, x_268.x)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][2i];
  let x_279 : vec3<f32> = vs_INTERP0;
  let x_282 : vec4<f32> = u_xlat6;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.z, x_279.z, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat6;
  let x_291 : vec4<f32> = x_258.x_MainLightWorldToShadow[0i][3i];
  let x_293 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec4<f32> = u_xlat6;
  let x_298 : vec2<f32> = vec2<f32>(x_297.x, x_297.y);
  let x_300 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_298.x, x_298.y, x_300);
  let x_312 : vec3<f32> = txVec0;
  let x_314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_312.xy, x_312.z);
  u_xlat36 = x_314;
  let x_317 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_317) + 1.0f);
  let x_320 : f32 = u_xlat36;
  let x_322 : f32 = x_258.x_MainLightShadowParams.x;
  let x_324 : f32 = u_xlat37;
  u_xlat36 = ((x_320 * x_322) + x_324);
  let x_328 : f32 = u_xlat6.z;
  u_xlatb38 = (0.0f >= x_328);
  let x_332 : f32 = u_xlat6.z;
  u_xlatb40 = (x_332 >= 1.0f);
  let x_334 : bool = u_xlatb38;
  let x_335 : bool = u_xlatb40;
  u_xlatb38 = (x_334 | x_335);
  let x_337 : bool = u_xlatb38;
  let x_338 : f32 = u_xlat36;
  u_xlat36 = select(x_338, 1.0f, x_337);
  let x_340 : vec3<f32> = u_xlat0;
  let x_342 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_340, -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
  let x_348 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_348, 0.0f, 1.0f);
  let x_352 : f32 = u_xlat36;
  let x_356 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec3<f32> = u_xlat12;
  let x_360 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_359 * vec3<f32>(x_360.x, x_360.x, x_360.x));
  let x_363 : vec3<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_363 * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : f32 = x_145.unity_LODFade.x;
  u_xlatb36 = (x_368 < 0.0f);
  let x_372 : f32 = x_145.unity_LODFade.x;
  u_xlat38 = (x_372 + 1.0f);
  let x_374 : bool = u_xlatb36;
  if (x_374) {
    let x_378 : f32 = u_xlat38;
    x_375 = x_378;
  } else {
    let x_381 : f32 = x_145.unity_LODFade.x;
    x_375 = x_381;
  }
  let x_382 : f32 = x_375;
  u_xlat36 = x_382;
  let x_384 : f32 = u_xlat36;
  u_xlatb38 = (0.5f >= x_384);
  let x_386 : vec3<f32> = u_xlat2;
  let x_390 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_386) * vec3<f32>(x_390.x, x_390.y, x_390.x));
  let x_396 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_396);
  let x_400 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_400 * 1025u);
  let x_404 : u32 = u_xlatu26;
  u_xlatu3 = (x_404 >> 6u);
  let x_408 : u32 = u_xlatu26;
  let x_409 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_408 ^ x_409));
  let x_412 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_412) * 9u);
  let x_416 : u32 = u_xlatu26;
  u_xlatu3 = (x_416 >> 11u);
  let x_419 : u32 = u_xlatu26;
  let x_420 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_419 ^ x_420));
  let x_423 : i32 = u_xlati26;
  u_xlati26 = (x_423 * 32769i);
  let x_427 : i32 = u_xlati26;
  let x_430 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_427) ^ x_430));
  let x_434 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_434) * 1025u);
  let x_437 : u32 = u_xlatu14;
  u_xlatu26 = (x_437 >> 6u);
  let x_439 : u32 = u_xlatu26;
  let x_440 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_439 ^ x_440));
  let x_443 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_443) * 9u);
  let x_446 : u32 = u_xlatu14;
  u_xlatu26 = (x_446 >> 11u);
  let x_448 : u32 = u_xlatu26;
  let x_449 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_448 ^ x_449));
  let x_452 : i32 = u_xlati14;
  u_xlati14 = (x_452 * 32769i);
  let x_455 : i32 = u_xlati14;
  let x_458 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_455) ^ x_458));
  let x_461 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_461) * 1025u);
  let x_466 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_466 >> 6u);
  let x_468 : u32 = u_xlatu14;
  let x_470 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_468 ^ x_470));
  let x_473 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_473) * 9u);
  let x_478 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_478 >> 11u);
  let x_480 : u32 = u_xlatu14;
  let x_482 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_480 ^ x_482));
  let x_485 : i32 = u_xlati2;
  u_xlati2 = (x_485 * 32769i);
  param = 1065353216i;
  let x_491 : i32 = u_xlati2;
  param_1 = x_491;
  param_2 = 0i;
  param_3 = 23i;
  let x_494 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_494);
  let x_498 : f32 = u_xlat2.x;
  u_xlat2.x = (x_498 + -1.0f);
  let x_503 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_503) + 1.0f);
  let x_507 : bool = u_xlatb38;
  if (x_507) {
    let x_512 : f32 = u_xlat2.x;
    x_508 = x_512;
  } else {
    let x_515 : f32 = u_xlat14.x;
    x_508 = x_515;
  }
  let x_516 : f32 = x_508;
  u_xlat2.x = x_516;
  let x_518 : f32 = u_xlat36;
  let x_521 : f32 = u_xlat2.x;
  u_xlat36 = ((x_518 * 2.0f) + -(x_521));
  let x_524 : f32 = u_xlat36;
  let x_526 : f32 = u_xlat3.w;
  u_xlat2.x = (x_524 * x_526);
  let x_533 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_533 >= 0.400000006f);
  let x_538 : bool = u_xlatb14.x;
  if (x_538) {
    let x_543 : f32 = u_xlat2.x;
    x_539 = x_543;
  } else {
    x_539 = 0.0f;
  }
  let x_545 : f32 = x_539;
  u_xlat14.x = x_545;
  let x_548 : f32 = u_xlat3.w;
  let x_549 : f32 = u_xlat36;
  u_xlat36 = ((x_548 * x_549) + -0.400000006f);
  let x_555 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_555);
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_558);
  let x_562 : f32 = u_xlat2.x;
  let x_564 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_562) + abs(x_564));
  let x_569 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_569, 0.0001f);
  let x_573 : f32 = u_xlat36;
  let x_575 : f32 = u_xlat2.x;
  u_xlat36 = (x_573 / x_575);
  let x_577 : f32 = u_xlat36;
  u_xlat36 = (x_577 + 0.5f);
  let x_579 : f32 = u_xlat36;
  u_xlat36 = clamp(x_579, 0.0f, 1.0f);
  let x_583 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_583 == 0.0f));
  let x_585 : bool = u_xlatb2;
  if (x_585) {
    let x_589 : f32 = u_xlat36;
    x_586 = x_589;
  } else {
    let x_592 : f32 = u_xlat14.x;
    x_586 = x_592;
  }
  let x_593 : f32 = x_586;
  u_xlat36 = x_593;
  let x_594 : f32 = u_xlat36;
  u_xlat14.x = (x_594 + -0.0001f);
  let x_599 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_599 < 0.0f);
  let x_603 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_603) * -1i) != 0i)) {
    discard;
  }
  let x_613 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_613);
  let x_617 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_617 >= 0.0f);
  let x_621 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_621);
  let x_625 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_625);
  let x_629 : f32 = u_xlat14.y;
  let x_631 : f32 = u_xlat14.x;
  u_xlat14.x = (x_629 * x_631);
  let x_634 : vec3<f32> = vs_INTERP1;
  let x_636 : vec4<f32> = vs_INTERP2;
  let x_638 : vec3<f32> = (vec3<f32>(x_634.z, x_634.x, x_634.y) * vec3<f32>(x_636.y, x_636.z, x_636.x));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec3<f32> = vs_INTERP1;
  let x_643 : vec4<f32> = vs_INTERP2;
  let x_646 : vec4<f32> = u_xlat3;
  let x_649 : vec3<f32> = ((vec3<f32>(x_641.y, x_641.z, x_641.x) * vec3<f32>(x_643.z, x_643.x, x_643.y)) + -(vec3<f32>(x_646.x, x_646.y, x_646.z)));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = u_xlat14;
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_652.x, x_652.x, x_652.x) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec3<f32> = u_xlat14;
  let x_658 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_657 * vec3<f32>(x_658.y, x_658.y, x_658.y));
  let x_661 : vec3<f32> = u_xlat17;
  let x_663 : vec4<f32> = vs_INTERP2;
  let x_666 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_661.x, x_661.x, x_661.x) * vec3<f32>(x_663.x, x_663.y, x_663.z)) + x_666);
  let x_668 : vec3<f32> = u_xlat17;
  let x_670 : vec3<f32> = vs_INTERP1;
  let x_672 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_668.z, x_668.z, x_668.z) * x_670) + x_672);
  let x_674 : vec3<f32> = u_xlat14;
  let x_675 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_674, x_675);
  let x_679 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_679);
  let x_682 : vec3<f32> = u_xlat14;
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_682 * vec3<f32>(x_683.x, x_683.x, x_683.x));
  let x_687 : f32 = vs_INTERP0.y;
  let x_689 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat3.x = (x_687 * x_689);
  let x_693 : f32 = x_90.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_698 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_693 * x_695) + x_698);
  let x_702 : f32 = x_90.unity_MatrixV[2i].z;
  let x_704 : f32 = vs_INTERP0.z;
  let x_707 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_702 * x_704) + x_707);
  let x_711 : f32 = u_xlat3.x;
  let x_713 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat3.x = (x_711 + x_713);
  let x_717 : f32 = u_xlat3.x;
  let x_720 : f32 = x_90.x_ProjectionParams.y;
  u_xlat3.x = (-(x_717) + -(x_720));
  let x_725 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_725, 0.0f);
  let x_729 : f32 = u_xlat3.x;
  let x_732 : f32 = x_90.unity_FogParams.x;
  u_xlat3.x = (x_729 * x_732);
  let x_743 : vec2<f32> = vs_INTERP5;
  let x_745 : f32 = x_90.x_GlobalMipBias.x;
  let x_746 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_743, x_745);
  u_xlat15 = vec3<f32>(x_746.x, x_746.y, x_746.z);
  let x_750 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_751 : vec2<f32> = vec2<f32>(x_750.x, x_750.y);
  let x_755 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_751.x, x_751.y));
  let x_756 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_755.x, x_755.y, x_756.z);
  let x_758 : vec3<f32> = u_xlat17;
  let x_760 : vec4<f32> = hlslcc_FragCoord;
  let x_762 : vec2<f32> = (vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_760.x, x_760.y));
  let x_763 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
  let x_767 : f32 = u_xlat6.y;
  let x_770 : f32 = x_90.x_ScaleBiasRt.x;
  let x_773 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat40 = ((x_767 * x_770) + x_773);
  let x_775 : f32 = u_xlat40;
  u_xlat6.z = (-(x_775) + 1.0f);
  let x_780 : f32 = u_xlat5.x;
  u_xlat5.x = x_780;
  let x_783 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_783, 0.0f, 1.0f);
  let x_786 : f32 = u_xlat36;
  u_xlat36 = x_786;
  let x_787 : f32 = u_xlat36;
  u_xlat36 = clamp(x_787, 0.0f, 1.0f);
  let x_790 : f32 = u_xlat5.x;
  u_xlat40 = (-(x_790) + 1.0f);
  let x_793 : f32 = u_xlat40;
  let x_794 : f32 = u_xlat40;
  u_xlat17.x = (x_793 * x_794);
  let x_798 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_798, 0.0078125f);
  let x_804 : f32 = u_xlat17.x;
  let x_806 : f32 = u_xlat17.x;
  u_xlat29 = (x_804 * x_806);
  let x_809 : f32 = u_xlat5.x;
  u_xlat5.x = (x_809 + 0.040000021f);
  let x_814 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_814, 1.0f);
  let x_819 : f32 = u_xlat17.x;
  u_xlat41 = ((x_819 * 4.0f) + 2.0f);
  let x_828 : vec4<f32> = u_xlat6;
  let x_831 : f32 = x_90.x_GlobalMipBias.x;
  let x_832 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_828.x, x_828.z), x_831);
  u_xlat6.x = x_832.x;
  let x_837 : f32 = u_xlat6.x;
  u_xlat18 = (x_837 + -1.0f);
  let x_841 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_842 : f32 = u_xlat18;
  u_xlat18 = ((x_841 * x_842) + 1.0f);
  let x_846 : f32 = u_xlat6.x;
  let x_848 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_846, x_848);
  let x_853 : vec4<f32> = vs_INTERP9;
  let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
  let x_856 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_854.x, x_854.y, x_856);
  let x_864 : vec3<f32> = txVec1;
  let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_864.xy, x_864.z);
  u_xlat30 = x_866;
  let x_867 : f32 = u_xlat30;
  let x_869 : f32 = x_258.x_MainLightShadowParams.x;
  let x_871 : f32 = u_xlat37;
  u_xlat37 = ((x_867 * x_869) + x_871);
  let x_875 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_875);
  let x_879 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_879 >= 1.0f);
  let x_881 : bool = u_xlatb42;
  let x_882 : bool = u_xlatb30;
  u_xlatb30 = (x_881 | x_882);
  let x_884 : bool = u_xlatb30;
  let x_885 : f32 = u_xlat37;
  u_xlat37 = select(x_885, 1.0f, x_884);
  let x_888 : vec3<f32> = vs_INTERP0;
  let x_890 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat7 = (x_888 + -(x_890));
  let x_893 : vec3<f32> = u_xlat7;
  let x_894 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_893, x_894);
  let x_896 : f32 = u_xlat30;
  let x_898 : f32 = x_258.x_MainLightShadowParams.z;
  let x_901 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat30 = ((x_896 * x_898) + x_901);
  let x_903 : f32 = u_xlat30;
  u_xlat30 = clamp(x_903, 0.0f, 1.0f);
  let x_906 : f32 = u_xlat37;
  u_xlat42 = (-(x_906) + 1.0f);
  let x_909 : f32 = u_xlat30;
  let x_910 : f32 = u_xlat42;
  let x_912 : f32 = u_xlat37;
  u_xlat37 = ((x_909 * x_910) + x_912);
  let x_914 : f32 = u_xlat18;
  let x_917 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_914, x_914, x_914) * vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec3<f32> = u_xlat1;
  let x_922 : vec3<f32> = u_xlat14;
  u_xlat30 = dot(-(x_920), x_922);
  let x_924 : f32 = u_xlat30;
  let x_925 : f32 = u_xlat30;
  u_xlat30 = (x_924 + x_925);
  let x_928 : vec3<f32> = u_xlat14;
  let x_929 : f32 = u_xlat30;
  let x_933 : vec3<f32> = u_xlat1;
  let x_935 : vec3<f32> = ((x_928 * -(vec3<f32>(x_929, x_929, x_929))) + -(x_933));
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec3<f32> = u_xlat14;
  let x_939 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_938, x_939);
  let x_941 : f32 = u_xlat30;
  u_xlat30 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat30;
  u_xlat30 = (-(x_943) + 1.0f);
  let x_946 : f32 = u_xlat30;
  let x_947 : f32 = u_xlat30;
  u_xlat30 = (x_946 * x_947);
  let x_949 : f32 = u_xlat30;
  let x_950 : f32 = u_xlat30;
  u_xlat30 = (x_949 * x_950);
  let x_952 : f32 = u_xlat40;
  u_xlat42 = ((-(x_952) * 0.699999988f) + 1.700000048f);
  let x_958 : f32 = u_xlat40;
  let x_959 : f32 = u_xlat42;
  u_xlat4.w = (x_958 * x_959);
  let x_962 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_962 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_975 : vec4<f32> = u_xlat8;
  let x_978 : f32 = u_xlat4.w;
  let x_979 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_975.x, x_975.y, x_975.z), x_978);
  u_xlat8 = x_979;
  let x_981 : f32 = u_xlat8.w;
  u_xlat40 = (x_981 + -1.0f);
  let x_984 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_985 : f32 = u_xlat40;
  u_xlat40 = ((x_984 * x_985) + 1.0f);
  let x_988 : f32 = u_xlat40;
  u_xlat40 = max(x_988, 0.0f);
  let x_990 : f32 = u_xlat40;
  u_xlat40 = log2(x_990);
  let x_992 : f32 = u_xlat40;
  let x_994 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_992 * x_994);
  let x_996 : f32 = u_xlat40;
  u_xlat40 = exp2(x_996);
  let x_998 : f32 = u_xlat40;
  let x_1000 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_998 * x_1000);
  let x_1002 : vec4<f32> = u_xlat8;
  let x_1004 : f32 = u_xlat40;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) * vec3<f32>(x_1004, x_1004, x_1004));
  let x_1007 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1011 : vec3<f32> = u_xlat17;
  let x_1013 : vec3<f32> = u_xlat17;
  u_xlat9 = ((vec2<f32>(x_1011.x, x_1011.x) * vec2<f32>(x_1013.x, x_1013.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1019 : f32 = u_xlat9.y;
  u_xlat40 = (1.0f / x_1019);
  let x_1022 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1022 + -0.039999999f);
  let x_1026 : f32 = u_xlat30;
  let x_1028 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1026 * x_1028) + 0.039999999f);
  let x_1033 : f32 = u_xlat40;
  let x_1035 : f32 = u_xlat5.x;
  u_xlat40 = (x_1033 * x_1035);
  let x_1037 : f32 = u_xlat40;
  let x_1039 : vec4<f32> = u_xlat8;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1037, x_1037, x_1037) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec3<f32> = u_xlat15;
  let x_1045 : vec4<f32> = u_xlat4;
  let x_1048 : vec4<f32> = u_xlat8;
  u_xlat15 = ((x_1044 * vec3<f32>(x_1045.x, x_1045.y, x_1045.z)) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : f32 = u_xlat37;
  let x_1053 : f32 = x_145.unity_LightData.z;
  u_xlat37 = (x_1051 * x_1053);
  let x_1055 : vec3<f32> = u_xlat14;
  let x_1057 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat40 = dot(x_1055, vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1060, 0.0f, 1.0f);
  let x_1062 : f32 = u_xlat37;
  let x_1063 : f32 = u_xlat40;
  u_xlat37 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat37;
  let x_1067 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1065, x_1065, x_1065) * x_1067);
  let x_1069 : vec3<f32> = u_xlat1;
  let x_1071 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1073 : vec3<f32> = (x_1069 + vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat8;
  let x_1078 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : f32 = u_xlat37;
  u_xlat37 = max(x_1081, 1.17549435e-37f);
  let x_1084 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1084);
  let x_1086 : f32 = u_xlat37;
  let x_1088 : vec4<f32> = u_xlat8;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec3<f32> = u_xlat14;
  let x_1094 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(x_1093, vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1097, 0.0f, 1.0f);
  let x_1100 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1102 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1105, 0.0f, 1.0f);
  let x_1107 : f32 = u_xlat37;
  let x_1108 : f32 = u_xlat37;
  u_xlat37 = (x_1107 * x_1108);
  let x_1110 : f32 = u_xlat37;
  let x_1112 : f32 = u_xlat9.x;
  u_xlat37 = ((x_1110 * x_1112) + 1.000010014f);
  let x_1116 : f32 = u_xlat40;
  let x_1117 : f32 = u_xlat40;
  u_xlat40 = (x_1116 * x_1117);
  let x_1119 : f32 = u_xlat37;
  let x_1120 : f32 = u_xlat37;
  u_xlat37 = (x_1119 * x_1120);
  let x_1122 : f32 = u_xlat40;
  u_xlat40 = max(x_1122, 0.100000001f);
  let x_1125 : f32 = u_xlat37;
  let x_1126 : f32 = u_xlat40;
  u_xlat37 = (x_1125 * x_1126);
  let x_1128 : f32 = u_xlat41;
  let x_1129 : f32 = u_xlat37;
  u_xlat37 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat29;
  let x_1132 : f32 = u_xlat37;
  u_xlat37 = (x_1131 / x_1132);
  let x_1134 : f32 = u_xlat37;
  let x_1138 : vec4<f32> = u_xlat4;
  let x_1140 : vec3<f32> = ((vec3<f32>(x_1134, x_1134, x_1134) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec3<f32> = u_xlat7;
  let x_1144 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1143 * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1149 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1151 : f32 = x_145.unity_LightData.y;
  u_xlat37 = min(x_1149, x_1151);
  let x_1154 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1154));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1166 : u32 = u_xlatu_loop_1;
    let x_1167 : u32 = u_xlatu37;
    if ((x_1166 < x_1167)) {
    } else {
      break;
    }
    let x_1170 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1170 >> 2u);
    let x_1173 : u32 = u_xlatu_loop_1;
    u_xlati17 = bitcast<i32>((x_1173 & 3u));
    let x_1176 : u32 = u_xlatu5;
    let x_1179 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1176)];
    let x_1189 : i32 = u_xlati17;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1194 : vec4<u32> = indexable[x_1189];
    u_xlat5.x = dot(x_1179, bitcast<vec4<f32>>(x_1194));
    let x_1200 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1200);
    let x_1203 : vec3<f32> = vs_INTERP0;
    let x_1215 : i32 = u_xlati5;
    let x_1217 : vec4<f32> = x_1214.x_AdditionalLightsPosition[x_1215];
    let x_1220 : i32 = u_xlati5;
    let x_1222 : vec4<f32> = x_1214.x_AdditionalLightsPosition[x_1220];
    u_xlat21 = ((-(x_1203) * vec3<f32>(x_1217.w, x_1217.w, x_1217.w)) + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
    let x_1225 : vec3<f32> = u_xlat21;
    let x_1226 : vec3<f32> = u_xlat21;
    u_xlat17.x = dot(x_1225, x_1226);
    let x_1230 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1230, 6.10351562e-05f);
    let x_1235 : f32 = u_xlat17.x;
    u_xlat30 = inverseSqrt(x_1235);
    let x_1238 : f32 = u_xlat30;
    let x_1240 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1238, x_1238, x_1238) * x_1240);
    let x_1243 : f32 = u_xlat17.x;
    u_xlat42 = (1.0f / x_1243);
    let x_1246 : f32 = u_xlat17.x;
    let x_1247 : i32 = u_xlati5;
    let x_1249 : f32 = x_1214.x_AdditionalLightsAttenuation[x_1247].x;
    u_xlat17.x = (x_1246 * x_1249);
    let x_1253 : f32 = u_xlat17.x;
    let x_1256 : f32 = u_xlat17.x;
    u_xlat17.x = ((-(x_1253) * x_1256) + 1.0f);
    let x_1261 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1261, 0.0f);
    let x_1265 : f32 = u_xlat17.x;
    let x_1267 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1265 * x_1267);
    let x_1271 : f32 = u_xlat17.x;
    let x_1272 : f32 = u_xlat42;
    u_xlat17.x = (x_1271 * x_1272);
    let x_1275 : i32 = u_xlati5;
    let x_1277 : vec4<f32> = x_1214.x_AdditionalLightsSpotDir[x_1275];
    let x_1279 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1277.x, x_1277.y, x_1277.z), x_1279);
    let x_1281 : f32 = u_xlat42;
    let x_1282 : i32 = u_xlati5;
    let x_1284 : f32 = x_1214.x_AdditionalLightsAttenuation[x_1282].z;
    let x_1286 : i32 = u_xlati5;
    let x_1288 : f32 = x_1214.x_AdditionalLightsAttenuation[x_1286].w;
    u_xlat42 = ((x_1281 * x_1284) + x_1288);
    let x_1290 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1290, 0.0f, 1.0f);
    let x_1292 : f32 = u_xlat42;
    let x_1293 : f32 = u_xlat42;
    u_xlat42 = (x_1292 * x_1293);
    let x_1296 : f32 = u_xlat17.x;
    let x_1297 : f32 = u_xlat42;
    u_xlat17.x = (x_1296 * x_1297);
    let x_1301 : f32 = u_xlat18;
    let x_1303 : i32 = u_xlati5;
    let x_1305 : vec4<f32> = x_1214.x_AdditionalLightsColor[x_1303];
    u_xlat11 = (vec3<f32>(x_1301, x_1301, x_1301) * vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec3<f32> = u_xlat14;
    let x_1309 : vec3<f32> = u_xlat10;
    u_xlat5.x = dot(x_1308, x_1309);
    let x_1313 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1313, 0.0f, 1.0f);
    let x_1317 : f32 = u_xlat5.x;
    let x_1319 : f32 = u_xlat17.x;
    u_xlat5.x = (x_1317 * x_1319);
    let x_1322 : vec4<f32> = u_xlat5;
    let x_1324 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1322.x, x_1322.x, x_1322.x) * x_1324);
    let x_1326 : vec3<f32> = u_xlat21;
    let x_1327 : f32 = u_xlat30;
    let x_1330 : vec3<f32> = u_xlat1;
    u_xlat21 = ((x_1326 * vec3<f32>(x_1327, x_1327, x_1327)) + x_1330);
    let x_1332 : vec3<f32> = u_xlat21;
    let x_1333 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1332, x_1333);
    let x_1337 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1337, 1.17549435e-37f);
    let x_1341 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1341);
    let x_1344 : vec4<f32> = u_xlat5;
    let x_1346 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1344.x, x_1344.x, x_1344.x) * x_1346);
    let x_1348 : vec3<f32> = u_xlat14;
    let x_1349 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1348, x_1349);
    let x_1353 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1353, 0.0f, 1.0f);
    let x_1356 : vec3<f32> = u_xlat10;
    let x_1357 : vec3<f32> = u_xlat21;
    u_xlat5.y = dot(x_1356, x_1357);
    let x_1361 : f32 = u_xlat5.y;
    u_xlat5.y = clamp(x_1361, 0.0f, 1.0f);
    let x_1364 : vec4<f32> = u_xlat5;
    let x_1366 : vec4<f32> = u_xlat5;
    let x_1368 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1366.x, x_1366.y));
    let x_1369 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
    let x_1372 : f32 = u_xlat5.x;
    let x_1374 : f32 = u_xlat9.x;
    u_xlat5.x = ((x_1372 * x_1374) + 1.000010014f);
    let x_1379 : f32 = u_xlat5.x;
    let x_1381 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1379 * x_1381);
    let x_1385 : f32 = u_xlat5.y;
    u_xlat17.x = max(x_1385, 0.100000001f);
    let x_1389 : f32 = u_xlat17.x;
    let x_1391 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1389 * x_1391);
    let x_1394 : f32 = u_xlat41;
    let x_1396 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1394 * x_1396);
    let x_1399 : f32 = u_xlat29;
    let x_1401 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1399 / x_1401);
    let x_1404 : vec4<f32> = u_xlat5;
    let x_1407 : vec4<f32> = u_xlat4;
    u_xlat21 = ((vec3<f32>(x_1404.x, x_1404.x, x_1404.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
    let x_1410 : vec3<f32> = u_xlat21;
    let x_1411 : vec3<f32> = u_xlat11;
    let x_1413 : vec4<f32> = u_xlat8;
    let x_1415 : vec3<f32> = ((x_1410 * x_1411) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);

    continuing {
      let x_1418 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1418 + bitcast<u32>(1i));
    }
  }
  let x_1420 : vec3<f32> = u_xlat15;
  let x_1421 : vec4<f32> = u_xlat6;
  let x_1424 : vec3<f32> = u_xlat7;
  u_xlat1 = ((x_1420 * vec3<f32>(x_1421.x, x_1421.x, x_1421.x)) + x_1424);
  let x_1426 : vec4<f32> = u_xlat8;
  let x_1428 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1426.x, x_1426.y, x_1426.z) + x_1428);
  let x_1430 : vec4<f32> = vs_INTERP4;
  let x_1432 : vec3<f32> = u_xlat0;
  let x_1434 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1430.w, x_1430.w, x_1430.w) * x_1432) + x_1434);
  let x_1437 : f32 = u_xlat3.x;
  let x_1439 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1437 * -(x_1439));
  let x_1444 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1444);
  let x_1447 : vec3<f32> = u_xlat0;
  let x_1450 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1447 + -(vec3<f32>(x_1450.x, x_1450.y, x_1450.z)));
  let x_1456 : vec3<f32> = u_xlat1;
  let x_1458 : vec3<f32> = u_xlat0;
  let x_1461 : vec4<f32> = x_90.unity_FogColor;
  let x_1463 : vec3<f32> = ((vec3<f32>(x_1456.x, x_1456.x, x_1456.x) * x_1458) + vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
  let x_1464 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
  let x_1466 : bool = u_xlatb2;
  let x_1467 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1467, x_1466);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

