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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_258 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1243 : AdditionalLights;

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
  let x_742 : vec2<f32> = vs_INTERP5;
  let x_744 : f32 = x_90.x_GlobalMipBias.x;
  let x_745 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_742, x_744);
  u_xlat6 = x_745;
  let x_751 : vec2<f32> = vs_INTERP5;
  let x_753 : f32 = x_90.x_GlobalMipBias.x;
  let x_754 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_751, x_753);
  u_xlat15 = vec3<f32>(x_754.x, x_754.y, x_754.z);
  let x_756 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_756.x, x_756.y, x_756.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_762 : vec3<f32> = u_xlat14;
  let x_763 : vec3<f32> = u_xlat17;
  u_xlat40 = dot(x_762, x_763);
  let x_765 : f32 = u_xlat40;
  u_xlat40 = (x_765 + 0.5f);
  let x_767 : vec3<f32> = u_xlat15;
  let x_768 : f32 = u_xlat40;
  u_xlat15 = (x_767 * vec3<f32>(x_768, x_768, x_768));
  let x_772 : f32 = u_xlat6.w;
  u_xlat40 = max(x_772, 0.0001f);
  let x_774 : vec3<f32> = u_xlat15;
  let x_775 : f32 = u_xlat40;
  u_xlat15 = (x_774 / vec3<f32>(x_775, x_775, x_775));
  let x_780 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
  let x_785 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_781.x, x_781.y));
  let x_786 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_785.x, x_785.y, x_786.z);
  let x_788 : vec3<f32> = u_xlat17;
  let x_790 : vec4<f32> = hlslcc_FragCoord;
  let x_792 : vec2<f32> = (vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_790.x, x_790.y));
  let x_793 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_796 : f32 = u_xlat6.y;
  let x_799 : f32 = x_90.x_ScaleBiasRt.x;
  let x_802 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat40 = ((x_796 * x_799) + x_802);
  let x_804 : f32 = u_xlat40;
  u_xlat6.z = (-(x_804) + 1.0f);
  let x_809 : f32 = u_xlat5.x;
  u_xlat5.x = x_809;
  let x_812 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_812, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat36;
  u_xlat36 = x_815;
  let x_816 : f32 = u_xlat36;
  u_xlat36 = clamp(x_816, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat5.x;
  u_xlat40 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat40;
  let x_823 : f32 = u_xlat40;
  u_xlat17.x = (x_822 * x_823);
  let x_827 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_827, 0.0078125f);
  let x_833 : f32 = u_xlat17.x;
  let x_835 : f32 = u_xlat17.x;
  u_xlat29 = (x_833 * x_835);
  let x_838 : f32 = u_xlat5.x;
  u_xlat5.x = (x_838 + 0.040000021f);
  let x_843 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_843, 1.0f);
  let x_848 : f32 = u_xlat17.x;
  u_xlat41 = ((x_848 * 4.0f) + 2.0f);
  let x_857 : vec4<f32> = u_xlat6;
  let x_860 : f32 = x_90.x_GlobalMipBias.x;
  let x_861 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_857.x, x_857.z), x_860);
  u_xlat6.x = x_861.x;
  let x_866 : f32 = u_xlat6.x;
  u_xlat18 = (x_866 + -1.0f);
  let x_870 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_871 : f32 = u_xlat18;
  u_xlat18 = ((x_870 * x_871) + 1.0f);
  let x_875 : f32 = u_xlat6.x;
  let x_877 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_875, x_877);
  let x_882 : vec4<f32> = vs_INTERP9;
  let x_883 : vec2<f32> = vec2<f32>(x_882.x, x_882.y);
  let x_885 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_883.x, x_883.y, x_885);
  let x_893 : vec3<f32> = txVec1;
  let x_895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_893.xy, x_893.z);
  u_xlat30 = x_895;
  let x_896 : f32 = u_xlat30;
  let x_898 : f32 = x_258.x_MainLightShadowParams.x;
  let x_900 : f32 = u_xlat37;
  u_xlat37 = ((x_896 * x_898) + x_900);
  let x_904 : f32 = vs_INTERP9.z;
  u_xlatb30 = (0.0f >= x_904);
  let x_908 : f32 = vs_INTERP9.z;
  u_xlatb42 = (x_908 >= 1.0f);
  let x_910 : bool = u_xlatb42;
  let x_911 : bool = u_xlatb30;
  u_xlatb30 = (x_910 | x_911);
  let x_913 : bool = u_xlatb30;
  let x_914 : f32 = u_xlat37;
  u_xlat37 = select(x_914, 1.0f, x_913);
  let x_917 : vec3<f32> = vs_INTERP0;
  let x_919 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat7 = (x_917 + -(x_919));
  let x_922 : vec3<f32> = u_xlat7;
  let x_923 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(x_922, x_923);
  let x_925 : f32 = u_xlat30;
  let x_927 : f32 = x_258.x_MainLightShadowParams.z;
  let x_930 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat30 = ((x_925 * x_927) + x_930);
  let x_932 : f32 = u_xlat30;
  u_xlat30 = clamp(x_932, 0.0f, 1.0f);
  let x_935 : f32 = u_xlat37;
  u_xlat42 = (-(x_935) + 1.0f);
  let x_938 : f32 = u_xlat30;
  let x_939 : f32 = u_xlat42;
  let x_941 : f32 = u_xlat37;
  u_xlat37 = ((x_938 * x_939) + x_941);
  let x_943 : f32 = u_xlat18;
  let x_946 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec3<f32> = u_xlat1;
  let x_951 : vec3<f32> = u_xlat14;
  u_xlat30 = dot(-(x_949), x_951);
  let x_953 : f32 = u_xlat30;
  let x_954 : f32 = u_xlat30;
  u_xlat30 = (x_953 + x_954);
  let x_957 : vec3<f32> = u_xlat14;
  let x_958 : f32 = u_xlat30;
  let x_962 : vec3<f32> = u_xlat1;
  let x_964 : vec3<f32> = ((x_957 * -(vec3<f32>(x_958, x_958, x_958))) + -(x_962));
  let x_965 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec3<f32> = u_xlat14;
  let x_968 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_967, x_968);
  let x_970 : f32 = u_xlat30;
  u_xlat30 = clamp(x_970, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat30;
  u_xlat30 = (-(x_972) + 1.0f);
  let x_975 : f32 = u_xlat30;
  let x_976 : f32 = u_xlat30;
  u_xlat30 = (x_975 * x_976);
  let x_978 : f32 = u_xlat30;
  let x_979 : f32 = u_xlat30;
  u_xlat30 = (x_978 * x_979);
  let x_981 : f32 = u_xlat40;
  u_xlat42 = ((-(x_981) * 0.699999988f) + 1.700000048f);
  let x_987 : f32 = u_xlat40;
  let x_988 : f32 = u_xlat42;
  u_xlat4.w = (x_987 * x_988);
  let x_991 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_991 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_1004 : vec4<f32> = u_xlat8;
  let x_1007 : f32 = u_xlat4.w;
  let x_1008 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1004.x, x_1004.y, x_1004.z), x_1007);
  u_xlat8 = x_1008;
  let x_1010 : f32 = u_xlat8.w;
  u_xlat40 = (x_1010 + -1.0f);
  let x_1013 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1014 : f32 = u_xlat40;
  u_xlat40 = ((x_1013 * x_1014) + 1.0f);
  let x_1017 : f32 = u_xlat40;
  u_xlat40 = max(x_1017, 0.0f);
  let x_1019 : f32 = u_xlat40;
  u_xlat40 = log2(x_1019);
  let x_1021 : f32 = u_xlat40;
  let x_1023 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1021 * x_1023);
  let x_1025 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1025);
  let x_1027 : f32 = u_xlat40;
  let x_1029 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1027 * x_1029);
  let x_1031 : vec4<f32> = u_xlat8;
  let x_1033 : f32 = u_xlat40;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1033, x_1033, x_1033));
  let x_1036 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1040 : vec3<f32> = u_xlat17;
  let x_1042 : vec3<f32> = u_xlat17;
  u_xlat9 = ((vec2<f32>(x_1040.x, x_1040.x) * vec2<f32>(x_1042.x, x_1042.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1048 : f32 = u_xlat9.y;
  u_xlat40 = (1.0f / x_1048);
  let x_1051 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1051 + -0.039999999f);
  let x_1055 : f32 = u_xlat30;
  let x_1057 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1055 * x_1057) + 0.039999999f);
  let x_1062 : f32 = u_xlat40;
  let x_1064 : f32 = u_xlat5.x;
  u_xlat40 = (x_1062 * x_1064);
  let x_1066 : f32 = u_xlat40;
  let x_1068 : vec4<f32> = u_xlat8;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec3<f32> = u_xlat15;
  let x_1074 : vec4<f32> = u_xlat4;
  let x_1077 : vec4<f32> = u_xlat8;
  u_xlat15 = ((x_1073 * vec3<f32>(x_1074.x, x_1074.y, x_1074.z)) + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : f32 = u_xlat37;
  let x_1082 : f32 = x_145.unity_LightData.z;
  u_xlat37 = (x_1080 * x_1082);
  let x_1084 : vec3<f32> = u_xlat14;
  let x_1086 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat40 = dot(x_1084, vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1089, 0.0f, 1.0f);
  let x_1091 : f32 = u_xlat37;
  let x_1092 : f32 = u_xlat40;
  u_xlat37 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat37;
  let x_1096 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1094, x_1094, x_1094) * x_1096);
  let x_1098 : vec3<f32> = u_xlat1;
  let x_1100 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1102 : vec3<f32> = (x_1098 + vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat8;
  let x_1107 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : f32 = u_xlat37;
  u_xlat37 = max(x_1110, 1.17549435e-37f);
  let x_1113 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1113);
  let x_1115 : f32 = u_xlat37;
  let x_1117 : vec4<f32> = u_xlat8;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec3<f32> = u_xlat14;
  let x_1123 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(x_1122, vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1126, 0.0f, 1.0f);
  let x_1129 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1131 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_1129.x, x_1129.y, x_1129.z), vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1134, 0.0f, 1.0f);
  let x_1136 : f32 = u_xlat37;
  let x_1137 : f32 = u_xlat37;
  u_xlat37 = (x_1136 * x_1137);
  let x_1139 : f32 = u_xlat37;
  let x_1141 : f32 = u_xlat9.x;
  u_xlat37 = ((x_1139 * x_1141) + 1.000010014f);
  let x_1145 : f32 = u_xlat40;
  let x_1146 : f32 = u_xlat40;
  u_xlat40 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat37;
  let x_1149 : f32 = u_xlat37;
  u_xlat37 = (x_1148 * x_1149);
  let x_1151 : f32 = u_xlat40;
  u_xlat40 = max(x_1151, 0.100000001f);
  let x_1154 : f32 = u_xlat37;
  let x_1155 : f32 = u_xlat40;
  u_xlat37 = (x_1154 * x_1155);
  let x_1157 : f32 = u_xlat41;
  let x_1158 : f32 = u_xlat37;
  u_xlat37 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat29;
  let x_1161 : f32 = u_xlat37;
  u_xlat37 = (x_1160 / x_1161);
  let x_1163 : f32 = u_xlat37;
  let x_1167 : vec4<f32> = u_xlat4;
  let x_1169 : vec3<f32> = ((vec3<f32>(x_1163, x_1163, x_1163) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : vec3<f32> = u_xlat7;
  let x_1173 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1172 * vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1178 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1180 : f32 = x_145.unity_LightData.y;
  u_xlat37 = min(x_1178, x_1180);
  let x_1183 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_1183));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1195 : u32 = u_xlatu_loop_1;
    let x_1196 : u32 = u_xlatu37;
    if ((x_1195 < x_1196)) {
    } else {
      break;
    }
    let x_1199 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1199 >> 2u);
    let x_1202 : u32 = u_xlatu_loop_1;
    u_xlati17 = bitcast<i32>((x_1202 & 3u));
    let x_1205 : u32 = u_xlatu5;
    let x_1208 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1205)];
    let x_1218 : i32 = u_xlati17;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1223 : vec4<u32> = indexable[x_1218];
    u_xlat5.x = dot(x_1208, bitcast<vec4<f32>>(x_1223));
    let x_1229 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1229);
    let x_1232 : vec3<f32> = vs_INTERP0;
    let x_1244 : i32 = u_xlati5;
    let x_1246 : vec4<f32> = x_1243.x_AdditionalLightsPosition[x_1244];
    let x_1249 : i32 = u_xlati5;
    let x_1251 : vec4<f32> = x_1243.x_AdditionalLightsPosition[x_1249];
    u_xlat21 = ((-(x_1232) * vec3<f32>(x_1246.w, x_1246.w, x_1246.w)) + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
    let x_1254 : vec3<f32> = u_xlat21;
    let x_1255 : vec3<f32> = u_xlat21;
    u_xlat17.x = dot(x_1254, x_1255);
    let x_1259 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1259, 6.10351562e-05f);
    let x_1264 : f32 = u_xlat17.x;
    u_xlat30 = inverseSqrt(x_1264);
    let x_1267 : f32 = u_xlat30;
    let x_1269 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1267, x_1267, x_1267) * x_1269);
    let x_1272 : f32 = u_xlat17.x;
    u_xlat42 = (1.0f / x_1272);
    let x_1275 : f32 = u_xlat17.x;
    let x_1276 : i32 = u_xlati5;
    let x_1278 : f32 = x_1243.x_AdditionalLightsAttenuation[x_1276].x;
    u_xlat17.x = (x_1275 * x_1278);
    let x_1282 : f32 = u_xlat17.x;
    let x_1285 : f32 = u_xlat17.x;
    u_xlat17.x = ((-(x_1282) * x_1285) + 1.0f);
    let x_1290 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1290, 0.0f);
    let x_1294 : f32 = u_xlat17.x;
    let x_1296 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1294 * x_1296);
    let x_1300 : f32 = u_xlat17.x;
    let x_1301 : f32 = u_xlat42;
    u_xlat17.x = (x_1300 * x_1301);
    let x_1304 : i32 = u_xlati5;
    let x_1306 : vec4<f32> = x_1243.x_AdditionalLightsSpotDir[x_1304];
    let x_1308 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), x_1308);
    let x_1310 : f32 = u_xlat42;
    let x_1311 : i32 = u_xlati5;
    let x_1313 : f32 = x_1243.x_AdditionalLightsAttenuation[x_1311].z;
    let x_1315 : i32 = u_xlati5;
    let x_1317 : f32 = x_1243.x_AdditionalLightsAttenuation[x_1315].w;
    u_xlat42 = ((x_1310 * x_1313) + x_1317);
    let x_1319 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1319, 0.0f, 1.0f);
    let x_1321 : f32 = u_xlat42;
    let x_1322 : f32 = u_xlat42;
    u_xlat42 = (x_1321 * x_1322);
    let x_1325 : f32 = u_xlat17.x;
    let x_1326 : f32 = u_xlat42;
    u_xlat17.x = (x_1325 * x_1326);
    let x_1330 : f32 = u_xlat18;
    let x_1332 : i32 = u_xlati5;
    let x_1334 : vec4<f32> = x_1243.x_AdditionalLightsColor[x_1332];
    u_xlat11 = (vec3<f32>(x_1330, x_1330, x_1330) * vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
    let x_1337 : vec3<f32> = u_xlat14;
    let x_1338 : vec3<f32> = u_xlat10;
    u_xlat5.x = dot(x_1337, x_1338);
    let x_1342 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1342, 0.0f, 1.0f);
    let x_1346 : f32 = u_xlat5.x;
    let x_1348 : f32 = u_xlat17.x;
    u_xlat5.x = (x_1346 * x_1348);
    let x_1351 : vec4<f32> = u_xlat5;
    let x_1353 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * x_1353);
    let x_1355 : vec3<f32> = u_xlat21;
    let x_1356 : f32 = u_xlat30;
    let x_1359 : vec3<f32> = u_xlat1;
    u_xlat21 = ((x_1355 * vec3<f32>(x_1356, x_1356, x_1356)) + x_1359);
    let x_1361 : vec3<f32> = u_xlat21;
    let x_1362 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1361, x_1362);
    let x_1366 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1366, 1.17549435e-37f);
    let x_1370 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1370);
    let x_1373 : vec4<f32> = u_xlat5;
    let x_1375 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1373.x, x_1373.x, x_1373.x) * x_1375);
    let x_1377 : vec3<f32> = u_xlat14;
    let x_1378 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1377, x_1378);
    let x_1382 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1382, 0.0f, 1.0f);
    let x_1385 : vec3<f32> = u_xlat10;
    let x_1386 : vec3<f32> = u_xlat21;
    u_xlat5.y = dot(x_1385, x_1386);
    let x_1390 : f32 = u_xlat5.y;
    u_xlat5.y = clamp(x_1390, 0.0f, 1.0f);
    let x_1393 : vec4<f32> = u_xlat5;
    let x_1395 : vec4<f32> = u_xlat5;
    let x_1397 : vec2<f32> = (vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(x_1395.x, x_1395.y));
    let x_1398 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
    let x_1401 : f32 = u_xlat5.x;
    let x_1403 : f32 = u_xlat9.x;
    u_xlat5.x = ((x_1401 * x_1403) + 1.000010014f);
    let x_1408 : f32 = u_xlat5.x;
    let x_1410 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1408 * x_1410);
    let x_1414 : f32 = u_xlat5.y;
    u_xlat17.x = max(x_1414, 0.100000001f);
    let x_1418 : f32 = u_xlat17.x;
    let x_1420 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1418 * x_1420);
    let x_1423 : f32 = u_xlat41;
    let x_1425 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1423 * x_1425);
    let x_1428 : f32 = u_xlat29;
    let x_1430 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1428 / x_1430);
    let x_1433 : vec4<f32> = u_xlat5;
    let x_1436 : vec4<f32> = u_xlat4;
    u_xlat21 = ((vec3<f32>(x_1433.x, x_1433.x, x_1433.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec3<f32> = u_xlat21;
    let x_1440 : vec3<f32> = u_xlat11;
    let x_1442 : vec4<f32> = u_xlat8;
    let x_1444 : vec3<f32> = ((x_1439 * x_1440) + vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
    let x_1445 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);

    continuing {
      let x_1447 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1447 + bitcast<u32>(1i));
    }
  }
  let x_1449 : vec3<f32> = u_xlat15;
  let x_1450 : vec4<f32> = u_xlat6;
  let x_1453 : vec3<f32> = u_xlat7;
  u_xlat1 = ((x_1449 * vec3<f32>(x_1450.x, x_1450.x, x_1450.x)) + x_1453);
  let x_1455 : vec4<f32> = u_xlat8;
  let x_1457 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1455.x, x_1455.y, x_1455.z) + x_1457);
  let x_1459 : vec4<f32> = vs_INTERP4;
  let x_1461 : vec3<f32> = u_xlat0;
  let x_1463 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1459.w, x_1459.w, x_1459.w) * x_1461) + x_1463);
  let x_1466 : f32 = u_xlat3.x;
  let x_1468 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1466 * -(x_1468));
  let x_1473 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1473);
  let x_1476 : vec3<f32> = u_xlat0;
  let x_1479 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1476 + -(vec3<f32>(x_1479.x, x_1479.y, x_1479.z)));
  let x_1485 : vec3<f32> = u_xlat1;
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1490 : vec4<f32> = x_90.unity_FogColor;
  let x_1492 : vec3<f32> = ((vec3<f32>(x_1485.x, x_1485.x, x_1485.x) * x_1487) + vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
  let x_1493 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
  let x_1495 : bool = u_xlatb2;
  let x_1496 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1496, x_1495);
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

