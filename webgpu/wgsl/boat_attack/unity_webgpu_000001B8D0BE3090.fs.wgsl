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

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_160 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_263 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_365 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1468 : AdditionalLights;

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
  var u_xlat26 : vec2<f32>;
  var x_774 : f32;
  var u_xlatb14 : bool;
  var x_801 : f32;
  var x_850 : f32;
  var u_xlat38 : f32;
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
  var u_xlat36 : f32;
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
  let x_86 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_86);
  let x_99 : f32 = x_95.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_99 >= 0.0f);
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
  let x_137 : vec3<f32> = u_xlat0;
  let x_139 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_142 : vec3<f32> = u_xlat0;
  let x_144 : vec4<f32> = vs_INTERP2;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat12;
  let x_151 : vec3<f32> = u_xlat0;
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
  let x_210 : vec4<f32> = x_95.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_214 : vec4<f32> = x_95.unity_WorldToObject[0i];
  let x_216 : vec3<f32> = u_xlat4;
  let x_219 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + x_219);
  let x_222 : vec4<f32> = x_95.unity_WorldToObject[2i];
  let x_224 : vec3<f32> = u_xlat4;
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + x_227);
  let x_229 : vec3<f32> = u_xlat5;
  let x_230 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_229, x_230);
  let x_234 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_234);
  let x_237 : vec3<f32> = u_xlat0;
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
  let x_297 : vec3<f32> = u_xlat0;
  let x_299 : vec4<f32> = u_xlat9;
  u_xlat20 = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_304 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_304 * 200.0f);
  let x_309 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_309, 1.0f);
  let x_312 : vec3<f32> = u_xlat0;
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
  let x_356 : vec3<f32> = u_xlat0;
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
  let x_614 : vec3<f32> = u_xlat0;
  let x_617 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec3<f32> = u_xlat13;
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_624 : vec3<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_624 * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_629 : f32 = x_95.unity_LODFade.x;
  u_xlatb37 = (x_629 < 0.0f);
  let x_632 : f32 = x_95.unity_LODFade.x;
  u_xlat2.x = (x_632 + 1.0f);
  let x_635 : bool = u_xlatb37;
  if (x_635) {
    let x_640 : f32 = u_xlat2.x;
    x_636 = x_640;
  } else {
    let x_643 : f32 = x_95.unity_LODFade.x;
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
  let x_768 : f32 = u_xlat14.x;
  u_xlat26.x = (-(x_768) + 1.0f);
  let x_773 : bool = u_xlatb2.x;
  if (x_773) {
    let x_778 : f32 = u_xlat14.x;
    x_774 = x_778;
  } else {
    let x_781 : f32 = u_xlat26.x;
    x_774 = x_781;
  }
  let x_782 : f32 = x_774;
  u_xlat2.x = x_782;
  let x_784 : f32 = u_xlat37;
  let x_787 : f32 = u_xlat2.x;
  u_xlat37 = ((x_784 * 2.0f) + -(x_787));
  let x_790 : f32 = u_xlat37;
  let x_792 : f32 = u_xlat6.w;
  u_xlat2.x = (x_790 * x_792);
  let x_797 : f32 = u_xlat2.x;
  u_xlatb14 = (x_797 >= 0.400000006f);
  let x_800 : bool = u_xlatb14;
  if (x_800) {
    let x_805 : f32 = u_xlat2.x;
    x_801 = x_805;
  } else {
    x_801 = 0.0f;
  }
  let x_807 : f32 = x_801;
  u_xlat14.x = x_807;
  let x_810 : f32 = u_xlat6.w;
  let x_811 : f32 = u_xlat37;
  u_xlat37 = ((x_810 * x_811) + -0.400000006f);
  let x_816 : f32 = u_xlat2.x;
  u_xlat26.x = dpdxCoarse(x_816);
  let x_820 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_820);
  let x_824 : f32 = u_xlat2.x;
  let x_827 : f32 = u_xlat26.x;
  u_xlat2.x = (abs(x_824) + abs(x_827));
  let x_832 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_832, 0.0001f);
  let x_836 : f32 = u_xlat37;
  let x_838 : f32 = u_xlat2.x;
  u_xlat37 = (x_836 / x_838);
  let x_840 : f32 = u_xlat37;
  u_xlat37 = (x_840 + 0.5f);
  let x_842 : f32 = u_xlat37;
  u_xlat37 = clamp(x_842, 0.0f, 1.0f);
  let x_845 : f32 = x_160.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_845 == 0.0f));
  let x_849 : bool = u_xlatb2.x;
  if (x_849) {
    let x_853 : f32 = u_xlat37;
    x_850 = x_853;
  } else {
    let x_856 : f32 = u_xlat14.x;
    x_850 = x_856;
  }
  let x_857 : f32 = x_850;
  u_xlat37 = x_857;
  let x_858 : f32 = u_xlat37;
  u_xlat14.x = (x_858 + -0.0001f);
  let x_863 : f32 = u_xlat14.x;
  u_xlatb14 = (x_863 < 0.0f);
  let x_865 : bool = u_xlatb14;
  if (((select(0i, 1i, x_865) * -1i) != 0i)) {
    discard;
  }
  let x_873 : vec3<f32> = u_xlat12;
  let x_874 : vec3<f32> = u_xlat20;
  u_xlat12 = (x_873 * vec3<f32>(x_874.y, x_874.y, x_874.y));
  let x_877 : vec3<f32> = u_xlat20;
  let x_879 : vec4<f32> = vs_INTERP2;
  let x_882 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_879.x, x_879.y, x_879.z)) + x_882);
  let x_884 : vec3<f32> = u_xlat20;
  let x_886 : vec3<f32> = vs_INTERP1;
  let x_888 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_884.z, x_884.z, x_884.z) * x_886) + x_888);
  let x_890 : vec3<f32> = u_xlat12;
  let x_891 : vec3<f32> = u_xlat12;
  u_xlat14.x = dot(x_890, x_891);
  let x_895 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_895);
  let x_898 : vec3<f32> = u_xlat12;
  let x_899 : vec3<f32> = u_xlat14;
  u_xlat12 = (x_898 * vec3<f32>(x_899.x, x_899.x, x_899.x));
  let x_903 : f32 = vs_INTERP0.y;
  let x_905 : f32 = x_160.unity_MatrixV[1i].z;
  u_xlat14.x = (x_903 * x_905);
  let x_909 : f32 = x_160.unity_MatrixV[0i].z;
  let x_911 : f32 = vs_INTERP0.x;
  let x_914 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_909 * x_911) + x_914);
  let x_918 : f32 = x_160.unity_MatrixV[2i].z;
  let x_920 : f32 = vs_INTERP0.z;
  let x_923 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_918 * x_920) + x_923);
  let x_927 : f32 = u_xlat14.x;
  let x_929 : f32 = x_160.unity_MatrixV[3i].z;
  u_xlat14.x = (x_927 + x_929);
  let x_933 : f32 = u_xlat14.x;
  let x_936 : f32 = x_160.x_ProjectionParams.y;
  u_xlat14.x = (-(x_933) + -(x_936));
  let x_941 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_941, 0.0f);
  let x_945 : f32 = u_xlat14.x;
  let x_948 : f32 = x_160.unity_FogParams.x;
  u_xlat14.x = (x_945 * x_948);
  let x_958 : vec2<f32> = vs_INTERP5;
  let x_960 : f32 = x_160.x_GlobalMipBias.x;
  let x_961 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_958, x_960);
  u_xlat3 = x_961;
  let x_966 : vec2<f32> = vs_INTERP5;
  let x_968 : f32 = x_160.x_GlobalMipBias.x;
  let x_969 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_966, x_968);
  u_xlat5 = vec3<f32>(x_969.x, x_969.y, x_969.z);
  let x_971 : vec4<f32> = u_xlat3;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_976 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat12;
  let x_979 : vec4<f32> = u_xlat3;
  u_xlat26.x = dot(x_978, vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_984 : f32 = u_xlat26.x;
  u_xlat26.x = (x_984 + 0.5f);
  let x_987 : vec2<f32> = u_xlat26;
  let x_989 : vec3<f32> = u_xlat5;
  let x_990 : vec3<f32> = (vec3<f32>(x_987.x, x_987.x, x_987.x) * x_989);
  let x_991 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_994 : f32 = u_xlat3.w;
  u_xlat26.x = max(x_994, 0.0001f);
  let x_997 : vec4<f32> = u_xlat3;
  let x_999 : vec2<f32> = u_xlat26;
  let x_1001 : vec3<f32> = (vec3<f32>(x_997.x, x_997.y, x_997.z) / vec3<f32>(x_999.x, x_999.x, x_999.x));
  let x_1002 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1006 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_1007 : vec2<f32> = vec2<f32>(x_1006.x, x_1006.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1007.x, x_1007.y));
  let x_1012 : vec2<f32> = u_xlat26;
  let x_1013 : vec4<f32> = hlslcc_FragCoord;
  let x_1015 : vec2<f32> = (x_1012 * vec2<f32>(x_1013.x, x_1013.y));
  let x_1016 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_1015.x, x_1015.y, x_1016.z);
  let x_1019 : f32 = u_xlat5.y;
  let x_1022 : f32 = x_160.x_ScaleBiasRt.x;
  let x_1025 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_1019 * x_1022) + x_1025);
  let x_1029 : f32 = u_xlat26.x;
  u_xlat5.z = (-(x_1029) + 1.0f);
  let x_1034 : f32 = u_xlat8.x;
  u_xlat8.x = x_1034;
  let x_1037 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1037, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat37;
  u_xlat37 = x_1040;
  let x_1041 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1041, 0.0f, 1.0f);
  let x_1043 : vec3<f32> = u_xlat7;
  let x_1046 : vec3<f32> = (x_1043 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1047 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1050 : f32 = u_xlat8.x;
  u_xlat26.x = (-(x_1050) + 1.0f);
  let x_1056 : f32 = u_xlat26.x;
  let x_1058 : f32 = u_xlat26.x;
  u_xlat38 = (x_1056 * x_1058);
  let x_1060 : f32 = u_xlat38;
  u_xlat38 = max(x_1060, 0.0078125f);
  let x_1064 : f32 = u_xlat38;
  let x_1065 : f32 = u_xlat38;
  u_xlat39 = (x_1064 * x_1065);
  let x_1069 : f32 = u_xlat8.x;
  u_xlat40 = (x_1069 + 0.040000021f);
  let x_1072 : f32 = u_xlat40;
  u_xlat40 = min(x_1072, 1.0f);
  let x_1075 : f32 = u_xlat38;
  u_xlat17 = ((x_1075 * 4.0f) + 2.0f);
  let x_1083 : vec3<f32> = u_xlat5;
  let x_1086 : f32 = x_160.x_GlobalMipBias.x;
  let x_1087 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1083.x, x_1083.z), x_1086);
  u_xlat5.x = x_1087.x;
  let x_1092 : f32 = u_xlat5.x;
  u_xlat29 = (x_1092 + -1.0f);
  let x_1095 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1096 : f32 = u_xlat29;
  u_xlat29 = ((x_1095 * x_1096) + 1.0f);
  let x_1100 : f32 = u_xlat5.x;
  let x_1102 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1100, x_1102);
  let x_1105 : vec3<f32> = vs_INTERP0;
  let x_1107 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat7 = (x_1105 + -(x_1107));
  let x_1111 : vec3<f32> = u_xlat7;
  let x_1112 : vec3<f32> = u_xlat7;
  u_xlat41 = dot(x_1111, x_1112);
  let x_1114 : f32 = u_xlat41;
  let x_1116 : f32 = x_365.x_MainLightShadowParams.z;
  let x_1119 : f32 = x_365.x_MainLightShadowParams.w;
  u_xlat41 = ((x_1114 * x_1116) + x_1119);
  let x_1121 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1121, 0.0f, 1.0f);
  let x_1125 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_1125) + 1.0f);
  let x_1128 : f32 = u_xlat41;
  let x_1129 : f32 = u_xlat42;
  let x_1132 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1128 * x_1129) + x_1132);
  let x_1135 : f32 = u_xlat29;
  let x_1138 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec3<f32> = u_xlat4;
  let x_1143 : vec3<f32> = u_xlat12;
  u_xlat41 = dot(-(x_1141), x_1143);
  let x_1145 : f32 = u_xlat41;
  let x_1146 : f32 = u_xlat41;
  u_xlat41 = (x_1145 + x_1146);
  let x_1148 : vec3<f32> = u_xlat12;
  let x_1149 : f32 = u_xlat41;
  let x_1153 : vec3<f32> = u_xlat4;
  let x_1155 : vec3<f32> = ((x_1148 * -(vec3<f32>(x_1149, x_1149, x_1149))) + -(x_1153));
  let x_1156 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec3<f32> = u_xlat12;
  let x_1159 : vec3<f32> = u_xlat4;
  u_xlat41 = dot(x_1158, x_1159);
  let x_1161 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1161, 0.0f, 1.0f);
  let x_1163 : f32 = u_xlat41;
  u_xlat41 = (-(x_1163) + 1.0f);
  let x_1166 : f32 = u_xlat41;
  let x_1167 : f32 = u_xlat41;
  u_xlat41 = (x_1166 * x_1167);
  let x_1169 : f32 = u_xlat41;
  let x_1170 : f32 = u_xlat41;
  u_xlat41 = (x_1169 * x_1170);
  let x_1173 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_1173) * 0.699999988f) + 1.700000048f);
  let x_1180 : f32 = u_xlat26.x;
  let x_1181 : f32 = u_xlat42;
  u_xlat26.x = (x_1180 * x_1181);
  let x_1185 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1185 * 6.0f);
  let x_1197 : vec4<f32> = u_xlat8;
  let x_1200 : f32 = u_xlat26.x;
  let x_1201 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1197.x, x_1197.y, x_1197.z), x_1200);
  u_xlat8 = x_1201;
  let x_1203 : f32 = u_xlat8.w;
  u_xlat26.x = (x_1203 + -1.0f);
  let x_1207 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1209 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1207 * x_1209) + 1.0f);
  let x_1214 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1214, 0.0f);
  let x_1218 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1218);
  let x_1222 : f32 = u_xlat26.x;
  let x_1224 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1222 * x_1224);
  let x_1228 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1228);
  let x_1232 : f32 = u_xlat26.x;
  let x_1234 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1232 * x_1234);
  let x_1237 : vec4<f32> = u_xlat8;
  let x_1239 : vec2<f32> = u_xlat26;
  let x_1241 : vec3<f32> = (vec3<f32>(x_1237.x, x_1237.y, x_1237.z) * vec3<f32>(x_1239.x, x_1239.x, x_1239.x));
  let x_1242 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : f32 = u_xlat38;
  let x_1246 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1244, x_1244) * vec2<f32>(x_1246, x_1246)) + vec2<f32>(-1.0f, 1.0f));
  let x_1252 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1252);
  let x_1254 : f32 = u_xlat40;
  u_xlat40 = (x_1254 + -0.039999999f);
  let x_1257 : f32 = u_xlat41;
  let x_1258 : f32 = u_xlat40;
  u_xlat40 = ((x_1257 * x_1258) + 0.039999999f);
  let x_1262 : f32 = u_xlat38;
  let x_1263 : f32 = u_xlat40;
  u_xlat38 = (x_1262 * x_1263);
  let x_1265 : f32 = u_xlat38;
  let x_1267 : vec4<f32> = u_xlat8;
  let x_1269 : vec3<f32> = (vec3<f32>(x_1265, x_1265, x_1265) * vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
  let x_1272 : vec4<f32> = u_xlat3;
  let x_1274 : vec4<f32> = u_xlat6;
  let x_1277 : vec4<f32> = u_xlat8;
  let x_1279 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1274.x, x_1274.y, x_1274.z)) + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1283 : f32 = u_xlat0.x;
  let x_1285 : f32 = x_95.unity_LightData.z;
  u_xlat0.x = (x_1283 * x_1285);
  let x_1288 : vec3<f32> = u_xlat12;
  let x_1290 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat38 = dot(x_1288, vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1293, 0.0f, 1.0f);
  let x_1296 : f32 = u_xlat0.x;
  let x_1297 : f32 = u_xlat38;
  u_xlat0.x = (x_1296 * x_1297);
  let x_1300 : vec3<f32> = u_xlat0;
  let x_1302 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1300.x, x_1300.x, x_1300.x) * x_1302);
  let x_1304 : vec3<f32> = u_xlat4;
  let x_1306 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1308 : vec3<f32> = (x_1304 + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : vec4<f32> = u_xlat8;
  let x_1313 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1311.x, x_1311.y, x_1311.z), vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1318 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1318, 1.17549435e-37f);
  let x_1322 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1322);
  let x_1325 : vec3<f32> = u_xlat0;
  let x_1327 : vec4<f32> = u_xlat8;
  let x_1329 : vec3<f32> = (vec3<f32>(x_1325.x, x_1325.x, x_1325.x) * vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1330 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec3<f32> = u_xlat12;
  let x_1333 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_1332, vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1338, 0.0f, 1.0f);
  let x_1342 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1344 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1342.x, x_1342.y, x_1342.z), vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1347 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1347, 0.0f, 1.0f);
  let x_1350 : f32 = u_xlat0.x;
  let x_1352 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1350 * x_1352);
  let x_1356 : f32 = u_xlat0.x;
  let x_1358 : f32 = u_xlat26.x;
  u_xlat0.x = ((x_1356 * x_1358) + 1.000010014f);
  let x_1363 : f32 = u_xlat38;
  let x_1364 : f32 = u_xlat38;
  u_xlat38 = (x_1363 * x_1364);
  let x_1367 : f32 = u_xlat0.x;
  let x_1369 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1367 * x_1369);
  let x_1372 : f32 = u_xlat38;
  u_xlat38 = max(x_1372, 0.100000001f);
  let x_1376 : f32 = u_xlat0.x;
  let x_1377 : f32 = u_xlat38;
  u_xlat0.x = (x_1376 * x_1377);
  let x_1380 : f32 = u_xlat17;
  let x_1382 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1380 * x_1382);
  let x_1385 : f32 = u_xlat39;
  let x_1387 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1385 / x_1387);
  let x_1390 : vec3<f32> = u_xlat0;
  let x_1394 : vec4<f32> = u_xlat6;
  let x_1396 : vec3<f32> = ((vec3<f32>(x_1390.x, x_1390.x, x_1390.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1397 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
  let x_1399 : vec3<f32> = u_xlat7;
  let x_1400 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_1399 * vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1405 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1407 : f32 = x_95.unity_LightData.y;
  u_xlat0.x = min(x_1405, x_1407);
  let x_1411 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1411));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1423 : u32 = u_xlatu_loop_1;
    let x_1424 : u32 = u_xlatu0;
    if ((x_1423 < x_1424)) {
    } else {
      break;
    }
    let x_1427 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1427 >> 2u);
    let x_1430 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_1430 & 3u));
    let x_1433 : u32 = u_xlatu40;
    let x_1436 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1433)];
    let x_1446 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1451 : vec4<u32> = indexable[x_1446];
    u_xlat40 = dot(x_1436, bitcast<vec4<f32>>(x_1451));
    let x_1455 : f32 = u_xlat40;
    u_xlati40 = i32(x_1455);
    let x_1457 : vec3<f32> = vs_INTERP0;
    let x_1469 : i32 = u_xlati40;
    let x_1471 : vec4<f32> = x_1468.x_AdditionalLightsPosition[x_1469];
    let x_1474 : i32 = u_xlati40;
    let x_1476 : vec4<f32> = x_1468.x_AdditionalLightsPosition[x_1474];
    let x_1478 : vec3<f32> = ((-(x_1457) * vec3<f32>(x_1471.w, x_1471.w, x_1471.w)) + vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
    let x_1479 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
    let x_1481 : vec4<f32> = u_xlat9;
    let x_1483 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : f32 = u_xlat41;
    u_xlat41 = max(x_1486, 6.10351562e-05f);
    let x_1489 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_1489);
    let x_1491 : f32 = u_xlat42;
    let x_1493 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1497 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_1497);
    let x_1499 : f32 = u_xlat41;
    let x_1500 : i32 = u_xlati40;
    let x_1502 : f32 = x_1468.x_AdditionalLightsAttenuation[x_1500].x;
    u_xlat41 = (x_1499 * x_1502);
    let x_1504 : f32 = u_xlat41;
    let x_1506 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1504) * x_1506) + 1.0f);
    let x_1509 : f32 = u_xlat41;
    u_xlat41 = max(x_1509, 0.0f);
    let x_1511 : f32 = u_xlat41;
    let x_1512 : f32 = u_xlat41;
    u_xlat41 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat41;
    let x_1515 : f32 = u_xlat43;
    u_xlat41 = (x_1514 * x_1515);
    let x_1517 : i32 = u_xlati40;
    let x_1519 : vec4<f32> = x_1468.x_AdditionalLightsSpotDir[x_1517];
    let x_1521 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1519.x, x_1519.y, x_1519.z), x_1521);
    let x_1523 : f32 = u_xlat43;
    let x_1524 : i32 = u_xlati40;
    let x_1526 : f32 = x_1468.x_AdditionalLightsAttenuation[x_1524].z;
    let x_1528 : i32 = u_xlati40;
    let x_1530 : f32 = x_1468.x_AdditionalLightsAttenuation[x_1528].w;
    u_xlat43 = ((x_1523 * x_1526) + x_1530);
    let x_1532 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1532, 0.0f, 1.0f);
    let x_1534 : f32 = u_xlat43;
    let x_1535 : f32 = u_xlat43;
    u_xlat43 = (x_1534 * x_1535);
    let x_1537 : f32 = u_xlat41;
    let x_1538 : f32 = u_xlat43;
    u_xlat41 = (x_1537 * x_1538);
    let x_1541 : f32 = u_xlat29;
    let x_1543 : i32 = u_xlati40;
    let x_1545 : vec4<f32> = x_1468.x_AdditionalLightsColor[x_1543];
    u_xlat11 = (vec3<f32>(x_1541, x_1541, x_1541) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1548 : vec3<f32> = u_xlat12;
    let x_1549 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(x_1548, x_1549);
    let x_1551 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1551, 0.0f, 1.0f);
    let x_1553 : f32 = u_xlat40;
    let x_1554 : f32 = u_xlat41;
    u_xlat40 = (x_1553 * x_1554);
    let x_1556 : f32 = u_xlat40;
    let x_1558 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1556, x_1556, x_1556) * x_1558);
    let x_1560 : vec4<f32> = u_xlat9;
    let x_1562 : f32 = u_xlat42;
    let x_1565 : vec3<f32> = u_xlat4;
    let x_1566 : vec3<f32> = ((vec3<f32>(x_1560.x, x_1560.y, x_1560.z) * vec3<f32>(x_1562, x_1562, x_1562)) + x_1565);
    let x_1567 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
    let x_1569 : vec4<f32> = u_xlat9;
    let x_1571 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1574 : f32 = u_xlat40;
    u_xlat40 = max(x_1574, 1.17549435e-37f);
    let x_1576 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1576);
    let x_1578 : f32 = u_xlat40;
    let x_1580 : vec4<f32> = u_xlat9;
    let x_1582 : vec3<f32> = (vec3<f32>(x_1578, x_1578, x_1578) * vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
    let x_1583 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
    let x_1585 : vec3<f32> = u_xlat12;
    let x_1586 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(x_1585, vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
    let x_1589 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1589, 0.0f, 1.0f);
    let x_1591 : vec3<f32> = u_xlat10;
    let x_1592 : vec4<f32> = u_xlat9;
    u_xlat41 = dot(x_1591, vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
    let x_1595 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1595, 0.0f, 1.0f);
    let x_1597 : f32 = u_xlat40;
    let x_1598 : f32 = u_xlat40;
    u_xlat40 = (x_1597 * x_1598);
    let x_1600 : f32 = u_xlat40;
    let x_1602 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1600 * x_1602) + 1.000010014f);
    let x_1605 : f32 = u_xlat41;
    let x_1606 : f32 = u_xlat41;
    u_xlat41 = (x_1605 * x_1606);
    let x_1608 : f32 = u_xlat40;
    let x_1609 : f32 = u_xlat40;
    u_xlat40 = (x_1608 * x_1609);
    let x_1611 : f32 = u_xlat41;
    u_xlat41 = max(x_1611, 0.100000001f);
    let x_1613 : f32 = u_xlat40;
    let x_1614 : f32 = u_xlat41;
    u_xlat40 = (x_1613 * x_1614);
    let x_1616 : f32 = u_xlat17;
    let x_1617 : f32 = u_xlat40;
    u_xlat40 = (x_1616 * x_1617);
    let x_1619 : f32 = u_xlat39;
    let x_1620 : f32 = u_xlat40;
    u_xlat40 = (x_1619 / x_1620);
    let x_1622 : f32 = u_xlat40;
    let x_1625 : vec4<f32> = u_xlat6;
    let x_1627 : vec3<f32> = ((vec3<f32>(x_1622, x_1622, x_1622) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
    let x_1630 : vec4<f32> = u_xlat9;
    let x_1632 : vec3<f32> = u_xlat11;
    let x_1634 : vec4<f32> = u_xlat8;
    let x_1636 : vec3<f32> = ((vec3<f32>(x_1630.x, x_1630.y, x_1630.z) * x_1632) + vec3<f32>(x_1634.x, x_1634.y, x_1634.z));
    let x_1637 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);

    continuing {
      let x_1639 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1639 + bitcast<u32>(1i));
    }
  }
  let x_1641 : vec4<f32> = u_xlat3;
  let x_1643 : vec3<f32> = u_xlat5;
  let x_1646 : vec3<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1641.x, x_1641.y, x_1641.z) * vec3<f32>(x_1643.x, x_1643.x, x_1643.x)) + x_1646);
  let x_1648 : vec4<f32> = u_xlat8;
  let x_1650 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1648.x, x_1648.y, x_1648.z) + x_1650);
  let x_1652 : vec4<f32> = vs_INTERP4;
  let x_1654 : vec3<f32> = u_xlat1;
  let x_1656 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1652.w, x_1652.w, x_1652.w) * x_1654) + x_1656);
  let x_1660 : f32 = u_xlat14.x;
  let x_1662 : f32 = u_xlat14.x;
  u_xlat36 = (x_1660 * -(x_1662));
  let x_1665 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1665);
  let x_1667 : vec3<f32> = u_xlat0;
  let x_1670 : vec4<f32> = x_160.unity_FogColor;
  u_xlat0 = (x_1667 + -(vec3<f32>(x_1670.x, x_1670.y, x_1670.z)));
  let x_1676 : f32 = u_xlat36;
  let x_1678 : vec3<f32> = u_xlat0;
  let x_1681 : vec4<f32> = x_160.unity_FogColor;
  let x_1683 : vec3<f32> = ((vec3<f32>(x_1676, x_1676, x_1676) * x_1678) + vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
  let x_1684 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
  let x_1687 : bool = u_xlatb2.x;
  let x_1688 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1688, x_1687);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

