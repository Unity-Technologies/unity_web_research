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
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_160 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_263 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_365 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1490 : AdditionalLights;

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
  var u_xlat0 : vec4<f32>;
  var u_xlatb12 : vec2<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat5 : vec3<f32>;
  var x_199 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb37 : bool;
  var x_594 : f32;
  var u_xlat13 : vec3<f32>;
  var x_636 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu14 : vec3<u32>;
  var u_xlatu38 : u32;
  var u_xlatu3 : u32;
  var u_xlati38 : i32;
  var u_xlati26 : i32;
  var u_xlatu26 : u32;
  var u_xlati14 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat26 : f32;
  var x_772 : f32;
  var u_xlatb14 : bool;
  var x_798 : f32;
  var x_845 : f32;
  var u_xlat24 : vec2<f32>;
  var u_xlat36 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat17 : f32;
  var u_xlat29 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_64 : vec3<f32> = vs_INTERP1;
  let x_65 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_64, x_65);
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_71);
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_75);
  let x_85 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_85);
  let x_98 : f32 = x_94.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_98 >= 0.0f);
  let x_105 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_105);
  let x_110 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat12.y;
  let x_116 : f32 = u_xlat12.x;
  u_xlat12.x = (x_114 * x_116);
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_120.z, x_120.x, x_120.y) * vec3<f32>(x_122.y, x_122.z, x_122.x));
  let x_125 : vec3<f32> = vs_INTERP1;
  let x_127 : vec4<f32> = vs_INTERP2;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.x, x_127.y)) + -(x_130));
  let x_133 : vec3<f32> = u_xlat12;
  let x_135 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_133.x, x_133.x, x_133.x) * x_135);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = vs_INTERP2;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat12;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = (x_150 * vec3<f32>(x_151.x, x_151.x, x_151.x));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_163 : f32 = x_160.unity_OrthoParams.w;
  u_xlatb0 = (x_163 == 0.0f);
  let x_167 : vec3<f32> = vs_INTERP0;
  let x_172 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_167) + x_172);
  let x_175 : vec3<f32> = u_xlat4;
  let x_176 : vec3<f32> = u_xlat4;
  u_xlat37 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat37;
  let x_182 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_188 : f32 = x_160.unity_MatrixV[0i].z;
  u_xlat5.x = x_188;
  let x_192 : f32 = x_160.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_196 : f32 = x_160.unity_MatrixV[2i].z;
  u_xlat5.z = x_196;
  let x_198 : bool = u_xlatb0;
  if (x_198) {
    let x_202 : vec3<f32> = u_xlat4;
    x_199 = x_202;
  } else {
    let x_204 : vec3<f32> = u_xlat5;
    x_199 = x_204;
  }
  let x_205 : vec3<f32> = x_199;
  u_xlat4 = x_205;
  let x_206 : vec3<f32> = u_xlat4;
  let x_210 : vec4<f32> = x_94.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_214 : vec4<f32> = x_94.unity_WorldToObject[0i];
  let x_216 : vec3<f32> = u_xlat4;
  let x_219 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + x_219);
  let x_222 : vec4<f32> = x_94.unity_WorldToObject[2i];
  let x_224 : vec3<f32> = u_xlat4;
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + x_227);
  let x_229 : vec3<f32> = u_xlat5;
  let x_230 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_229, x_230);
  let x_234 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_234);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_237.x, x_237.x, x_237.x) * x_239);
  let x_253 : vec4<f32> = vs_INTERP3;
  let x_256 : f32 = x_160.x_GlobalMipBias.x;
  let x_257 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_253.x, x_253.y), x_256);
  u_xlat6 = x_257;
  let x_259 : vec4<f32> = u_xlat6;
  let x_265 : vec4<f32> = x_263.Color_C30C7CA3;
  u_xlat7 = (vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_274 : vec4<f32> = vs_INTERP3;
  let x_277 : f32 = x_160.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_274.x, x_274.y), x_277);
  u_xlat8 = vec4<f32>(x_278.w, x_278.x, x_278.y, x_278.z);
  let x_281 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_281.y, x_281.z, x_281.w, x_281.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_288 : vec4<f32> = u_xlat9;
  let x_289 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_288, x_289);
  let x_293 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_293);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_304 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_304 * 200.0f);
  let x_309 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_309, 1.0f);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.x, x_312.x) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = u_xlat20;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.y, x_321.y, x_321.y));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec3<f32> = u_xlat20;
  let x_328 : vec4<f32> = u_xlat2;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.x, x_326.x) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec3<f32> = u_xlat20;
  let x_338 : vec3<f32> = u_xlat1;
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_336.z, x_336.z, x_336.z) * x_338) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec3<f32> = u_xlat1;
  let x_344 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_343, x_344);
  let x_348 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_348, 1.17549435e-37f);
  let x_353 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_353);
  let x_356 : vec4<f32> = u_xlat0;
  let x_358 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_356.x, x_356.x, x_356.x) * x_358);
  let x_360 : vec3<f32> = vs_INTERP0;
  let x_367 : vec4<f32> = x_365.x_CascadeShadowSplitSpheres0;
  let x_370 : vec3<f32> = (x_360 + -(vec3<f32>(x_367.x, x_367.y, x_367.z)));
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec3<f32> = vs_INTERP0;
  let x_375 : vec4<f32> = x_365.x_CascadeShadowSplitSpheres1;
  let x_378 : vec3<f32> = (x_373 + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec3<f32> = vs_INTERP0;
  let x_383 : vec4<f32> = x_365.x_CascadeShadowSplitSpheres2;
  let x_386 : vec3<f32> = (x_381 + -(vec3<f32>(x_383.x, x_383.y, x_383.z)));
  let x_387 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec3<f32> = vs_INTERP0;
  let x_393 : vec4<f32> = x_365.x_CascadeShadowSplitSpheres3;
  u_xlat10 = (x_390 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat2;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_403.x, x_403.y, x_403.z), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_409 : vec4<f32> = u_xlat9;
  let x_411 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_415 : vec3<f32> = u_xlat10;
  let x_416 : vec3<f32> = u_xlat10;
  u_xlat2.w = dot(x_415, x_416);
  let x_422 : vec4<f32> = u_xlat2;
  let x_425 : vec4<f32> = x_365.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_422 < x_425);
  let x_428 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_428);
  let x_432 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_432);
  let x_436 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_436);
  let x_440 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_440);
  let x_444 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_444);
  let x_449 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_449);
  let x_453 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_453);
  let x_456 : vec4<f32> = u_xlat2;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) + vec3<f32>(x_458.y, x_458.z, x_458.w));
  let x_461 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat2;
  let x_466 : vec3<f32> = max(vec3<f32>(x_463.x, x_463.y, x_463.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_467.x, x_466.x, x_466.y, x_466.z);
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_469, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_476 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_476) + 4.0f);
  let x_482 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_482);
  let x_485 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_485) << bitcast<u32>(2i));
  let x_488 : vec3<f32> = vs_INTERP0;
  let x_490 : i32 = u_xlati0;
  let x_493 : i32 = u_xlati0;
  let x_497 : vec4<f32> = x_365.x_MainLightWorldToShadow[((x_490 + 1i) / 4i)][((x_493 + 1i) % 4i)];
  let x_499 : vec3<f32> = (vec3<f32>(x_488.y, x_488.y, x_488.y) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : i32 = u_xlati0;
  let x_504 : i32 = u_xlati0;
  let x_507 : vec4<f32> = x_365.x_MainLightWorldToShadow[(x_502 / 4i)][(x_504 % 4i)];
  let x_509 : vec3<f32> = vs_INTERP0;
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(x_509.x, x_509.x, x_509.x)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : i32 = u_xlati0;
  let x_520 : i32 = u_xlati0;
  let x_524 : vec4<f32> = x_365.x_MainLightWorldToShadow[((x_517 + 2i) / 4i)][((x_520 + 2i) % 4i)];
  let x_526 : vec3<f32> = vs_INTERP0;
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec3<f32> = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_526.z, x_526.z, x_526.z)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : i32 = u_xlati0;
  let x_539 : i32 = u_xlati0;
  let x_543 : vec4<f32> = x_365.x_MainLightWorldToShadow[((x_536 + 3i) / 4i)][((x_539 + 3i) % 4i)];
  let x_545 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : vec4<f32> = u_xlat2;
  let x_550 : vec2<f32> = vec2<f32>(x_549.x, x_549.y);
  let x_552 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_550.x, x_550.y, x_552);
  let x_564 : vec3<f32> = txVec0;
  let x_566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_564.xy, x_564.z);
  u_xlat0.x = x_566;
  let x_570 : f32 = x_365.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_570) + 1.0f);
  let x_574 : f32 = u_xlat0.x;
  let x_576 : f32 = x_365.x_MainLightShadowParams.x;
  let x_578 : f32 = u_xlat37;
  u_xlat0.x = ((x_574 * x_576) + x_578);
  let x_583 : f32 = u_xlat2.z;
  u_xlatb37 = (0.0f >= x_583);
  let x_586 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_586 >= 1.0f);
  let x_589 : bool = u_xlatb37;
  let x_591 : bool = u_xlatb2.x;
  u_xlatb37 = (x_589 | x_591);
  let x_593 : bool = u_xlatb37;
  if (x_593) {
    x_594 = 1.0f;
  } else {
    let x_599 : f32 = u_xlat0.x;
    x_594 = x_599;
  }
  let x_600 : f32 = x_594;
  u_xlat0.x = x_600;
  let x_602 : vec3<f32> = u_xlat1;
  let x_604 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat1.x = dot(x_602, -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_610, 0.0f, 1.0f);
  let x_614 : vec4<f32> = u_xlat0;
  let x_617 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec3<f32> = u_xlat13;
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_624 : vec3<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_624 * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_629 : f32 = x_94.unity_LODFade.x;
  u_xlatb37 = (x_629 < 0.0f);
  let x_632 : f32 = x_94.unity_LODFade.x;
  u_xlat2.x = (x_632 + 1.0f);
  let x_635 : bool = u_xlatb37;
  if (x_635) {
    let x_640 : f32 = u_xlat2.x;
    x_636 = x_640;
  } else {
    let x_643 : f32 = x_94.unity_LODFade.x;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat37 = x_644;
  let x_646 : f32 = u_xlat37;
  u_xlatb2.x = (0.5f >= x_646);
  let x_650 : vec3<f32> = u_xlat5;
  let x_654 : vec4<f32> = x_160.x_ScreenParams;
  u_xlat14 = (abs(x_650) * vec3<f32>(x_654.x, x_654.y, x_654.x));
  let x_660 : vec3<f32> = u_xlat14;
  u_xlatu14 = vec3<u32>(x_660);
  let x_664 : u32 = u_xlatu14.z;
  u_xlatu38 = (x_664 * 1025u);
  let x_668 : u32 = u_xlatu38;
  u_xlatu3 = (x_668 >> 6u);
  let x_672 : u32 = u_xlatu38;
  let x_673 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_672 ^ x_673));
  let x_676 : i32 = u_xlati38;
  u_xlatu38 = (bitcast<u32>(x_676) * 9u);
  let x_680 : u32 = u_xlatu38;
  u_xlatu3 = (x_680 >> 11u);
  let x_683 : u32 = u_xlatu38;
  let x_684 : u32 = u_xlatu3;
  u_xlati38 = bitcast<i32>((x_683 ^ x_684));
  let x_687 : i32 = u_xlati38;
  u_xlati38 = (x_687 * 32769i);
  let x_691 : i32 = u_xlati38;
  let x_694 : u32 = u_xlatu14.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_691) ^ x_694));
  let x_698 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_698) * 1025u);
  let x_701 : u32 = u_xlatu26;
  u_xlatu38 = (x_701 >> 6u);
  let x_703 : u32 = u_xlatu38;
  let x_704 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_703 ^ x_704));
  let x_707 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_707) * 9u);
  let x_710 : u32 = u_xlatu26;
  u_xlatu38 = (x_710 >> 11u);
  let x_712 : u32 = u_xlatu38;
  let x_713 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_712 ^ x_713));
  let x_716 : i32 = u_xlati26;
  u_xlati26 = (x_716 * 32769i);
  let x_719 : i32 = u_xlati26;
  let x_722 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_719) ^ x_722));
  let x_725 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_725) * 1025u);
  let x_730 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_730 >> 6u);
  let x_732 : u32 = u_xlatu26;
  let x_734 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_732 ^ x_734));
  let x_737 : i32 = u_xlati14;
  u_xlatu14.x = (bitcast<u32>(x_737) * 9u);
  let x_742 : u32 = u_xlatu14.x;
  u_xlatu26 = (x_742 >> 11u);
  let x_744 : u32 = u_xlatu26;
  let x_746 : u32 = u_xlatu14.x;
  u_xlati14 = bitcast<i32>((x_744 ^ x_746));
  let x_749 : i32 = u_xlati14;
  u_xlati14 = (x_749 * 32769i);
  param = 1065353216i;
  let x_755 : i32 = u_xlati14;
  param_1 = x_755;
  param_2 = 0i;
  param_3 = 23i;
  let x_758 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat14.x = bitcast<f32>(x_758);
  let x_762 : f32 = u_xlat14.x;
  u_xlat14.x = (x_762 + -1.0f);
  let x_767 : f32 = u_xlat14.x;
  u_xlat26 = (-(x_767) + 1.0f);
  let x_771 : bool = u_xlatb2.x;
  if (x_771) {
    let x_776 : f32 = u_xlat14.x;
    x_772 = x_776;
  } else {
    let x_778 : f32 = u_xlat26;
    x_772 = x_778;
  }
  let x_779 : f32 = x_772;
  u_xlat2.x = x_779;
  let x_781 : f32 = u_xlat37;
  let x_784 : f32 = u_xlat2.x;
  u_xlat37 = ((x_781 * 2.0f) + -(x_784));
  let x_787 : f32 = u_xlat37;
  let x_789 : f32 = u_xlat6.w;
  u_xlat2.x = (x_787 * x_789);
  let x_794 : f32 = u_xlat2.x;
  u_xlatb14 = (x_794 >= 0.400000006f);
  let x_797 : bool = u_xlatb14;
  if (x_797) {
    let x_802 : f32 = u_xlat2.x;
    x_798 = x_802;
  } else {
    x_798 = 0.0f;
  }
  let x_804 : f32 = x_798;
  u_xlat14.x = x_804;
  let x_807 : f32 = u_xlat6.w;
  let x_808 : f32 = u_xlat37;
  u_xlat37 = ((x_807 * x_808) + -0.400000006f);
  let x_813 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_813);
  let x_816 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_816);
  let x_820 : f32 = u_xlat2.x;
  let x_822 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_820) + abs(x_822));
  let x_827 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_827, 0.0001f);
  let x_831 : f32 = u_xlat37;
  let x_833 : f32 = u_xlat2.x;
  u_xlat37 = (x_831 / x_833);
  let x_835 : f32 = u_xlat37;
  u_xlat37 = (x_835 + 0.5f);
  let x_837 : f32 = u_xlat37;
  u_xlat37 = clamp(x_837, 0.0f, 1.0f);
  let x_840 : f32 = x_160.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_840 == 0.0f));
  let x_844 : bool = u_xlatb2.x;
  if (x_844) {
    let x_848 : f32 = u_xlat37;
    x_845 = x_848;
  } else {
    let x_851 : f32 = u_xlat14.x;
    x_845 = x_851;
  }
  let x_852 : f32 = x_845;
  u_xlat37 = x_852;
  let x_853 : f32 = u_xlat37;
  u_xlat14.x = (x_853 + -0.0001f);
  let x_858 : f32 = u_xlat14.x;
  u_xlatb14 = (x_858 < 0.0f);
  let x_860 : bool = u_xlatb14;
  if (((select(0i, 1i, x_860) * -1i) != 0i)) {
    discard;
  }
  let x_868 : vec3<f32> = u_xlat12;
  let x_869 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_868 * vec3<f32>(x_869.y, x_869.y, x_869.y));
  let x_872 : vec3<f32> = u_xlat20;
  let x_874 : vec4<f32> = vs_INTERP2;
  let x_877 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + x_877);
  let x_879 : vec3<f32> = u_xlat20;
  let x_881 : vec3<f32> = vs_INTERP1;
  let x_883 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_879.z, x_879.z, x_879.z) * x_881) + x_883);
  let x_885 : vec3<f32> = u_xlat12;
  let x_886 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_885, x_886);
  let x_890 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_890);
  let x_893 : vec3<f32> = u_xlat12;
  let x_894 : vec3<f32> = u_xlat14;
  let x_896 : vec3<f32> = (x_893 * vec3<f32>(x_894.x, x_894.x, x_894.x));
  let x_897 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_900 : f32 = vs_INTERP0.y;
  let x_902 : f32 = x_160.unity_MatrixV[1i].z;
  u_xlat12.x = (x_900 * x_902);
  let x_906 : f32 = x_160.unity_MatrixV[0i].z;
  let x_908 : f32 = vs_INTERP0.x;
  let x_911 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_906 * x_908) + x_911);
  let x_915 : f32 = x_160.unity_MatrixV[2i].z;
  let x_917 : f32 = vs_INTERP0.z;
  let x_920 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_915 * x_917) + x_920);
  let x_924 : f32 = u_xlat12.x;
  let x_926 : f32 = x_160.unity_MatrixV[3i].z;
  u_xlat12.x = (x_924 + x_926);
  let x_930 : f32 = u_xlat12.x;
  let x_933 : f32 = x_160.x_ProjectionParams.y;
  u_xlat12.x = (-(x_930) + -(x_933));
  let x_938 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_938, 0.0f);
  let x_942 : f32 = u_xlat12.x;
  let x_945 : f32 = x_160.unity_FogParams.x;
  u_xlat12.x = (x_942 * x_945);
  u_xlat3.w = 1.0f;
  let x_951 : vec4<f32> = x_94.unity_SHAr;
  let x_952 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_951, x_952);
  let x_957 : vec4<f32> = x_94.unity_SHAg;
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_957, x_958);
  let x_963 : vec4<f32> = x_94.unity_SHAb;
  let x_964 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_963, x_964);
  let x_967 : vec4<f32> = u_xlat3;
  let x_969 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_967.y, x_967.z, x_967.z, x_967.x) * vec4<f32>(x_969.x, x_969.y, x_969.z, x_969.z));
  let x_974 : vec4<f32> = x_94.unity_SHBr;
  let x_975 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_974, x_975);
  let x_980 : vec4<f32> = x_94.unity_SHBg;
  let x_981 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_980, x_981);
  let x_985 : vec4<f32> = x_94.unity_SHBb;
  let x_986 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_985, x_986);
  let x_992 : f32 = u_xlat3.y;
  let x_994 : f32 = u_xlat3.y;
  u_xlat24.x = (x_992 * x_994);
  let x_998 : f32 = u_xlat3.x;
  let x_1000 : f32 = u_xlat3.x;
  let x_1003 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_998 * x_1000) + -(x_1003));
  let x_1009 : vec4<f32> = x_94.unity_SHC;
  let x_1011 : vec2<f32> = u_xlat24;
  let x_1014 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * vec3<f32>(x_1011.x, x_1011.x, x_1011.x)) + vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec3<f32> = u_xlat14;
  let x_1018 : vec3<f32> = u_xlat5;
  u_xlat14 = (x_1017 + x_1018);
  let x_1020 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_1020, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1024 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_1025 : vec2<f32> = vec2<f32>(x_1024.x, x_1024.y);
  u_xlat24 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1025.x, x_1025.y));
  let x_1030 : vec2<f32> = u_xlat24;
  let x_1031 : vec4<f32> = hlslcc_FragCoord;
  let x_1033 : vec2<f32> = (x_1030 * vec2<f32>(x_1031.x, x_1031.y));
  let x_1034 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_1033.x, x_1033.y, x_1034.z);
  let x_1037 : f32 = u_xlat5.y;
  let x_1040 : f32 = x_160.x_ScaleBiasRt.x;
  let x_1043 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat24.x = ((x_1037 * x_1040) + x_1043);
  let x_1047 : f32 = u_xlat24.x;
  u_xlat5.z = (-(x_1047) + 1.0f);
  let x_1052 : f32 = u_xlat8.x;
  u_xlat8.x = x_1052;
  let x_1055 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1055, 0.0f, 1.0f);
  let x_1058 : f32 = u_xlat37;
  u_xlat37 = x_1058;
  let x_1059 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1059, 0.0f, 1.0f);
  let x_1061 : vec3<f32> = u_xlat7;
  let x_1064 : vec3<f32> = (x_1061 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1065 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1068 : f32 = u_xlat8.x;
  u_xlat24.x = (-(x_1068) + 1.0f);
  let x_1074 : f32 = u_xlat24.x;
  let x_1076 : f32 = u_xlat24.x;
  u_xlat36 = (x_1074 * x_1076);
  let x_1078 : f32 = u_xlat36;
  u_xlat36 = max(x_1078, 0.0078125f);
  let x_1082 : f32 = u_xlat36;
  let x_1083 : f32 = u_xlat36;
  u_xlat39 = (x_1082 * x_1083);
  let x_1087 : f32 = u_xlat8.x;
  u_xlat40 = (x_1087 + 0.040000021f);
  let x_1090 : f32 = u_xlat40;
  u_xlat40 = min(x_1090, 1.0f);
  let x_1093 : f32 = u_xlat36;
  u_xlat17 = ((x_1093 * 4.0f) + 2.0f);
  let x_1101 : vec3<f32> = u_xlat5;
  let x_1104 : f32 = x_160.x_GlobalMipBias.x;
  let x_1105 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1101.x, x_1101.z), x_1104);
  u_xlat5.x = x_1105.x;
  let x_1110 : f32 = u_xlat5.x;
  u_xlat29 = (x_1110 + -1.0f);
  let x_1113 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1114 : f32 = u_xlat29;
  u_xlat29 = ((x_1113 * x_1114) + 1.0f);
  let x_1118 : f32 = u_xlat5.x;
  let x_1120 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1118, x_1120);
  let x_1123 : vec3<f32> = vs_INTERP0;
  let x_1125 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat7 = (x_1123 + -(x_1125));
  let x_1129 : vec3<f32> = u_xlat7;
  let x_1130 : vec3<f32> = u_xlat7;
  u_xlat41 = dot(x_1129, x_1130);
  let x_1132 : f32 = u_xlat41;
  let x_1134 : f32 = x_365.x_MainLightShadowParams.z;
  let x_1137 : f32 = x_365.x_MainLightShadowParams.w;
  u_xlat41 = ((x_1132 * x_1134) + x_1137);
  let x_1139 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1139, 0.0f, 1.0f);
  let x_1143 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_1143) + 1.0f);
  let x_1146 : f32 = u_xlat41;
  let x_1147 : f32 = u_xlat42;
  let x_1150 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1146 * x_1147) + x_1150);
  let x_1153 : f32 = u_xlat29;
  let x_1156 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_1153, x_1153, x_1153) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec3<f32> = u_xlat4;
  let x_1161 : vec4<f32> = u_xlat3;
  u_xlat41 = dot(-(x_1159), vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : f32 = u_xlat41;
  let x_1165 : f32 = u_xlat41;
  u_xlat41 = (x_1164 + x_1165);
  let x_1167 : vec4<f32> = u_xlat3;
  let x_1169 : f32 = u_xlat41;
  let x_1173 : vec3<f32> = u_xlat4;
  let x_1175 : vec3<f32> = ((vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * -(vec3<f32>(x_1169, x_1169, x_1169))) + -(x_1173));
  let x_1176 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : vec4<f32> = u_xlat3;
  let x_1180 : vec3<f32> = u_xlat4;
  u_xlat41 = dot(vec3<f32>(x_1178.x, x_1178.y, x_1178.z), x_1180);
  let x_1182 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1182, 0.0f, 1.0f);
  let x_1184 : f32 = u_xlat41;
  u_xlat41 = (-(x_1184) + 1.0f);
  let x_1187 : f32 = u_xlat41;
  let x_1188 : f32 = u_xlat41;
  u_xlat41 = (x_1187 * x_1188);
  let x_1190 : f32 = u_xlat41;
  let x_1191 : f32 = u_xlat41;
  u_xlat41 = (x_1190 * x_1191);
  let x_1194 : f32 = u_xlat24.x;
  u_xlat42 = ((-(x_1194) * 0.699999988f) + 1.700000048f);
  let x_1201 : f32 = u_xlat24.x;
  let x_1202 : f32 = u_xlat42;
  u_xlat24.x = (x_1201 * x_1202);
  let x_1206 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1206 * 6.0f);
  let x_1218 : vec4<f32> = u_xlat8;
  let x_1221 : f32 = u_xlat24.x;
  let x_1222 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1218.x, x_1218.y, x_1218.z), x_1221);
  u_xlat8 = x_1222;
  let x_1224 : f32 = u_xlat8.w;
  u_xlat24.x = (x_1224 + -1.0f);
  let x_1228 : f32 = x_94.unity_SpecCube0_HDR.w;
  let x_1230 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_1228 * x_1230) + 1.0f);
  let x_1235 : f32 = u_xlat24.x;
  u_xlat24.x = max(x_1235, 0.0f);
  let x_1239 : f32 = u_xlat24.x;
  u_xlat24.x = log2(x_1239);
  let x_1243 : f32 = u_xlat24.x;
  let x_1245 : f32 = x_94.unity_SpecCube0_HDR.y;
  u_xlat24.x = (x_1243 * x_1245);
  let x_1249 : f32 = u_xlat24.x;
  u_xlat24.x = exp2(x_1249);
  let x_1253 : f32 = u_xlat24.x;
  let x_1255 : f32 = x_94.unity_SpecCube0_HDR.x;
  u_xlat24.x = (x_1253 * x_1255);
  let x_1258 : vec4<f32> = u_xlat8;
  let x_1260 : vec2<f32> = u_xlat24;
  let x_1262 : vec3<f32> = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * vec3<f32>(x_1260.x, x_1260.x, x_1260.x));
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : f32 = u_xlat36;
  let x_1267 : f32 = u_xlat36;
  u_xlat24 = ((vec2<f32>(x_1265, x_1265) * vec2<f32>(x_1267, x_1267)) + vec2<f32>(-1.0f, 1.0f));
  let x_1273 : f32 = u_xlat24.y;
  u_xlat36 = (1.0f / x_1273);
  let x_1275 : f32 = u_xlat40;
  u_xlat40 = (x_1275 + -0.039999999f);
  let x_1278 : f32 = u_xlat41;
  let x_1279 : f32 = u_xlat40;
  u_xlat40 = ((x_1278 * x_1279) + 0.039999999f);
  let x_1283 : f32 = u_xlat36;
  let x_1284 : f32 = u_xlat40;
  u_xlat36 = (x_1283 * x_1284);
  let x_1286 : f32 = u_xlat36;
  let x_1288 : vec4<f32> = u_xlat8;
  let x_1290 : vec3<f32> = (vec3<f32>(x_1286, x_1286, x_1286) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec3<f32> = u_xlat14;
  let x_1294 : vec4<f32> = u_xlat6;
  let x_1297 : vec4<f32> = u_xlat8;
  u_xlat14 = ((x_1293 * vec3<f32>(x_1294.x, x_1294.y, x_1294.z)) + vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1301 : f32 = u_xlat0.x;
  let x_1303 : f32 = x_94.unity_LightData.z;
  u_xlat0.x = (x_1301 * x_1303);
  let x_1306 : vec4<f32> = u_xlat3;
  let x_1309 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1312 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1312, 0.0f, 1.0f);
  let x_1314 : f32 = u_xlat36;
  let x_1316 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1314 * x_1316);
  let x_1319 : vec4<f32> = u_xlat0;
  let x_1321 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1319.x, x_1319.x, x_1319.x) * x_1321);
  let x_1323 : vec3<f32> = u_xlat4;
  let x_1325 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1327 : vec3<f32> = (x_1323 + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat8;
  let x_1332 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1330.x, x_1330.y, x_1330.z), vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1337 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1337, 1.17549435e-37f);
  let x_1341 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1341);
  let x_1344 : vec4<f32> = u_xlat0;
  let x_1346 : vec4<f32> = u_xlat8;
  let x_1348 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.x, x_1344.x) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1351 : vec4<f32> = u_xlat3;
  let x_1353 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1351.x, x_1351.y, x_1351.z), vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1358 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1358, 0.0f, 1.0f);
  let x_1362 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1364 : vec4<f32> = u_xlat8;
  u_xlat0.w = dot(vec3<f32>(x_1362.x, x_1362.y, x_1362.z), vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1369 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_1369, 0.0f, 1.0f);
  let x_1372 : vec4<f32> = u_xlat0;
  let x_1374 : vec4<f32> = u_xlat0;
  let x_1376 : vec2<f32> = (vec2<f32>(x_1372.x, x_1372.w) * vec2<f32>(x_1374.x, x_1374.w));
  let x_1377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1376.x, x_1377.y, x_1377.z, x_1376.y);
  let x_1380 : f32 = u_xlat0.x;
  let x_1382 : f32 = u_xlat24.x;
  u_xlat0.x = ((x_1380 * x_1382) + 1.000010014f);
  let x_1388 : f32 = u_xlat0.x;
  let x_1390 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1388 * x_1390);
  let x_1394 : f32 = u_xlat0.w;
  u_xlat36 = max(x_1394, 0.100000001f);
  let x_1397 : f32 = u_xlat36;
  let x_1399 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1397 * x_1399);
  let x_1402 : f32 = u_xlat17;
  let x_1404 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1402 * x_1404);
  let x_1407 : f32 = u_xlat39;
  let x_1409 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1407 / x_1409);
  let x_1412 : vec4<f32> = u_xlat0;
  let x_1416 : vec4<f32> = u_xlat6;
  let x_1418 : vec3<f32> = ((vec3<f32>(x_1412.x, x_1412.x, x_1412.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec3<f32> = u_xlat7;
  let x_1422 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1421 * vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1427 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1429 : f32 = x_94.unity_LightData.y;
  u_xlat0.x = min(x_1427, x_1429);
  let x_1433 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1433));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1445 : u32 = u_xlatu_loop_1;
    let x_1446 : u32 = u_xlatu0;
    if ((x_1445 < x_1446)) {
    } else {
      break;
    }
    let x_1449 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1449 >> 2u);
    let x_1452 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_1452 & 3u));
    let x_1455 : u32 = u_xlatu40;
    let x_1458 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1455)];
    let x_1468 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1473 : vec4<u32> = indexable[x_1468];
    u_xlat40 = dot(x_1458, bitcast<vec4<f32>>(x_1473));
    let x_1477 : f32 = u_xlat40;
    u_xlati40 = i32(x_1477);
    let x_1479 : vec3<f32> = vs_INTERP0;
    let x_1491 : i32 = u_xlati40;
    let x_1493 : vec4<f32> = x_1490.x_AdditionalLightsPosition[x_1491];
    let x_1496 : i32 = u_xlati40;
    let x_1498 : vec4<f32> = x_1490.x_AdditionalLightsPosition[x_1496];
    let x_1500 : vec3<f32> = ((-(x_1479) * vec3<f32>(x_1493.w, x_1493.w, x_1493.w)) + vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
    let x_1501 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
    let x_1503 : vec4<f32> = u_xlat9;
    let x_1505 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : f32 = u_xlat41;
    u_xlat41 = max(x_1508, 6.10351562e-05f);
    let x_1511 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_1511);
    let x_1513 : f32 = u_xlat42;
    let x_1515 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1513, x_1513, x_1513) * vec3<f32>(x_1515.x, x_1515.y, x_1515.z));
    let x_1519 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_1519);
    let x_1521 : f32 = u_xlat41;
    let x_1522 : i32 = u_xlati40;
    let x_1524 : f32 = x_1490.x_AdditionalLightsAttenuation[x_1522].x;
    u_xlat41 = (x_1521 * x_1524);
    let x_1526 : f32 = u_xlat41;
    let x_1528 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1526) * x_1528) + 1.0f);
    let x_1531 : f32 = u_xlat41;
    u_xlat41 = max(x_1531, 0.0f);
    let x_1533 : f32 = u_xlat41;
    let x_1534 : f32 = u_xlat41;
    u_xlat41 = (x_1533 * x_1534);
    let x_1536 : f32 = u_xlat41;
    let x_1537 : f32 = u_xlat43;
    u_xlat41 = (x_1536 * x_1537);
    let x_1539 : i32 = u_xlati40;
    let x_1541 : vec4<f32> = x_1490.x_AdditionalLightsSpotDir[x_1539];
    let x_1543 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1541.x, x_1541.y, x_1541.z), x_1543);
    let x_1545 : f32 = u_xlat43;
    let x_1546 : i32 = u_xlati40;
    let x_1548 : f32 = x_1490.x_AdditionalLightsAttenuation[x_1546].z;
    let x_1550 : i32 = u_xlati40;
    let x_1552 : f32 = x_1490.x_AdditionalLightsAttenuation[x_1550].w;
    u_xlat43 = ((x_1545 * x_1548) + x_1552);
    let x_1554 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1554, 0.0f, 1.0f);
    let x_1556 : f32 = u_xlat43;
    let x_1557 : f32 = u_xlat43;
    u_xlat43 = (x_1556 * x_1557);
    let x_1559 : f32 = u_xlat41;
    let x_1560 : f32 = u_xlat43;
    u_xlat41 = (x_1559 * x_1560);
    let x_1563 : f32 = u_xlat29;
    let x_1565 : i32 = u_xlati40;
    let x_1567 : vec4<f32> = x_1490.x_AdditionalLightsColor[x_1565];
    u_xlat11 = (vec3<f32>(x_1563, x_1563, x_1563) * vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
    let x_1570 : vec4<f32> = u_xlat3;
    let x_1572 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1570.x, x_1570.y, x_1570.z), x_1572);
    let x_1574 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1574, 0.0f, 1.0f);
    let x_1576 : f32 = u_xlat40;
    let x_1577 : f32 = u_xlat41;
    u_xlat40 = (x_1576 * x_1577);
    let x_1579 : f32 = u_xlat40;
    let x_1581 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1579, x_1579, x_1579) * x_1581);
    let x_1583 : vec4<f32> = u_xlat9;
    let x_1585 : f32 = u_xlat42;
    let x_1588 : vec3<f32> = u_xlat4;
    let x_1589 : vec3<f32> = ((vec3<f32>(x_1583.x, x_1583.y, x_1583.z) * vec3<f32>(x_1585, x_1585, x_1585)) + x_1588);
    let x_1590 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
    let x_1592 : vec4<f32> = u_xlat9;
    let x_1594 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1592.x, x_1592.y, x_1592.z), vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
    let x_1597 : f32 = u_xlat40;
    u_xlat40 = max(x_1597, 1.17549435e-37f);
    let x_1599 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1599);
    let x_1601 : f32 = u_xlat40;
    let x_1603 : vec4<f32> = u_xlat9;
    let x_1605 : vec3<f32> = (vec3<f32>(x_1601, x_1601, x_1601) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
    let x_1606 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
    let x_1608 : vec4<f32> = u_xlat3;
    let x_1610 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1608.x, x_1608.y, x_1608.z), vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
    let x_1613 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1613, 0.0f, 1.0f);
    let x_1615 : vec3<f32> = u_xlat10;
    let x_1616 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(x_1615, vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
    let x_1619 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1619, 0.0f, 1.0f);
    let x_1621 : f32 = u_xlat40;
    let x_1622 : f32 = u_xlat40;
    u_xlat40 = (x_1621 * x_1622);
    let x_1624 : f32 = u_xlat40;
    let x_1626 : f32 = u_xlat24.x;
    u_xlat40 = ((x_1624 * x_1626) + 1.000010014f);
    let x_1629 : f32 = u_xlat41;
    let x_1630 : f32 = u_xlat41;
    u_xlat41 = (x_1629 * x_1630);
    let x_1632 : f32 = u_xlat40;
    let x_1633 : f32 = u_xlat40;
    u_xlat40 = (x_1632 * x_1633);
    let x_1635 : f32 = u_xlat41;
    u_xlat41 = max(x_1635, 0.100000001f);
    let x_1637 : f32 = u_xlat40;
    let x_1638 : f32 = u_xlat41;
    u_xlat40 = (x_1637 * x_1638);
    let x_1640 : f32 = u_xlat17;
    let x_1641 : f32 = u_xlat40;
    u_xlat40 = (x_1640 * x_1641);
    let x_1643 : f32 = u_xlat39;
    let x_1644 : f32 = u_xlat40;
    u_xlat40 = (x_1643 / x_1644);
    let x_1646 : f32 = u_xlat40;
    let x_1649 : vec4<f32> = u_xlat6;
    let x_1651 : vec3<f32> = ((vec3<f32>(x_1646, x_1646, x_1646) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
    let x_1654 : vec4<f32> = u_xlat9;
    let x_1656 : vec3<f32> = u_xlat11;
    let x_1658 : vec4<f32> = u_xlat8;
    let x_1660 : vec3<f32> = ((vec3<f32>(x_1654.x, x_1654.y, x_1654.z) * x_1656) + vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
    let x_1661 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);

    continuing {
      let x_1663 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1663 + bitcast<u32>(1i));
    }
  }
  let x_1665 : vec3<f32> = u_xlat14;
  let x_1666 : vec3<f32> = u_xlat5;
  let x_1669 : vec3<f32> = u_xlat7;
  let x_1670 : vec3<f32> = ((x_1665 * vec3<f32>(x_1666.x, x_1666.x, x_1666.x)) + x_1669);
  let x_1671 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1670.x, x_1671.y, x_1670.y, x_1670.z);
  let x_1673 : vec4<f32> = u_xlat8;
  let x_1675 : vec4<f32> = u_xlat0;
  let x_1677 : vec3<f32> = (vec3<f32>(x_1673.x, x_1673.y, x_1673.z) + vec3<f32>(x_1675.x, x_1675.z, x_1675.w));
  let x_1678 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1677.x, x_1678.y, x_1677.y, x_1677.z);
  let x_1680 : vec4<f32> = vs_INTERP4;
  let x_1682 : vec3<f32> = u_xlat1;
  let x_1684 : vec4<f32> = u_xlat0;
  let x_1686 : vec3<f32> = ((vec3<f32>(x_1680.w, x_1680.w, x_1680.w) * x_1682) + vec3<f32>(x_1684.x, x_1684.z, x_1684.w));
  let x_1687 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1686.x, x_1687.y, x_1686.y, x_1686.z);
  let x_1690 : f32 = u_xlat12.x;
  let x_1692 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1690 * -(x_1692));
  let x_1697 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1697);
  let x_1700 : vec4<f32> = u_xlat0;
  let x_1704 : vec4<f32> = x_160.unity_FogColor;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1700.x, x_1700.z, x_1700.w) + -(vec3<f32>(x_1704.x, x_1704.y, x_1704.z)));
  let x_1708 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1707.x, x_1708.y, x_1707.y, x_1707.z);
  let x_1712 : vec3<f32> = u_xlat12;
  let x_1714 : vec4<f32> = u_xlat0;
  let x_1718 : vec4<f32> = x_160.unity_FogColor;
  let x_1720 : vec3<f32> = ((vec3<f32>(x_1712.x, x_1712.x, x_1712.x) * vec3<f32>(x_1714.x, x_1714.z, x_1714.w)) + vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
  let x_1721 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1724 : bool = u_xlatb2.x;
  let x_1725 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1725, x_1724);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

