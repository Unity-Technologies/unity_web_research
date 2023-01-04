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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_89 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_153 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_269 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_357 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1240 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var u_xlat0 : f32;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat5 : vec3<f32>;
  var x_179 : f32;
  var x_192 : f32;
  var x_204 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var x_461 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlatu13 : vec3<u32>;
  var u_xlatu35 : u32;
  var u_xlatu3 : u32;
  var u_xlati35 : i32;
  var u_xlati24 : i32;
  var u_xlatu24 : u32;
  var u_xlati13 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat24 : f32;
  var x_595 : f32;
  var x_620 : f32;
  var x_665 : f32;
  var u_xlat36 : f32;
  var u_xlat15 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat26 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu0 : u32;
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
  u_xlat0 = dot(x_65, x_66);
  let x_68 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_68);
  let x_70 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_70);
  let x_79 : f32 = vs_INTERP2.w;
  u_xlatb11.x = (0.0f < x_79);
  let x_93 : f32 = x_89.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_93 >= 0.0f);
  let x_100 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_100);
  let x_105 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_105);
  let x_109 : f32 = u_xlat11.y;
  let x_111 : f32 = u_xlat11.x;
  u_xlat11.x = (x_109 * x_111);
  let x_115 : vec3<f32> = vs_INTERP1;
  let x_117 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  let x_125 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.x, x_122.y)) + -(x_125));
  let x_128 : vec3<f32> = u_xlat11;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : f32 = u_xlat0;
  let x_134 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : f32 = u_xlat0;
  let x_139 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = u_xlat11;
  let x_144 : f32 = u_xlat0;
  let x_146 : vec3<f32> = (x_143 * vec3<f32>(x_144, x_144, x_144));
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_156 : f32 = x_153.unity_OrthoParams.w;
  u_xlatb0 = (x_156 == 0.0f);
  let x_160 : vec3<f32> = vs_INTERP0;
  let x_165 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_160) + x_165);
  let x_168 : vec3<f32> = u_xlat4;
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat34 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat34;
  let x_175 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_178 : bool = u_xlatb0;
  if (x_178) {
    let x_183 : f32 = u_xlat4.x;
    x_179 = x_183;
  } else {
    let x_188 : f32 = x_153.unity_MatrixV[0i].z;
    x_179 = x_188;
  }
  let x_189 : f32 = x_179;
  u_xlat5.x = x_189;
  let x_191 : bool = u_xlatb0;
  if (x_191) {
    let x_196 : f32 = u_xlat4.y;
    x_192 = x_196;
  } else {
    let x_200 : f32 = x_153.unity_MatrixV[1i].z;
    x_192 = x_200;
  }
  let x_201 : f32 = x_192;
  u_xlat5.y = x_201;
  let x_203 : bool = u_xlatb0;
  if (x_203) {
    let x_208 : f32 = u_xlat4.z;
    x_204 = x_208;
  } else {
    let x_212 : f32 = x_153.unity_MatrixV[2i].z;
    x_204 = x_212;
  }
  let x_213 : f32 = x_204;
  u_xlat5.z = x_213;
  let x_215 : vec3<f32> = u_xlat5;
  let x_219 : vec4<f32> = x_89.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_223 : vec4<f32> = x_89.unity_WorldToObject[0i];
  let x_225 : vec3<f32> = u_xlat5;
  let x_228 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + x_228);
  let x_231 : vec4<f32> = x_89.unity_WorldToObject[2i];
  let x_233 : vec3<f32> = u_xlat5;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.z, x_233.z, x_233.z)) + x_236);
  let x_238 : vec3<f32> = u_xlat4;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat0 = dot(x_238, x_239);
  let x_241 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_241);
  let x_243 : f32 = u_xlat0;
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_243, x_243, x_243) * x_245);
  let x_259 : vec4<f32> = vs_INTERP3;
  let x_262 : f32 = x_153.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_259.x, x_259.y), x_262);
  u_xlat6 = x_263;
  let x_265 : vec4<f32> = u_xlat6;
  let x_271 : vec4<f32> = x_269.Color_C30C7CA3;
  u_xlat7 = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_280 : vec4<f32> = vs_INTERP3;
  let x_283 : f32 = x_153.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_280.x, x_280.y), x_283);
  u_xlat8 = vec4<f32>(x_284.w, x_284.x, x_284.y, x_284.z);
  let x_287 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_287.y, x_287.z, x_287.w, x_287.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_294 : vec4<f32> = u_xlat9;
  let x_295 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_294, x_295);
  let x_297 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_297);
  let x_300 : f32 = u_xlat0;
  let x_302 : vec4<f32> = u_xlat9;
  u_xlat19 = (vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_307 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_307 * 200.0f);
  let x_310 : f32 = u_xlat0;
  u_xlat0 = min(x_310, 1.0f);
  let x_312 : f32 = u_xlat0;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = (vec3<f32>(x_312, x_312, x_312) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = u_xlat19;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.y, x_321.y, x_321.y));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec3<f32> = u_xlat19;
  let x_328 : vec3<f32> = u_xlat2;
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_326.x, x_326.x, x_326.x) * x_328) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec3<f32> = u_xlat19;
  let x_335 : vec3<f32> = u_xlat1;
  let x_337 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_333.z, x_333.z, x_333.z) * x_335) + x_337);
  let x_339 : vec3<f32> = u_xlat1;
  let x_340 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_339, x_340);
  let x_342 : f32 = u_xlat0;
  u_xlat0 = max(x_342, 1.17549435e-37f);
  let x_345 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_345);
  let x_347 : f32 = u_xlat0;
  let x_349 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_347, x_347, x_347) * x_349);
  let x_351 : vec3<f32> = vs_INTERP0;
  let x_359 : vec4<f32> = x_357.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_351.y, x_351.y, x_351.y) * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec4<f32> = x_357.x_MainLightWorldToShadow[0i][0i];
  let x_365 : vec3<f32> = vs_INTERP0;
  let x_368 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.x, x_365.x)) + x_368);
  let x_371 : vec4<f32> = x_357.x_MainLightWorldToShadow[0i][2i];
  let x_373 : vec3<f32> = vs_INTERP0;
  let x_376 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(x_373.z, x_373.z, x_373.z)) + x_376);
  let x_378 : vec3<f32> = u_xlat2;
  let x_380 : vec4<f32> = x_357.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_378 + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_384 : vec3<f32> = u_xlat2;
  let x_385 : vec2<f32> = vec2<f32>(x_384.x, x_384.y);
  let x_387 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_385.x, x_385.y, x_387);
  let x_399 : vec3<f32> = txVec0;
  let x_401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_399.xy, x_399.z);
  u_xlat0 = x_401;
  let x_404 : f32 = x_357.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_404) + 1.0f);
  let x_407 : f32 = u_xlat0;
  let x_409 : f32 = x_357.x_MainLightShadowParams.x;
  let x_411 : f32 = u_xlat34;
  u_xlat0 = ((x_407 * x_409) + x_411);
  let x_415 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_415);
  let x_419 : f32 = u_xlat2.z;
  u_xlatb13 = (x_419 >= 1.0f);
  let x_421 : bool = u_xlatb13;
  let x_422 : bool = u_xlatb2;
  u_xlatb2 = (x_421 | x_422);
  let x_424 : bool = u_xlatb2;
  let x_425 : f32 = u_xlat0;
  u_xlat0 = select(x_425, 1.0f, x_424);
  let x_427 : vec3<f32> = u_xlat1;
  let x_429 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat1.x = dot(x_427, -(vec3<f32>(x_429.x, x_429.y, x_429.z)));
  let x_435 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_435, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat0;
  let x_442 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec3<f32> = u_xlat1;
  let x_447 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_445.x, x_445.x, x_445.x) * x_447);
  let x_449 : vec3<f32> = u_xlat1;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_449 * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_454 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_454 < 0.0f);
  let x_457 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_457 + 1.0f);
  let x_460 : bool = u_xlatb0;
  if (x_460) {
    let x_465 : f32 = u_xlat2.x;
    x_461 = x_465;
  } else {
    let x_468 : f32 = x_89.unity_LODFade.x;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat0 = x_469;
  let x_471 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_471);
  let x_474 : vec3<f32> = u_xlat4;
  let x_478 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat13 = (abs(x_474) * vec3<f32>(x_478.x, x_478.y, x_478.x));
  let x_484 : vec3<f32> = u_xlat13;
  u_xlatu13 = vec3<u32>(x_484);
  let x_488 : u32 = u_xlatu13.z;
  u_xlatu35 = (x_488 * 1025u);
  let x_492 : u32 = u_xlatu35;
  u_xlatu3 = (x_492 >> 6u);
  let x_496 : u32 = u_xlatu35;
  let x_497 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_496 ^ x_497));
  let x_500 : i32 = u_xlati35;
  u_xlatu35 = (bitcast<u32>(x_500) * 9u);
  let x_504 : u32 = u_xlatu35;
  u_xlatu3 = (x_504 >> 11u);
  let x_507 : u32 = u_xlatu35;
  let x_508 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_507 ^ x_508));
  let x_511 : i32 = u_xlati35;
  u_xlati35 = (x_511 * 32769i);
  let x_515 : i32 = u_xlati35;
  let x_518 : u32 = u_xlatu13.y;
  u_xlati24 = bitcast<i32>((bitcast<u32>(x_515) ^ x_518));
  let x_522 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_522) * 1025u);
  let x_525 : u32 = u_xlatu24;
  u_xlatu35 = (x_525 >> 6u);
  let x_527 : u32 = u_xlatu35;
  let x_528 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_527 ^ x_528));
  let x_531 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_531) * 9u);
  let x_534 : u32 = u_xlatu24;
  u_xlatu35 = (x_534 >> 11u);
  let x_536 : u32 = u_xlatu35;
  let x_537 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_536 ^ x_537));
  let x_540 : i32 = u_xlati24;
  u_xlati24 = (x_540 * 32769i);
  let x_543 : i32 = u_xlati24;
  let x_546 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_543) ^ x_546));
  let x_549 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_549) * 1025u);
  let x_554 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_554 >> 6u);
  let x_556 : u32 = u_xlatu24;
  let x_558 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_556 ^ x_558));
  let x_561 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_561) * 9u);
  let x_566 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_566 >> 11u);
  let x_568 : u32 = u_xlatu24;
  let x_570 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_568 ^ x_570));
  let x_573 : i32 = u_xlati13;
  u_xlati13 = (x_573 * 32769i);
  param = 1065353216i;
  let x_579 : i32 = u_xlati13;
  param_1 = x_579;
  param_2 = 0i;
  param_3 = 23i;
  let x_582 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat13.x = bitcast<f32>(x_582);
  let x_586 : f32 = u_xlat13.x;
  u_xlat13.x = (x_586 + -1.0f);
  let x_591 : f32 = u_xlat13.x;
  u_xlat24 = (-(x_591) + 1.0f);
  let x_594 : bool = u_xlatb2;
  if (x_594) {
    let x_599 : f32 = u_xlat13.x;
    x_595 = x_599;
  } else {
    let x_601 : f32 = u_xlat24;
    x_595 = x_601;
  }
  let x_602 : f32 = x_595;
  u_xlat2.x = x_602;
  let x_604 : f32 = u_xlat0;
  let x_607 : f32 = u_xlat2.x;
  u_xlat0 = ((x_604 * 2.0f) + -(x_607));
  let x_610 : f32 = u_xlat0;
  let x_612 : f32 = u_xlat6.w;
  u_xlat2.x = (x_610 * x_612);
  let x_616 : f32 = u_xlat2.x;
  u_xlatb13 = (x_616 >= 0.400000006f);
  let x_619 : bool = u_xlatb13;
  if (x_619) {
    let x_624 : f32 = u_xlat2.x;
    x_620 = x_624;
  } else {
    x_620 = 0.0f;
  }
  let x_626 : f32 = x_620;
  u_xlat13.x = x_626;
  let x_629 : f32 = u_xlat6.w;
  let x_630 : f32 = u_xlat0;
  u_xlat0 = ((x_629 * x_630) + -0.400000006f);
  let x_635 : f32 = u_xlat2.x;
  u_xlat24 = dpdxCoarse(x_635);
  let x_638 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_638);
  let x_642 : f32 = u_xlat2.x;
  let x_644 : f32 = u_xlat24;
  u_xlat2.x = (abs(x_642) + abs(x_644));
  let x_649 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_649, 0.0001f);
  let x_653 : f32 = u_xlat0;
  let x_655 : f32 = u_xlat2.x;
  u_xlat0 = (x_653 / x_655);
  let x_657 : f32 = u_xlat0;
  u_xlat0 = (x_657 + 0.5f);
  let x_659 : f32 = u_xlat0;
  u_xlat0 = clamp(x_659, 0.0f, 1.0f);
  let x_662 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_662 == 0.0f));
  let x_664 : bool = u_xlatb2;
  if (x_664) {
    let x_668 : f32 = u_xlat0;
    x_665 = x_668;
  } else {
    let x_671 : f32 = u_xlat13.x;
    x_665 = x_671;
  }
  let x_672 : f32 = x_665;
  u_xlat0 = x_672;
  let x_673 : f32 = u_xlat0;
  u_xlat13.x = (x_673 + -0.0001f);
  let x_678 : f32 = u_xlat13.x;
  u_xlatb13 = (x_678 < 0.0f);
  let x_680 : bool = u_xlatb13;
  if (((select(0i, 1i, x_680) * -1i) != 0i)) {
    discard;
  }
  let x_688 : vec3<f32> = u_xlat11;
  let x_689 : vec3<f32> = u_xlat19;
  u_xlat11 = (x_688 * vec3<f32>(x_689.y, x_689.y, x_689.y));
  let x_692 : vec3<f32> = u_xlat19;
  let x_694 : vec4<f32> = vs_INTERP2;
  let x_697 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_692.x, x_692.x, x_692.x) * vec3<f32>(x_694.x, x_694.y, x_694.z)) + x_697);
  let x_699 : vec3<f32> = u_xlat19;
  let x_701 : vec3<f32> = vs_INTERP1;
  let x_703 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_699.z, x_699.z, x_699.z) * x_701) + x_703);
  let x_705 : vec3<f32> = u_xlat11;
  let x_706 : vec3<f32> = u_xlat11;
  u_xlat13.x = dot(x_705, x_706);
  let x_710 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_710);
  let x_713 : vec3<f32> = u_xlat11;
  let x_714 : vec3<f32> = u_xlat13;
  let x_716 : vec3<f32> = (x_713 * vec3<f32>(x_714.x, x_714.x, x_714.x));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  u_xlat3.w = 1.0f;
  let x_722 : vec4<f32> = x_89.unity_SHAr;
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_722, x_723);
  let x_728 : vec4<f32> = x_89.unity_SHAg;
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_728, x_729);
  let x_734 : vec4<f32> = x_89.unity_SHAb;
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_734, x_735);
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_738.y, x_738.z, x_738.z, x_738.x) * vec4<f32>(x_740.x, x_740.y, x_740.z, x_740.z));
  let x_745 : vec4<f32> = x_89.unity_SHBr;
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_745, x_746);
  let x_751 : vec4<f32> = x_89.unity_SHBg;
  let x_752 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_751, x_752);
  let x_756 : vec4<f32> = x_89.unity_SHBb;
  let x_757 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_756, x_757);
  let x_761 : f32 = u_xlat3.y;
  let x_763 : f32 = u_xlat3.y;
  u_xlat11.x = (x_761 * x_763);
  let x_767 : f32 = u_xlat3.x;
  let x_769 : f32 = u_xlat3.x;
  let x_772 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_767 * x_769) + -(x_772));
  let x_778 : vec4<f32> = x_89.unity_SHC;
  let x_780 : vec3<f32> = u_xlat11;
  let x_783 : vec4<f32> = u_xlat9;
  u_xlat11 = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_780.x, x_780.x, x_780.x)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec3<f32> = u_xlat11;
  let x_787 : vec3<f32> = u_xlat4;
  u_xlat11 = (x_786 + x_787);
  let x_789 : vec3<f32> = u_xlat11;
  u_xlat11 = max(x_789, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_794 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_795 : vec2<f32> = vec2<f32>(x_794.x, x_794.y);
  let x_799 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_795.x, x_795.y));
  let x_800 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_799.x, x_799.y, x_800.z);
  let x_802 : vec3<f32> = u_xlat13;
  let x_804 : vec4<f32> = hlslcc_FragCoord;
  let x_806 : vec2<f32> = (vec2<f32>(x_802.x, x_802.y) * vec2<f32>(x_804.x, x_804.y));
  let x_807 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_806.x, x_806.y, x_807.z);
  let x_810 : f32 = u_xlat4.y;
  let x_813 : f32 = x_153.x_ScaleBiasRt.x;
  let x_816 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat13.x = ((x_810 * x_813) + x_816);
  let x_820 : f32 = u_xlat13.x;
  u_xlat4.z = (-(x_820) + 1.0f);
  let x_825 : f32 = u_xlat8.x;
  u_xlat8.x = x_825;
  let x_828 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_828, 0.0f, 1.0f);
  let x_831 : f32 = u_xlat0;
  u_xlat0 = x_831;
  let x_832 : f32 = u_xlat0;
  u_xlat0 = clamp(x_832, 0.0f, 1.0f);
  let x_834 : vec3<f32> = u_xlat7;
  u_xlat13 = (x_834 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_840 : f32 = u_xlat8.x;
  u_xlat36 = (-(x_840) + 1.0f);
  let x_844 : f32 = u_xlat36;
  let x_845 : f32 = u_xlat36;
  u_xlat15 = (x_844 * x_845);
  let x_847 : f32 = u_xlat15;
  u_xlat15 = max(x_847, 0.0078125f);
  let x_851 : f32 = u_xlat15;
  let x_852 : f32 = u_xlat15;
  u_xlat37 = (x_851 * x_852);
  let x_856 : f32 = u_xlat8.x;
  u_xlat38 = (x_856 + 0.040000021f);
  let x_859 : f32 = u_xlat38;
  u_xlat38 = min(x_859, 1.0f);
  let x_861 : f32 = u_xlat15;
  u_xlat6.x = ((x_861 * 4.0f) + 2.0f);
  let x_871 : vec3<f32> = u_xlat4;
  let x_874 : f32 = x_153.x_GlobalMipBias.x;
  let x_875 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_871.x, x_871.z), x_874);
  u_xlat4.x = x_875.x;
  let x_880 : f32 = u_xlat4.x;
  u_xlat26 = (x_880 + -1.0f);
  let x_884 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_885 : f32 = u_xlat26;
  u_xlat26 = ((x_884 * x_885) + 1.0f);
  let x_889 : f32 = u_xlat4.x;
  let x_891 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_889, x_891);
  let x_896 : vec4<f32> = vs_INTERP9;
  let x_897 : vec2<f32> = vec2<f32>(x_896.x, x_896.y);
  let x_899 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_897.x, x_897.y, x_899);
  let x_907 : vec3<f32> = txVec1;
  let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_907.xy, x_907.z);
  u_xlat17.x = x_909;
  let x_912 : f32 = u_xlat17.x;
  let x_914 : f32 = x_357.x_MainLightShadowParams.x;
  let x_916 : f32 = u_xlat34;
  u_xlat34 = ((x_912 * x_914) + x_916);
  let x_920 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_920);
  let x_924 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_924 >= 1.0f);
  let x_926 : bool = u_xlatb28;
  let x_927 : bool = u_xlatb17;
  u_xlatb17 = (x_926 | x_927);
  let x_929 : bool = u_xlatb17;
  let x_930 : f32 = u_xlat34;
  u_xlat34 = select(x_930, 1.0f, x_929);
  let x_932 : vec3<f32> = vs_INTERP0;
  let x_934 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat17 = (x_932 + -(x_934));
  let x_937 : vec3<f32> = u_xlat17;
  let x_938 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_937, x_938);
  let x_942 : f32 = u_xlat17.x;
  let x_944 : f32 = x_357.x_MainLightShadowParams.z;
  let x_947 : f32 = x_357.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_942 * x_944) + x_947);
  let x_951 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_951, 0.0f, 1.0f);
  let x_955 : f32 = u_xlat34;
  u_xlat28 = (-(x_955) + 1.0f);
  let x_959 : f32 = u_xlat17.x;
  let x_960 : f32 = u_xlat28;
  let x_962 : f32 = u_xlat34;
  u_xlat34 = ((x_959 * x_960) + x_962);
  let x_964 : f32 = u_xlat26;
  let x_967 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_964, x_964, x_964) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec3<f32> = u_xlat5;
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_970), vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_977 : f32 = u_xlat7.x;
  let x_979 : f32 = u_xlat7.x;
  u_xlat7.x = (x_977 + x_979);
  let x_982 : vec4<f32> = u_xlat3;
  let x_984 : vec3<f32> = u_xlat7;
  let x_988 : vec3<f32> = u_xlat5;
  u_xlat7 = ((vec3<f32>(x_982.x, x_982.y, x_982.z) * -(vec3<f32>(x_984.x, x_984.x, x_984.x))) + -(x_988));
  let x_992 : vec4<f32> = u_xlat3;
  let x_994 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_992.x, x_992.y, x_992.z), x_994);
  let x_996 : f32 = u_xlat40;
  u_xlat40 = clamp(x_996, 0.0f, 1.0f);
  let x_998 : f32 = u_xlat40;
  u_xlat40 = (-(x_998) + 1.0f);
  let x_1001 : f32 = u_xlat40;
  let x_1002 : f32 = u_xlat40;
  u_xlat40 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat40;
  let x_1005 : f32 = u_xlat40;
  u_xlat40 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat36;
  u_xlat8.x = ((-(x_1007) * 0.699999988f) + 1.700000048f);
  let x_1014 : f32 = u_xlat36;
  let x_1016 : f32 = u_xlat8.x;
  u_xlat36 = (x_1014 * x_1016);
  let x_1018 : f32 = u_xlat36;
  u_xlat36 = (x_1018 * 6.0f);
  let x_1029 : vec3<f32> = u_xlat7;
  let x_1030 : f32 = u_xlat36;
  let x_1031 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1029, x_1030);
  u_xlat8 = x_1031;
  let x_1033 : f32 = u_xlat8.w;
  u_xlat36 = (x_1033 + -1.0f);
  let x_1036 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1037 : f32 = u_xlat36;
  u_xlat36 = ((x_1036 * x_1037) + 1.0f);
  let x_1040 : f32 = u_xlat36;
  u_xlat36 = max(x_1040, 0.0f);
  let x_1042 : f32 = u_xlat36;
  u_xlat36 = log2(x_1042);
  let x_1044 : f32 = u_xlat36;
  let x_1046 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_1044 * x_1046);
  let x_1048 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1048);
  let x_1050 : f32 = u_xlat36;
  let x_1052 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_1050 * x_1052);
  let x_1054 : vec4<f32> = u_xlat8;
  let x_1056 : f32 = u_xlat36;
  u_xlat7 = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(x_1056, x_1056, x_1056));
  let x_1059 : f32 = u_xlat15;
  let x_1061 : f32 = u_xlat15;
  let x_1065 : vec2<f32> = ((vec2<f32>(x_1059, x_1059) * vec2<f32>(x_1061, x_1061)) + vec2<f32>(-1.0f, 1.0f));
  let x_1066 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
  let x_1069 : f32 = u_xlat8.y;
  u_xlat36 = (1.0f / x_1069);
  let x_1071 : f32 = u_xlat38;
  u_xlat15 = (x_1071 + -0.039999999f);
  let x_1074 : f32 = u_xlat40;
  let x_1075 : f32 = u_xlat15;
  u_xlat15 = ((x_1074 * x_1075) + 0.039999999f);
  let x_1079 : f32 = u_xlat36;
  let x_1080 : f32 = u_xlat15;
  u_xlat36 = (x_1079 * x_1080);
  let x_1082 : f32 = u_xlat36;
  let x_1084 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1082, x_1082, x_1082) * x_1084);
  let x_1086 : vec3<f32> = u_xlat11;
  let x_1087 : vec3<f32> = u_xlat13;
  let x_1089 : vec3<f32> = u_xlat7;
  u_xlat11 = ((x_1086 * x_1087) + x_1089);
  let x_1091 : f32 = u_xlat34;
  let x_1093 : f32 = x_89.unity_LightData.z;
  u_xlat34 = (x_1091 * x_1093);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1098 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_1095.x, x_1095.y, x_1095.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1101, 0.0f, 1.0f);
  let x_1103 : f32 = u_xlat34;
  let x_1104 : f32 = u_xlat36;
  u_xlat34 = (x_1103 * x_1104);
  let x_1106 : f32 = u_xlat34;
  let x_1108 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1106, x_1106, x_1106) * x_1108);
  let x_1110 : vec3<f32> = u_xlat5;
  let x_1112 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat7 = (x_1110 + vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : vec3<f32> = u_xlat7;
  let x_1116 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1115, x_1116);
  let x_1118 : f32 = u_xlat34;
  u_xlat34 = max(x_1118, 1.17549435e-37f);
  let x_1120 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1120);
  let x_1122 : f32 = u_xlat34;
  let x_1124 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1122, x_1122, x_1122) * x_1124);
  let x_1126 : vec4<f32> = u_xlat3;
  let x_1128 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), x_1128);
  let x_1130 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1130, 0.0f, 1.0f);
  let x_1133 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1135 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), x_1135);
  let x_1137 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1137, 0.0f, 1.0f);
  let x_1139 : f32 = u_xlat34;
  let x_1140 : f32 = u_xlat34;
  u_xlat34 = (x_1139 * x_1140);
  let x_1142 : f32 = u_xlat34;
  let x_1144 : f32 = u_xlat8.x;
  u_xlat34 = ((x_1142 * x_1144) + 1.000010014f);
  let x_1148 : f32 = u_xlat36;
  let x_1149 : f32 = u_xlat36;
  u_xlat36 = (x_1148 * x_1149);
  let x_1151 : f32 = u_xlat34;
  let x_1152 : f32 = u_xlat34;
  u_xlat34 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat36;
  u_xlat36 = max(x_1154, 0.100000001f);
  let x_1157 : f32 = u_xlat34;
  let x_1158 : f32 = u_xlat36;
  u_xlat34 = (x_1157 * x_1158);
  let x_1161 : f32 = u_xlat6.x;
  let x_1162 : f32 = u_xlat34;
  u_xlat34 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat37;
  let x_1165 : f32 = u_xlat34;
  u_xlat34 = (x_1164 / x_1165);
  let x_1167 : f32 = u_xlat34;
  let x_1171 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_1167, x_1167, x_1167) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1171);
  let x_1173 : vec3<f32> = u_xlat17;
  let x_1174 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1173 * x_1174);
  let x_1178 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1180 : f32 = x_89.unity_LightData.y;
  u_xlat34 = min(x_1178, x_1180);
  let x_1183 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1183));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1195 : u32 = u_xlatu_loop_1;
    let x_1196 : u32 = u_xlatu34;
    if ((x_1195 < x_1196)) {
    } else {
      break;
    }
    let x_1199 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_1199 >> 2u);
    let x_1202 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1202 & 3u));
    let x_1205 : u32 = u_xlatu15;
    let x_1208 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1205)];
    let x_1218 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1223 : vec4<u32> = indexable[x_1218];
    u_xlat15 = dot(x_1208, bitcast<vec4<f32>>(x_1223));
    let x_1227 : f32 = u_xlat15;
    u_xlati15 = i32(x_1227);
    let x_1229 : vec3<f32> = vs_INTERP0;
    let x_1241 : i32 = u_xlati15;
    let x_1243 : vec4<f32> = x_1240.x_AdditionalLightsPosition[x_1241];
    let x_1246 : i32 = u_xlati15;
    let x_1248 : vec4<f32> = x_1240.x_AdditionalLightsPosition[x_1246];
    u_xlat19 = ((-(x_1229) * vec3<f32>(x_1243.w, x_1243.w, x_1243.w)) + vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
    let x_1251 : vec3<f32> = u_xlat19;
    let x_1252 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1251, x_1252);
    let x_1254 : f32 = u_xlat38;
    u_xlat38 = max(x_1254, 6.10351562e-05f);
    let x_1257 : f32 = u_xlat38;
    u_xlat40 = inverseSqrt(x_1257);
    let x_1259 : f32 = u_xlat40;
    let x_1261 : vec3<f32> = u_xlat19;
    let x_1262 : vec3<f32> = (vec3<f32>(x_1259, x_1259, x_1259) * x_1261);
    let x_1263 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
    let x_1266 : f32 = u_xlat38;
    u_xlat42 = (1.0f / x_1266);
    let x_1268 : f32 = u_xlat38;
    let x_1269 : i32 = u_xlati15;
    let x_1271 : f32 = x_1240.x_AdditionalLightsAttenuation[x_1269].x;
    u_xlat38 = (x_1268 * x_1271);
    let x_1273 : f32 = u_xlat38;
    let x_1275 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1273) * x_1275) + 1.0f);
    let x_1278 : f32 = u_xlat38;
    u_xlat38 = max(x_1278, 0.0f);
    let x_1280 : f32 = u_xlat38;
    let x_1281 : f32 = u_xlat38;
    u_xlat38 = (x_1280 * x_1281);
    let x_1283 : f32 = u_xlat38;
    let x_1284 : f32 = u_xlat42;
    u_xlat38 = (x_1283 * x_1284);
    let x_1286 : i32 = u_xlati15;
    let x_1288 : vec4<f32> = x_1240.x_AdditionalLightsSpotDir[x_1286];
    let x_1290 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
    let x_1293 : f32 = u_xlat42;
    let x_1294 : i32 = u_xlati15;
    let x_1296 : f32 = x_1240.x_AdditionalLightsAttenuation[x_1294].z;
    let x_1298 : i32 = u_xlati15;
    let x_1300 : f32 = x_1240.x_AdditionalLightsAttenuation[x_1298].w;
    u_xlat42 = ((x_1293 * x_1296) + x_1300);
    let x_1302 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1302, 0.0f, 1.0f);
    let x_1304 : f32 = u_xlat42;
    let x_1305 : f32 = u_xlat42;
    u_xlat42 = (x_1304 * x_1305);
    let x_1307 : f32 = u_xlat38;
    let x_1308 : f32 = u_xlat42;
    u_xlat38 = (x_1307 * x_1308);
    let x_1311 : f32 = u_xlat26;
    let x_1313 : i32 = u_xlati15;
    let x_1315 : vec4<f32> = x_1240.x_AdditionalLightsColor[x_1313];
    u_xlat10 = (vec3<f32>(x_1311, x_1311, x_1311) * vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
    let x_1318 : vec4<f32> = u_xlat3;
    let x_1320 : vec4<f32> = u_xlat9;
    u_xlat15 = dot(vec3<f32>(x_1318.x, x_1318.y, x_1318.z), vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
    let x_1323 : f32 = u_xlat15;
    u_xlat15 = clamp(x_1323, 0.0f, 1.0f);
    let x_1325 : f32 = u_xlat15;
    let x_1326 : f32 = u_xlat38;
    u_xlat15 = (x_1325 * x_1326);
    let x_1328 : f32 = u_xlat15;
    let x_1330 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1328, x_1328, x_1328) * x_1330);
    let x_1332 : vec3<f32> = u_xlat19;
    let x_1333 : f32 = u_xlat40;
    let x_1336 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_1332 * vec3<f32>(x_1333, x_1333, x_1333)) + x_1336);
    let x_1338 : vec3<f32> = u_xlat19;
    let x_1339 : vec3<f32> = u_xlat19;
    u_xlat15 = dot(x_1338, x_1339);
    let x_1341 : f32 = u_xlat15;
    u_xlat15 = max(x_1341, 1.17549435e-37f);
    let x_1343 : f32 = u_xlat15;
    u_xlat15 = inverseSqrt(x_1343);
    let x_1345 : f32 = u_xlat15;
    let x_1347 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1345, x_1345, x_1345) * x_1347);
    let x_1349 : vec4<f32> = u_xlat3;
    let x_1351 : vec3<f32> = u_xlat19;
    u_xlat15 = dot(vec3<f32>(x_1349.x, x_1349.y, x_1349.z), x_1351);
    let x_1353 : f32 = u_xlat15;
    u_xlat15 = clamp(x_1353, 0.0f, 1.0f);
    let x_1355 : vec4<f32> = u_xlat9;
    let x_1357 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(vec3<f32>(x_1355.x, x_1355.y, x_1355.z), x_1357);
    let x_1359 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1359, 0.0f, 1.0f);
    let x_1361 : f32 = u_xlat15;
    let x_1362 : f32 = u_xlat15;
    u_xlat15 = (x_1361 * x_1362);
    let x_1364 : f32 = u_xlat15;
    let x_1366 : f32 = u_xlat8.x;
    u_xlat15 = ((x_1364 * x_1366) + 1.000010014f);
    let x_1369 : f32 = u_xlat38;
    let x_1370 : f32 = u_xlat38;
    u_xlat38 = (x_1369 * x_1370);
    let x_1372 : f32 = u_xlat15;
    let x_1373 : f32 = u_xlat15;
    u_xlat15 = (x_1372 * x_1373);
    let x_1375 : f32 = u_xlat38;
    u_xlat38 = max(x_1375, 0.100000001f);
    let x_1377 : f32 = u_xlat15;
    let x_1378 : f32 = u_xlat38;
    u_xlat15 = (x_1377 * x_1378);
    let x_1381 : f32 = u_xlat6.x;
    let x_1382 : f32 = u_xlat15;
    u_xlat15 = (x_1381 * x_1382);
    let x_1384 : f32 = u_xlat37;
    let x_1385 : f32 = u_xlat15;
    u_xlat15 = (x_1384 / x_1385);
    let x_1387 : f32 = u_xlat15;
    let x_1390 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1387, x_1387, x_1387) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1390);
    let x_1392 : vec3<f32> = u_xlat19;
    let x_1393 : vec3<f32> = u_xlat10;
    let x_1395 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1392 * x_1393) + x_1395);

    continuing {
      let x_1397 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1397 + bitcast<u32>(1i));
    }
  }
  let x_1399 : vec3<f32> = u_xlat11;
  let x_1400 : vec3<f32> = u_xlat4;
  let x_1403 : vec3<f32> = u_xlat17;
  u_xlat11 = ((x_1399 * vec3<f32>(x_1400.x, x_1400.x, x_1400.x)) + x_1403);
  let x_1405 : vec3<f32> = u_xlat7;
  let x_1406 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1405 + x_1406);
  let x_1410 : vec4<f32> = vs_INTERP4;
  let x_1412 : vec3<f32> = u_xlat1;
  let x_1414 : vec3<f32> = u_xlat11;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1410.w, x_1410.w, x_1410.w) * x_1412) + x_1414);
  let x_1416 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : bool = u_xlatb2;
  let x_1419 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1419, x_1418);
  let x_1427 : u32 = x_153.x_RenderingLayerMaxInt;
  let x_1429 : f32 = x_89.unity_RenderingLayer.x;
  u_xlatu0 = (x_1427 & bitcast<u32>(x_1429));
  let x_1432 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1432);
  let x_1435 : f32 = u_xlat0;
  let x_1437 : f32 = x_153.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1435 * x_1437);
  let x_1441 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1441, 0.0f, 1.0f);
  let x_1444 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1444.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

