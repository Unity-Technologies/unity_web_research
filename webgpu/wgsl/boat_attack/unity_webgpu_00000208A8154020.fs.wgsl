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
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_269 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_357 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1229 : AdditionalLights;

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
  var x_594 : f32;
  var x_619 : f32;
  var x_664 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat25 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
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
  let x_477 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat13 = (abs(x_474) * vec3<f32>(x_477.x, x_477.y, x_477.x));
  let x_483 : vec3<f32> = u_xlat13;
  u_xlatu13 = vec3<u32>(x_483);
  let x_487 : u32 = u_xlatu13.z;
  u_xlatu35 = (x_487 * 1025u);
  let x_491 : u32 = u_xlatu35;
  u_xlatu3 = (x_491 >> 6u);
  let x_495 : u32 = u_xlatu35;
  let x_496 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_495 ^ x_496));
  let x_499 : i32 = u_xlati35;
  u_xlatu35 = (bitcast<u32>(x_499) * 9u);
  let x_503 : u32 = u_xlatu35;
  u_xlatu3 = (x_503 >> 11u);
  let x_506 : u32 = u_xlatu35;
  let x_507 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_506 ^ x_507));
  let x_510 : i32 = u_xlati35;
  u_xlati35 = (x_510 * 32769i);
  let x_514 : i32 = u_xlati35;
  let x_517 : u32 = u_xlatu13.y;
  u_xlati24 = bitcast<i32>((bitcast<u32>(x_514) ^ x_517));
  let x_521 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_521) * 1025u);
  let x_524 : u32 = u_xlatu24;
  u_xlatu35 = (x_524 >> 6u);
  let x_526 : u32 = u_xlatu35;
  let x_527 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_526 ^ x_527));
  let x_530 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_530) * 9u);
  let x_533 : u32 = u_xlatu24;
  u_xlatu35 = (x_533 >> 11u);
  let x_535 : u32 = u_xlatu35;
  let x_536 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_535 ^ x_536));
  let x_539 : i32 = u_xlati24;
  u_xlati24 = (x_539 * 32769i);
  let x_542 : i32 = u_xlati24;
  let x_545 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_542) ^ x_545));
  let x_548 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_548) * 1025u);
  let x_553 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_553 >> 6u);
  let x_555 : u32 = u_xlatu24;
  let x_557 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_555 ^ x_557));
  let x_560 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_560) * 9u);
  let x_565 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_565 >> 11u);
  let x_567 : u32 = u_xlatu24;
  let x_569 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_567 ^ x_569));
  let x_572 : i32 = u_xlati13;
  u_xlati13 = (x_572 * 32769i);
  param = 1065353216i;
  let x_578 : i32 = u_xlati13;
  param_1 = x_578;
  param_2 = 0i;
  param_3 = 23i;
  let x_581 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat13.x = bitcast<f32>(x_581);
  let x_585 : f32 = u_xlat13.x;
  u_xlat13.x = (x_585 + -1.0f);
  let x_590 : f32 = u_xlat13.x;
  u_xlat24 = (-(x_590) + 1.0f);
  let x_593 : bool = u_xlatb2;
  if (x_593) {
    let x_598 : f32 = u_xlat13.x;
    x_594 = x_598;
  } else {
    let x_600 : f32 = u_xlat24;
    x_594 = x_600;
  }
  let x_601 : f32 = x_594;
  u_xlat2.x = x_601;
  let x_603 : f32 = u_xlat0;
  let x_606 : f32 = u_xlat2.x;
  u_xlat0 = ((x_603 * 2.0f) + -(x_606));
  let x_609 : f32 = u_xlat0;
  let x_611 : f32 = u_xlat6.w;
  u_xlat2.x = (x_609 * x_611);
  let x_615 : f32 = u_xlat2.x;
  u_xlatb13 = (x_615 >= 0.400000006f);
  let x_618 : bool = u_xlatb13;
  if (x_618) {
    let x_623 : f32 = u_xlat2.x;
    x_619 = x_623;
  } else {
    x_619 = 0.0f;
  }
  let x_625 : f32 = x_619;
  u_xlat13.x = x_625;
  let x_628 : f32 = u_xlat6.w;
  let x_629 : f32 = u_xlat0;
  u_xlat0 = ((x_628 * x_629) + -0.400000006f);
  let x_634 : f32 = u_xlat2.x;
  u_xlat24 = dpdxCoarse(x_634);
  let x_637 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_637);
  let x_641 : f32 = u_xlat2.x;
  let x_643 : f32 = u_xlat24;
  u_xlat2.x = (abs(x_641) + abs(x_643));
  let x_648 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_648, 0.0001f);
  let x_652 : f32 = u_xlat0;
  let x_654 : f32 = u_xlat2.x;
  u_xlat0 = (x_652 / x_654);
  let x_656 : f32 = u_xlat0;
  u_xlat0 = (x_656 + 0.5f);
  let x_658 : f32 = u_xlat0;
  u_xlat0 = clamp(x_658, 0.0f, 1.0f);
  let x_661 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_661 == 0.0f));
  let x_663 : bool = u_xlatb2;
  if (x_663) {
    let x_667 : f32 = u_xlat0;
    x_664 = x_667;
  } else {
    let x_670 : f32 = u_xlat13.x;
    x_664 = x_670;
  }
  let x_671 : f32 = x_664;
  u_xlat0 = x_671;
  let x_672 : f32 = u_xlat0;
  u_xlat13.x = (x_672 + -0.0001f);
  let x_677 : f32 = u_xlat13.x;
  u_xlatb13 = (x_677 < 0.0f);
  let x_679 : bool = u_xlatb13;
  if (((select(0i, 1i, x_679) * -1i) != 0i)) {
    discard;
  }
  let x_687 : vec3<f32> = u_xlat11;
  let x_688 : vec3<f32> = u_xlat19;
  u_xlat11 = (x_687 * vec3<f32>(x_688.y, x_688.y, x_688.y));
  let x_691 : vec3<f32> = u_xlat19;
  let x_693 : vec4<f32> = vs_INTERP2;
  let x_696 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_691.x, x_691.x, x_691.x) * vec3<f32>(x_693.x, x_693.y, x_693.z)) + x_696);
  let x_698 : vec3<f32> = u_xlat19;
  let x_700 : vec3<f32> = vs_INTERP1;
  let x_702 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_698.z, x_698.z, x_698.z) * x_700) + x_702);
  let x_704 : vec3<f32> = u_xlat11;
  let x_705 : vec3<f32> = u_xlat11;
  u_xlat13.x = dot(x_704, x_705);
  let x_709 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_709);
  let x_712 : vec3<f32> = u_xlat11;
  let x_713 : vec3<f32> = u_xlat13;
  u_xlat11 = (x_712 * vec3<f32>(x_713.x, x_713.x, x_713.x));
  let x_723 : vec2<f32> = vs_INTERP5;
  let x_725 : f32 = x_153.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_723, x_725);
  u_xlat3 = x_726;
  let x_731 : vec2<f32> = vs_INTERP5;
  let x_733 : f32 = x_153.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  u_xlat13 = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec3<f32> = u_xlat11;
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_743, vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_749 : f32 = u_xlat3.x;
  u_xlat3.x = (x_749 + 0.5f);
  let x_752 : vec3<f32> = u_xlat13;
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat13 = (x_752 * vec3<f32>(x_753.x, x_753.x, x_753.x));
  let x_757 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_757, 0.0001f);
  let x_760 : vec3<f32> = u_xlat13;
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat13 = (x_760 / vec3<f32>(x_761.x, x_761.x, x_761.x));
  let x_766 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
  let x_771 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_767.x, x_767.y));
  let x_772 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat3;
  let x_776 : vec4<f32> = hlslcc_FragCoord;
  let x_778 : vec2<f32> = (vec2<f32>(x_774.x, x_774.y) * vec2<f32>(x_776.x, x_776.y));
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
  let x_783 : f32 = u_xlat3.y;
  let x_786 : f32 = x_153.x_ScaleBiasRt.x;
  let x_789 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_783 * x_786) + x_789);
  let x_793 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_793) + 1.0f);
  let x_798 : f32 = u_xlat8.x;
  u_xlat8.x = x_798;
  let x_801 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_801, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat0;
  u_xlat0 = x_804;
  let x_805 : f32 = u_xlat0;
  u_xlat0 = clamp(x_805, 0.0f, 1.0f);
  let x_807 : vec3<f32> = u_xlat7;
  u_xlat4 = (x_807 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_812 : f32 = u_xlat8.x;
  u_xlat14.x = (-(x_812) + 1.0f);
  let x_818 : f32 = u_xlat14.x;
  let x_820 : f32 = u_xlat14.x;
  u_xlat36 = (x_818 * x_820);
  let x_822 : f32 = u_xlat36;
  u_xlat36 = max(x_822, 0.0078125f);
  let x_826 : f32 = u_xlat36;
  let x_827 : f32 = u_xlat36;
  u_xlat37 = (x_826 * x_827);
  let x_831 : f32 = u_xlat8.x;
  u_xlat38 = (x_831 + 0.040000021f);
  let x_834 : f32 = u_xlat38;
  u_xlat38 = min(x_834, 1.0f);
  let x_836 : f32 = u_xlat36;
  u_xlat6.x = ((x_836 * 4.0f) + 2.0f);
  let x_846 : vec4<f32> = u_xlat3;
  let x_849 : f32 = x_153.x_GlobalMipBias.x;
  let x_850 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_846.x, x_846.z), x_849);
  u_xlat3.x = x_850.x;
  let x_855 : f32 = u_xlat3.x;
  u_xlat25 = (x_855 + -1.0f);
  let x_859 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_860 : f32 = u_xlat25;
  u_xlat25 = ((x_859 * x_860) + 1.0f);
  let x_864 : f32 = u_xlat3.x;
  let x_866 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_864, x_866);
  let x_871 : vec4<f32> = vs_INTERP9;
  let x_872 : vec2<f32> = vec2<f32>(x_871.x, x_871.y);
  let x_874 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_872.x, x_872.y, x_874);
  let x_882 : vec3<f32> = txVec1;
  let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_882.xy, x_882.z);
  u_xlat17.x = x_884;
  let x_887 : f32 = u_xlat17.x;
  let x_889 : f32 = x_357.x_MainLightShadowParams.x;
  let x_891 : f32 = u_xlat34;
  u_xlat34 = ((x_887 * x_889) + x_891);
  let x_895 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_895);
  let x_899 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_899 >= 1.0f);
  let x_901 : bool = u_xlatb28;
  let x_902 : bool = u_xlatb17;
  u_xlatb17 = (x_901 | x_902);
  let x_904 : bool = u_xlatb17;
  let x_905 : f32 = u_xlat34;
  u_xlat34 = select(x_905, 1.0f, x_904);
  let x_907 : vec3<f32> = vs_INTERP0;
  let x_909 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat17 = (x_907 + -(x_909));
  let x_912 : vec3<f32> = u_xlat17;
  let x_913 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_912, x_913);
  let x_917 : f32 = u_xlat17.x;
  let x_919 : f32 = x_357.x_MainLightShadowParams.z;
  let x_922 : f32 = x_357.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_917 * x_919) + x_922);
  let x_926 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_926, 0.0f, 1.0f);
  let x_930 : f32 = u_xlat34;
  u_xlat28 = (-(x_930) + 1.0f);
  let x_934 : f32 = u_xlat17.x;
  let x_935 : f32 = u_xlat28;
  let x_937 : f32 = u_xlat34;
  u_xlat34 = ((x_934 * x_935) + x_937);
  let x_939 : f32 = u_xlat25;
  let x_942 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_939, x_939, x_939) * vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec3<f32> = u_xlat5;
  let x_947 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(x_945), x_947);
  let x_951 : f32 = u_xlat7.x;
  let x_953 : f32 = u_xlat7.x;
  u_xlat7.x = (x_951 + x_953);
  let x_956 : vec3<f32> = u_xlat11;
  let x_957 : vec3<f32> = u_xlat7;
  let x_961 : vec3<f32> = u_xlat5;
  u_xlat7 = ((x_956 * -(vec3<f32>(x_957.x, x_957.x, x_957.x))) + -(x_961));
  let x_965 : vec3<f32> = u_xlat11;
  let x_966 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_965, x_966);
  let x_968 : f32 = u_xlat40;
  u_xlat40 = clamp(x_968, 0.0f, 1.0f);
  let x_970 : f32 = u_xlat40;
  u_xlat40 = (-(x_970) + 1.0f);
  let x_973 : f32 = u_xlat40;
  let x_974 : f32 = u_xlat40;
  u_xlat40 = (x_973 * x_974);
  let x_976 : f32 = u_xlat40;
  let x_977 : f32 = u_xlat40;
  u_xlat40 = (x_976 * x_977);
  let x_980 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_980) * 0.699999988f) + 1.700000048f);
  let x_988 : f32 = u_xlat14.x;
  let x_990 : f32 = u_xlat8.x;
  u_xlat14.x = (x_988 * x_990);
  let x_994 : f32 = u_xlat14.x;
  u_xlat14.x = (x_994 * 6.0f);
  let x_1006 : vec3<f32> = u_xlat7;
  let x_1008 : f32 = u_xlat14.x;
  let x_1009 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1006, x_1008);
  u_xlat8 = x_1009;
  let x_1011 : f32 = u_xlat8.w;
  u_xlat14.x = (x_1011 + -1.0f);
  let x_1015 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1017 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_1015 * x_1017) + 1.0f);
  let x_1022 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1022, 0.0f);
  let x_1026 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_1026);
  let x_1030 : f32 = u_xlat14.x;
  let x_1032 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_1030 * x_1032);
  let x_1036 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1036);
  let x_1040 : f32 = u_xlat14.x;
  let x_1042 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_1040 * x_1042);
  let x_1045 : vec4<f32> = u_xlat8;
  let x_1047 : vec3<f32> = u_xlat14;
  u_xlat7 = (vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * vec3<f32>(x_1047.x, x_1047.x, x_1047.x));
  let x_1050 : f32 = u_xlat36;
  let x_1052 : f32 = u_xlat36;
  let x_1056 : vec2<f32> = ((vec2<f32>(x_1050, x_1050) * vec2<f32>(x_1052, x_1052)) + vec2<f32>(-1.0f, 1.0f));
  let x_1057 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1056.x, x_1057.y, x_1056.y);
  let x_1060 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_1060);
  let x_1062 : f32 = u_xlat38;
  u_xlat38 = (x_1062 + -0.039999999f);
  let x_1065 : f32 = u_xlat40;
  let x_1066 : f32 = u_xlat38;
  u_xlat38 = ((x_1065 * x_1066) + 0.039999999f);
  let x_1070 : f32 = u_xlat36;
  let x_1071 : f32 = u_xlat38;
  u_xlat36 = (x_1070 * x_1071);
  let x_1073 : f32 = u_xlat36;
  let x_1075 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1073, x_1073, x_1073) * x_1075);
  let x_1077 : vec3<f32> = u_xlat13;
  let x_1078 : vec3<f32> = u_xlat4;
  let x_1080 : vec3<f32> = u_xlat7;
  u_xlat13 = ((x_1077 * x_1078) + x_1080);
  let x_1082 : f32 = u_xlat34;
  let x_1084 : f32 = x_89.unity_LightData.z;
  u_xlat34 = (x_1082 * x_1084);
  let x_1086 : vec3<f32> = u_xlat11;
  let x_1088 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat36 = dot(x_1086, vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1091, 0.0f, 1.0f);
  let x_1093 : f32 = u_xlat34;
  let x_1094 : f32 = u_xlat36;
  u_xlat34 = (x_1093 * x_1094);
  let x_1096 : f32 = u_xlat34;
  let x_1098 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1096, x_1096, x_1096) * x_1098);
  let x_1100 : vec3<f32> = u_xlat5;
  let x_1102 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat7 = (x_1100 + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec3<f32> = u_xlat7;
  let x_1106 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1105, x_1106);
  let x_1108 : f32 = u_xlat34;
  u_xlat34 = max(x_1108, 1.17549435e-37f);
  let x_1110 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1110);
  let x_1112 : f32 = u_xlat34;
  let x_1114 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1112, x_1112, x_1112) * x_1114);
  let x_1116 : vec3<f32> = u_xlat11;
  let x_1117 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1116, x_1117);
  let x_1119 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1119, 0.0f, 1.0f);
  let x_1122 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1124 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), x_1124);
  let x_1126 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1126, 0.0f, 1.0f);
  let x_1128 : f32 = u_xlat34;
  let x_1129 : f32 = u_xlat34;
  u_xlat34 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat34;
  let x_1133 : f32 = u_xlat14.x;
  u_xlat34 = ((x_1131 * x_1133) + 1.000010014f);
  let x_1137 : f32 = u_xlat36;
  let x_1138 : f32 = u_xlat36;
  u_xlat36 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat34;
  let x_1141 : f32 = u_xlat34;
  u_xlat34 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat36;
  u_xlat36 = max(x_1143, 0.100000001f);
  let x_1146 : f32 = u_xlat34;
  let x_1147 : f32 = u_xlat36;
  u_xlat34 = (x_1146 * x_1147);
  let x_1150 : f32 = u_xlat6.x;
  let x_1151 : f32 = u_xlat34;
  u_xlat34 = (x_1150 * x_1151);
  let x_1153 : f32 = u_xlat37;
  let x_1154 : f32 = u_xlat34;
  u_xlat34 = (x_1153 / x_1154);
  let x_1156 : f32 = u_xlat34;
  let x_1160 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1160);
  let x_1162 : vec3<f32> = u_xlat17;
  let x_1163 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1162 * x_1163);
  let x_1167 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1169 : f32 = x_89.unity_LightData.y;
  u_xlat34 = min(x_1167, x_1169);
  let x_1172 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1172));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1184 : u32 = u_xlatu_loop_1;
    let x_1185 : u32 = u_xlatu34;
    if ((x_1184 < x_1185)) {
    } else {
      break;
    }
    let x_1188 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1188 >> 2u);
    let x_1191 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1191 & 3u));
    let x_1194 : u32 = u_xlatu38;
    let x_1197 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1194)];
    let x_1207 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1212 : vec4<u32> = indexable[x_1207];
    u_xlat38 = dot(x_1197, bitcast<vec4<f32>>(x_1212));
    let x_1216 : f32 = u_xlat38;
    u_xlati38 = i32(x_1216);
    let x_1218 : vec3<f32> = vs_INTERP0;
    let x_1230 : i32 = u_xlati38;
    let x_1232 : vec4<f32> = x_1229.x_AdditionalLightsPosition[x_1230];
    let x_1235 : i32 = u_xlati38;
    let x_1237 : vec4<f32> = x_1229.x_AdditionalLightsPosition[x_1235];
    let x_1239 : vec3<f32> = ((-(x_1218) * vec3<f32>(x_1232.w, x_1232.w, x_1232.w)) + vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
    let x_1240 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
    let x_1242 : vec4<f32> = u_xlat8;
    let x_1244 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1242.x, x_1242.y, x_1242.z), vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
    let x_1247 : f32 = u_xlat40;
    u_xlat40 = max(x_1247, 6.10351562e-05f);
    let x_1251 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1251);
    let x_1253 : f32 = u_xlat41;
    let x_1255 : vec4<f32> = u_xlat8;
    let x_1257 : vec3<f32> = (vec3<f32>(x_1253, x_1253, x_1253) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
    let x_1258 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
    let x_1261 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1261);
    let x_1263 : f32 = u_xlat40;
    let x_1264 : i32 = u_xlati38;
    let x_1266 : f32 = x_1229.x_AdditionalLightsAttenuation[x_1264].x;
    u_xlat40 = (x_1263 * x_1266);
    let x_1268 : f32 = u_xlat40;
    let x_1270 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1268) * x_1270) + 1.0f);
    let x_1273 : f32 = u_xlat40;
    u_xlat40 = max(x_1273, 0.0f);
    let x_1275 : f32 = u_xlat40;
    let x_1276 : f32 = u_xlat40;
    u_xlat40 = (x_1275 * x_1276);
    let x_1278 : f32 = u_xlat40;
    let x_1279 : f32 = u_xlat42;
    u_xlat40 = (x_1278 * x_1279);
    let x_1281 : i32 = u_xlati38;
    let x_1283 : vec4<f32> = x_1229.x_AdditionalLightsSpotDir[x_1281];
    let x_1285 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1283.x, x_1283.y, x_1283.z), vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
    let x_1288 : f32 = u_xlat42;
    let x_1289 : i32 = u_xlati38;
    let x_1291 : f32 = x_1229.x_AdditionalLightsAttenuation[x_1289].z;
    let x_1293 : i32 = u_xlati38;
    let x_1295 : f32 = x_1229.x_AdditionalLightsAttenuation[x_1293].w;
    u_xlat42 = ((x_1288 * x_1291) + x_1295);
    let x_1297 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1297, 0.0f, 1.0f);
    let x_1299 : f32 = u_xlat42;
    let x_1300 : f32 = u_xlat42;
    u_xlat42 = (x_1299 * x_1300);
    let x_1302 : f32 = u_xlat40;
    let x_1303 : f32 = u_xlat42;
    u_xlat40 = (x_1302 * x_1303);
    let x_1306 : f32 = u_xlat25;
    let x_1308 : i32 = u_xlati38;
    let x_1310 : vec4<f32> = x_1229.x_AdditionalLightsColor[x_1308];
    u_xlat10 = (vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
    let x_1313 : vec3<f32> = u_xlat11;
    let x_1314 : vec4<f32> = u_xlat9;
    u_xlat38 = dot(x_1313, vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
    let x_1317 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1317, 0.0f, 1.0f);
    let x_1319 : f32 = u_xlat38;
    let x_1320 : f32 = u_xlat40;
    u_xlat38 = (x_1319 * x_1320);
    let x_1322 : f32 = u_xlat38;
    let x_1324 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1322, x_1322, x_1322) * x_1324);
    let x_1326 : vec4<f32> = u_xlat8;
    let x_1328 : f32 = u_xlat41;
    let x_1331 : vec3<f32> = u_xlat5;
    let x_1332 : vec3<f32> = ((vec3<f32>(x_1326.x, x_1326.y, x_1326.z) * vec3<f32>(x_1328, x_1328, x_1328)) + x_1331);
    let x_1333 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
    let x_1335 : vec4<f32> = u_xlat8;
    let x_1337 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1335.x, x_1335.y, x_1335.z), vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
    let x_1340 : f32 = u_xlat38;
    u_xlat38 = max(x_1340, 1.17549435e-37f);
    let x_1342 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1342);
    let x_1344 : f32 = u_xlat38;
    let x_1346 : vec4<f32> = u_xlat8;
    let x_1348 : vec3<f32> = (vec3<f32>(x_1344, x_1344, x_1344) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
    let x_1349 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
    let x_1351 : vec3<f32> = u_xlat11;
    let x_1352 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1351, vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
    let x_1355 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1355, 0.0f, 1.0f);
    let x_1357 : vec4<f32> = u_xlat9;
    let x_1359 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1357.x, x_1357.y, x_1357.z), vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
    let x_1362 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1362, 0.0f, 1.0f);
    let x_1364 : f32 = u_xlat38;
    let x_1365 : f32 = u_xlat38;
    u_xlat38 = (x_1364 * x_1365);
    let x_1367 : f32 = u_xlat38;
    let x_1369 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1367 * x_1369) + 1.000010014f);
    let x_1372 : f32 = u_xlat40;
    let x_1373 : f32 = u_xlat40;
    u_xlat40 = (x_1372 * x_1373);
    let x_1375 : f32 = u_xlat38;
    let x_1376 : f32 = u_xlat38;
    u_xlat38 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat40;
    u_xlat40 = max(x_1378, 0.100000001f);
    let x_1380 : f32 = u_xlat38;
    let x_1381 : f32 = u_xlat40;
    u_xlat38 = (x_1380 * x_1381);
    let x_1384 : f32 = u_xlat6.x;
    let x_1385 : f32 = u_xlat38;
    u_xlat38 = (x_1384 * x_1385);
    let x_1387 : f32 = u_xlat37;
    let x_1388 : f32 = u_xlat38;
    u_xlat38 = (x_1387 / x_1388);
    let x_1390 : f32 = u_xlat38;
    let x_1393 : vec3<f32> = u_xlat4;
    let x_1394 : vec3<f32> = ((vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1393);
    let x_1395 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
    let x_1397 : vec4<f32> = u_xlat8;
    let x_1399 : vec3<f32> = u_xlat10;
    let x_1401 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1397.x, x_1397.y, x_1397.z) * x_1399) + x_1401);

    continuing {
      let x_1403 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1403 + bitcast<u32>(1i));
    }
  }
  let x_1405 : vec3<f32> = u_xlat13;
  let x_1406 : vec4<f32> = u_xlat3;
  let x_1409 : vec3<f32> = u_xlat17;
  u_xlat11 = ((x_1405 * vec3<f32>(x_1406.x, x_1406.x, x_1406.x)) + x_1409);
  let x_1411 : vec3<f32> = u_xlat7;
  let x_1412 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1411 + x_1412);
  let x_1416 : vec4<f32> = vs_INTERP4;
  let x_1418 : vec3<f32> = u_xlat1;
  let x_1420 : vec3<f32> = u_xlat11;
  let x_1421 : vec3<f32> = ((vec3<f32>(x_1416.w, x_1416.w, x_1416.w) * x_1418) + x_1420);
  let x_1422 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
  let x_1424 : bool = u_xlatb2;
  let x_1425 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1425, x_1424);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

