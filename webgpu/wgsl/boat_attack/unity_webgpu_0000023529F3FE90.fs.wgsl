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

@group(1) @binding(2) var<uniform> x_161 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_271 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1378 : AdditionalLights;

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
  var u_xlatb33 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat2 : vec3<f32>;
  var x_118 : f32;
  var x_132 : f32;
  var x_145 : f32;
  var u_xlat33 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb34 : bool;
  var u_xlatb35 : bool;
  var u_xlat35 : f32;
  var x_533 : f32;
  var u_xlatu1 : vec3<u32>;
  var u_xlatu23 : u32;
  var u_xlatu3 : u32;
  var u_xlati23 : i32;
  var u_xlati12 : i32;
  var u_xlatu12 : u32;
  var u_xlati1 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat12 : f32;
  var x_664 : f32;
  var u_xlatb23 : vec2<bool>;
  var u_xlat23 : vec2<f32>;
  var u_xlatb12 : bool;
  var x_737 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var x_1574 : f32;
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
  u_xlatb33 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat34 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat34;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_117 : bool = u_xlatb33;
  if (x_117) {
    let x_122 : f32 = u_xlat1.x;
    x_118 = x_122;
  } else {
    let x_128 : f32 = x_90.unity_MatrixV[0i].z;
    x_118 = x_128;
  }
  let x_129 : f32 = x_118;
  u_xlat2.x = x_129;
  let x_131 : bool = u_xlatb33;
  if (x_131) {
    let x_137 : f32 = u_xlat1.y;
    x_132 = x_137;
  } else {
    let x_141 : f32 = x_90.unity_MatrixV[1i].z;
    x_132 = x_141;
  }
  let x_142 : f32 = x_132;
  u_xlat2.y = x_142;
  let x_144 : bool = u_xlatb33;
  if (x_144) {
    let x_149 : f32 = u_xlat1.z;
    x_145 = x_149;
  } else {
    let x_153 : f32 = x_90.unity_MatrixV[2i].z;
    x_145 = x_153;
  }
  let x_154 : f32 = x_145;
  u_xlat2.z = x_154;
  let x_156 : vec3<f32> = u_xlat2;
  let x_164 : vec4<f32> = x_161.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec4<f32> = x_161.unity_WorldToObject[0i];
  let x_170 : vec3<f32> = u_xlat2;
  let x_173 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_161.unity_WorldToObject[2i];
  let x_178 : vec3<f32> = u_xlat2;
  let x_181 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_178.z, x_178.z, x_178.z)) + x_181);
  let x_184 : vec3<f32> = u_xlat1;
  let x_185 : vec3<f32> = u_xlat1;
  u_xlat33 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat33;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_205 : vec4<f32> = vs_INTERP3;
  let x_208 : f32 = x_90.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat3 = x_209;
  let x_211 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = x_215.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_226 : vec4<f32> = vs_INTERP3;
  let x_229 : f32 = x_90.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat5 = vec4<f32>(x_230.w, x_230.x, x_230.y, x_230.z);
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_233.y, x_233.z, x_233.w, x_233.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_241 : vec4<f32> = u_xlat6;
  let x_242 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_244);
  let x_247 : f32 = u_xlat33;
  let x_249 : vec4<f32> = u_xlat6;
  u_xlat16 = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_254 : f32 = vs_INTERP4.y;
  u_xlat33 = (x_254 * 200.0f);
  let x_257 : f32 = u_xlat33;
  u_xlat33 = min(x_257, 1.0f);
  let x_259 : f32 = u_xlat33;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_273 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres0;
  let x_276 : vec3<f32> = (x_266 + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec3<f32> = vs_INTERP0;
  let x_282 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres1;
  let x_285 : vec3<f32> = (x_280 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : vec3<f32> = vs_INTERP0;
  let x_292 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres2;
  let x_295 : vec3<f32> = (x_289 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_INTERP0;
  let x_302 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_299 + -(vec3<f32>(x_302.x, x_302.y, x_302.z)));
  let x_306 : vec4<f32> = u_xlat6;
  let x_308 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : vec4<f32> = u_xlat7;
  let x_314 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_318 : vec4<f32> = u_xlat8;
  let x_320 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec3<f32> = u_xlat9;
  let x_325 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_324, x_325);
  let x_331 : vec4<f32> = u_xlat6;
  let x_334 : vec4<f32> = x_271.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_331 < x_334);
  let x_337 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_337);
  let x_341 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_341);
  let x_345 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_345);
  let x_349 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_349);
  let x_353 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_353);
  let x_358 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_358);
  let x_362 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_362);
  let x_365 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat7;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(x_367.y, x_367.z, x_367.w));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat6;
  let x_375 : vec3<f32> = max(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_376 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_375.z);
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_378, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_383 : f32 = u_xlat33;
  u_xlat33 = (-(x_383) + 4.0f);
  let x_387 : f32 = u_xlat33;
  u_xlatu33 = u32(x_387);
  let x_390 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_390) << bitcast<u32>(2i));
  let x_393 : vec3<f32> = vs_INTERP0;
  let x_395 : i32 = u_xlati33;
  let x_398 : i32 = u_xlati33;
  let x_402 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_395 + 1i) / 4i)][((x_398 + 1i) % 4i)];
  let x_404 : vec3<f32> = (vec3<f32>(x_393.y, x_393.y, x_393.y) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : i32 = u_xlati33;
  let x_409 : i32 = u_xlati33;
  let x_412 : vec4<f32> = x_271.x_MainLightWorldToShadow[(x_407 / 4i)][(x_409 % 4i)];
  let x_414 : vec3<f32> = vs_INTERP0;
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.x, x_414.x, x_414.x)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : i32 = u_xlati33;
  let x_425 : i32 = u_xlati33;
  let x_429 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_422 + 2i) / 4i)][((x_425 + 2i) % 4i)];
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_434 : vec4<f32> = u_xlat6;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431.z, x_431.z, x_431.z)) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat6;
  let x_441 : i32 = u_xlati33;
  let x_444 : i32 = u_xlati33;
  let x_448 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_441 + 3i) / 4i)][((x_444 + 3i) % 4i)];
  let x_450 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : vec4<f32> = u_xlat6;
  let x_455 : vec2<f32> = vec2<f32>(x_454.x, x_454.y);
  let x_457 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_455.x, x_455.y, x_457);
  let x_469 : vec3<f32> = txVec0;
  let x_471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_469.xy, x_469.z);
  u_xlat33 = x_471;
  let x_474 : f32 = x_271.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_474) + 1.0f);
  let x_477 : f32 = u_xlat33;
  let x_479 : f32 = x_271.x_MainLightShadowParams.x;
  let x_481 : f32 = u_xlat34;
  u_xlat33 = ((x_477 * x_479) + x_481);
  let x_485 : f32 = u_xlat6.z;
  u_xlatb34 = (0.0f >= x_485);
  let x_489 : f32 = u_xlat6.z;
  u_xlatb35 = (x_489 >= 1.0f);
  let x_491 : bool = u_xlatb34;
  let x_492 : bool = u_xlatb35;
  u_xlatb34 = (x_491 | x_492);
  let x_494 : bool = u_xlatb34;
  let x_495 : f32 = u_xlat33;
  u_xlat33 = select(x_495, 1.0f, x_494);
  let x_497 : vec3<f32> = u_xlat0;
  let x_499 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_497, -(vec3<f32>(x_499.x, x_499.y, x_499.z)));
  let x_505 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_505, 0.0f, 1.0f);
  let x_508 : f32 = u_xlat33;
  let x_511 : vec4<f32> = x_90.x_MainLightColor;
  let x_513 : vec3<f32> = (vec3<f32>(x_508, x_508, x_508) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec3<f32> = u_xlat0;
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_516.x, x_516.x, x_516.x) * vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec3<f32> = u_xlat0;
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_526 : f32 = x_161.unity_LODFade.x;
  u_xlatb34 = (x_526 < 0.0f);
  let x_530 : f32 = x_161.unity_LODFade.x;
  u_xlat35 = (x_530 + 1.0f);
  let x_532 : bool = u_xlatb34;
  if (x_532) {
    let x_536 : f32 = u_xlat35;
    x_533 = x_536;
  } else {
    let x_539 : f32 = x_161.unity_LODFade.x;
    x_533 = x_539;
  }
  let x_540 : f32 = x_533;
  u_xlat34 = x_540;
  let x_542 : f32 = u_xlat34;
  u_xlatb35 = (0.5f >= x_542);
  let x_544 : vec3<f32> = u_xlat1;
  let x_547 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_544) * vec3<f32>(x_547.x, x_547.y, x_547.x));
  let x_553 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_553);
  let x_557 : u32 = u_xlatu1.z;
  u_xlatu23 = (x_557 * 1025u);
  let x_561 : u32 = u_xlatu23;
  u_xlatu3 = (x_561 >> 6u);
  let x_565 : u32 = u_xlatu23;
  let x_566 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_565 ^ x_566));
  let x_569 : i32 = u_xlati23;
  u_xlatu23 = (bitcast<u32>(x_569) * 9u);
  let x_573 : u32 = u_xlatu23;
  u_xlatu3 = (x_573 >> 11u);
  let x_576 : u32 = u_xlatu23;
  let x_577 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_576 ^ x_577));
  let x_580 : i32 = u_xlati23;
  u_xlati23 = (x_580 * 32769i);
  let x_584 : i32 = u_xlati23;
  let x_587 : u32 = u_xlatu1.y;
  u_xlati12 = bitcast<i32>((bitcast<u32>(x_584) ^ x_587));
  let x_591 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_591) * 1025u);
  let x_594 : u32 = u_xlatu12;
  u_xlatu23 = (x_594 >> 6u);
  let x_596 : u32 = u_xlatu23;
  let x_597 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_596 ^ x_597));
  let x_600 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_600) * 9u);
  let x_603 : u32 = u_xlatu12;
  u_xlatu23 = (x_603 >> 11u);
  let x_605 : u32 = u_xlatu23;
  let x_606 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_605 ^ x_606));
  let x_609 : i32 = u_xlati12;
  u_xlati12 = (x_609 * 32769i);
  let x_612 : i32 = u_xlati12;
  let x_615 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_612) ^ x_615));
  let x_618 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_618) * 1025u);
  let x_623 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_623 >> 6u);
  let x_625 : u32 = u_xlatu12;
  let x_627 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_625 ^ x_627));
  let x_630 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_630) * 9u);
  let x_635 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_635 >> 11u);
  let x_637 : u32 = u_xlatu12;
  let x_639 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_637 ^ x_639));
  let x_642 : i32 = u_xlati1;
  u_xlati1 = (x_642 * 32769i);
  param = 1065353216i;
  let x_648 : i32 = u_xlati1;
  param_1 = x_648;
  param_2 = 0i;
  param_3 = 23i;
  let x_651 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_651);
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = (x_655 + -1.0f);
  let x_660 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_660) + 1.0f);
  let x_663 : bool = u_xlatb35;
  if (x_663) {
    let x_668 : f32 = u_xlat1.x;
    x_664 = x_668;
  } else {
    let x_670 : f32 = u_xlat12;
    x_664 = x_670;
  }
  let x_671 : f32 = x_664;
  u_xlat1.x = x_671;
  let x_673 : f32 = u_xlat34;
  let x_676 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_673 * 2.0f) + -(x_676));
  let x_681 : f32 = u_xlat1.x;
  let x_683 : f32 = u_xlat3.w;
  u_xlat12 = (x_681 * x_683);
  let x_688 : f32 = u_xlat12;
  u_xlatb23.x = (x_688 >= 0.400000006f);
  let x_695 : bool = u_xlatb23.x;
  let x_696 : f32 = u_xlat12;
  u_xlat23.x = select(0.0f, x_696, x_695);
  let x_700 : f32 = u_xlat3.w;
  let x_702 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_700 * x_702) + -0.400000006f);
  let x_707 : f32 = u_xlat12;
  u_xlat34 = dpdxCoarse(x_707);
  let x_709 : f32 = u_xlat12;
  u_xlat12 = dpdyCoarse(x_709);
  let x_711 : f32 = u_xlat12;
  let x_713 : f32 = u_xlat34;
  u_xlat12 = (abs(x_711) + abs(x_713));
  let x_716 : f32 = u_xlat12;
  u_xlat12 = max(x_716, 0.0001f);
  let x_720 : f32 = u_xlat1.x;
  let x_721 : f32 = u_xlat12;
  u_xlat1.x = (x_720 / x_721);
  let x_725 : f32 = u_xlat1.x;
  u_xlat1.x = (x_725 + 0.5f);
  let x_729 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_729, 0.0f, 1.0f);
  let x_734 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb12 = !((x_734 == 0.0f));
  let x_736 : bool = u_xlatb12;
  if (x_736) {
    let x_741 : f32 = u_xlat1.x;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat23.x;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  u_xlat1.x = x_745;
  let x_748 : f32 = u_xlat1.x;
  u_xlat23.x = (x_748 + -0.0001f);
  let x_753 : f32 = u_xlat23.x;
  u_xlatb23.x = (x_753 < 0.0f);
  let x_757 : bool = u_xlatb23.x;
  if (((select(0i, 1i, x_757) * -1i) != 0i)) {
    discard;
  }
  let x_767 : f32 = vs_INTERP2.w;
  u_xlatb23.x = (0.0f < x_767);
  let x_771 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb23.y = (x_771 >= 0.0f);
  let x_775 : bool = u_xlatb23.x;
  u_xlat23.x = select(-1.0f, 1.0f, x_775);
  let x_779 : bool = u_xlatb23.y;
  u_xlat23.y = select(-1.0f, 1.0f, x_779);
  let x_783 : f32 = u_xlat23.y;
  let x_785 : f32 = u_xlat23.x;
  u_xlat23.x = (x_783 * x_785);
  let x_788 : vec3<f32> = vs_INTERP1;
  let x_790 : vec4<f32> = vs_INTERP2;
  let x_792 : vec3<f32> = (vec3<f32>(x_788.z, x_788.x, x_788.y) * vec3<f32>(x_790.y, x_790.z, x_790.x));
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec3<f32> = vs_INTERP1;
  let x_797 : vec4<f32> = vs_INTERP2;
  let x_800 : vec4<f32> = u_xlat3;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.y, x_795.z, x_795.x) * vec3<f32>(x_797.z, x_797.x, x_797.y)) + -(vec3<f32>(x_800.x, x_800.y, x_800.z)));
  let x_804 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec2<f32> = u_xlat23;
  let x_808 : vec4<f32> = u_xlat3;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.x, x_806.x) * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat3;
  let x_815 : vec3<f32> = u_xlat16;
  let x_817 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815.y, x_815.y, x_815.y));
  let x_818 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec3<f32> = u_xlat16;
  let x_822 : vec4<f32> = vs_INTERP2;
  let x_825 : vec4<f32> = u_xlat3;
  let x_827 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec3<f32> = u_xlat16;
  let x_832 : vec3<f32> = vs_INTERP1;
  let x_834 : vec4<f32> = u_xlat3;
  let x_836 : vec3<f32> = ((vec3<f32>(x_830.z, x_830.z, x_830.z) * x_832) + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat3;
  let x_841 : vec4<f32> = u_xlat3;
  u_xlat23.x = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_846 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_846);
  let x_849 : vec2<f32> = u_xlat23;
  let x_851 : vec4<f32> = u_xlat3;
  let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.x, x_849.x) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  u_xlat3.w = 1.0f;
  let x_859 : vec4<f32> = x_161.unity_SHAr;
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_859, x_860);
  let x_865 : vec4<f32> = x_161.unity_SHAg;
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_865, x_866);
  let x_871 : vec4<f32> = x_161.unity_SHAb;
  let x_872 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_871, x_872);
  let x_875 : vec4<f32> = u_xlat3;
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_875.y, x_875.z, x_875.z, x_875.x) * vec4<f32>(x_877.x, x_877.y, x_877.z, x_877.z));
  let x_882 : vec4<f32> = x_161.unity_SHBr;
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_882, x_883);
  let x_888 : vec4<f32> = x_161.unity_SHBg;
  let x_889 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_888, x_889);
  let x_893 : vec4<f32> = x_161.unity_SHBb;
  let x_894 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_893, x_894);
  let x_898 : f32 = u_xlat3.y;
  let x_900 : f32 = u_xlat3.y;
  u_xlat23.x = (x_898 * x_900);
  let x_904 : f32 = u_xlat3.x;
  let x_906 : f32 = u_xlat3.x;
  let x_909 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_904 * x_906) + -(x_909));
  let x_915 : vec4<f32> = x_161.unity_SHC;
  let x_917 : vec2<f32> = u_xlat23;
  let x_920 : vec4<f32> = u_xlat8;
  u_xlat16 = ((vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917.x, x_917.x, x_917.x)) + vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec3<f32> = u_xlat16;
  let x_924 : vec4<f32> = u_xlat6;
  u_xlat16 = (x_923 + vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_927, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_931 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_932.x, x_932.y));
  let x_937 : vec2<f32> = u_xlat23;
  let x_938 : vec4<f32> = hlslcc_FragCoord;
  let x_940 : vec2<f32> = (x_937 * vec2<f32>(x_938.x, x_938.y));
  let x_941 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
  let x_944 : f32 = u_xlat6.y;
  let x_947 : f32 = x_90.x_ScaleBiasRt.x;
  let x_950 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_944 * x_947) + x_950);
  let x_954 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_954) + 1.0f);
  let x_959 : f32 = u_xlat5.x;
  u_xlat5.x = x_959;
  let x_962 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_962, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat1.x;
  u_xlat1.x = x_966;
  let x_969 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_969, 0.0f, 1.0f);
  let x_972 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_972 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_977 : f32 = u_xlat5.x;
  u_xlat23.x = (-(x_977) + 1.0f);
  let x_982 : f32 = u_xlat23.x;
  let x_984 : f32 = u_xlat23.x;
  u_xlat34 = (x_982 * x_984);
  let x_986 : f32 = u_xlat34;
  u_xlat34 = max(x_986, 0.0078125f);
  let x_989 : f32 = u_xlat34;
  let x_990 : f32 = u_xlat34;
  u_xlat35 = (x_989 * x_990);
  let x_994 : f32 = u_xlat5.x;
  u_xlat36 = (x_994 + 0.040000021f);
  let x_997 : f32 = u_xlat36;
  u_xlat36 = min(x_997, 1.0f);
  let x_1000 : f32 = u_xlat34;
  u_xlat37 = ((x_1000 * 4.0f) + 2.0f);
  let x_1008 : vec4<f32> = u_xlat6;
  let x_1011 : f32 = x_90.x_GlobalMipBias.x;
  let x_1012 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1008.x, x_1008.z), x_1011);
  u_xlat5.x = x_1012.x;
  let x_1016 : f32 = u_xlat5.x;
  u_xlat6.x = (x_1016 + -1.0f);
  let x_1020 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1022 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1020 * x_1022) + 1.0f);
  let x_1027 : f32 = u_xlat5.x;
  let x_1029 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1027, x_1029);
  let x_1033 : vec3<f32> = vs_INTERP0;
  let x_1035 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1033 + -(x_1035));
  let x_1038 : vec3<f32> = u_xlat17;
  let x_1039 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1038, x_1039);
  let x_1043 : f32 = u_xlat17.x;
  let x_1045 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1048 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1043 * x_1045) + x_1048);
  let x_1052 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1052, 0.0f, 1.0f);
  let x_1056 : f32 = u_xlat33;
  u_xlat28 = (-(x_1056) + 1.0f);
  let x_1060 : f32 = u_xlat17.x;
  let x_1061 : f32 = u_xlat28;
  let x_1063 : f32 = u_xlat33;
  u_xlat33 = ((x_1060 * x_1061) + x_1063);
  let x_1065 : vec4<f32> = u_xlat6;
  let x_1068 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1065.x, x_1065.x, x_1065.x) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec3<f32> = u_xlat2;
  let x_1073 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1071), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1078 : f32 = u_xlat7.x;
  let x_1080 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1078 + x_1080);
  let x_1083 : vec4<f32> = u_xlat3;
  let x_1085 : vec4<f32> = u_xlat7;
  let x_1089 : vec3<f32> = u_xlat2;
  let x_1091 : vec3<f32> = ((vec3<f32>(x_1083.x, x_1083.y, x_1083.z) * -(vec3<f32>(x_1085.x, x_1085.x, x_1085.x))) + -(x_1089));
  let x_1092 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1095.x, x_1095.y, x_1095.z), x_1097);
  let x_1099 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1099, 0.0f, 1.0f);
  let x_1101 : f32 = u_xlat40;
  u_xlat40 = (-(x_1101) + 1.0f);
  let x_1104 : f32 = u_xlat40;
  let x_1105 : f32 = u_xlat40;
  u_xlat40 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat40;
  let x_1108 : f32 = u_xlat40;
  u_xlat40 = (x_1107 * x_1108);
  let x_1111 : f32 = u_xlat23.x;
  u_xlat8.x = ((-(x_1111) * 0.699999988f) + 1.700000048f);
  let x_1119 : f32 = u_xlat23.x;
  let x_1121 : f32 = u_xlat8.x;
  u_xlat23.x = (x_1119 * x_1121);
  let x_1125 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1125 * 6.0f);
  let x_1137 : vec4<f32> = u_xlat7;
  let x_1140 : f32 = u_xlat23.x;
  let x_1141 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1137.x, x_1137.y, x_1137.z), x_1140);
  u_xlat8 = x_1141;
  let x_1143 : f32 = u_xlat8.w;
  u_xlat23.x = (x_1143 + -1.0f);
  let x_1147 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1149 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1147 * x_1149) + 1.0f);
  let x_1154 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1154, 0.0f);
  let x_1158 : f32 = u_xlat23.x;
  u_xlat23.x = log2(x_1158);
  let x_1162 : f32 = u_xlat23.x;
  let x_1164 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat23.x = (x_1162 * x_1164);
  let x_1168 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_1168);
  let x_1172 : f32 = u_xlat23.x;
  let x_1174 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat23.x = (x_1172 * x_1174);
  let x_1177 : vec4<f32> = u_xlat8;
  let x_1179 : vec2<f32> = u_xlat23;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) * vec3<f32>(x_1179.x, x_1179.x, x_1179.x));
  let x_1182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : f32 = u_xlat34;
  let x_1186 : f32 = u_xlat34;
  u_xlat23 = ((vec2<f32>(x_1184, x_1184) * vec2<f32>(x_1186, x_1186)) + vec2<f32>(-1.0f, 1.0f));
  let x_1192 : f32 = u_xlat23.y;
  u_xlat34 = (1.0f / x_1192);
  let x_1194 : f32 = u_xlat36;
  u_xlat36 = (x_1194 + -0.039999999f);
  let x_1197 : f32 = u_xlat40;
  let x_1198 : f32 = u_xlat36;
  u_xlat36 = ((x_1197 * x_1198) + 0.039999999f);
  let x_1202 : f32 = u_xlat34;
  let x_1203 : f32 = u_xlat36;
  u_xlat34 = (x_1202 * x_1203);
  let x_1205 : f32 = u_xlat34;
  let x_1207 : vec4<f32> = u_xlat7;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205, x_1205, x_1205) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec3<f32> = u_xlat16;
  let x_1213 : vec3<f32> = u_xlat4;
  let x_1215 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1212 * x_1213) + vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : f32 = u_xlat33;
  let x_1220 : f32 = x_161.unity_LightData.z;
  u_xlat33 = (x_1218 * x_1220);
  let x_1222 : vec4<f32> = u_xlat3;
  let x_1225 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1222.x, x_1222.y, x_1222.z), vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1228, 0.0f, 1.0f);
  let x_1230 : f32 = u_xlat33;
  let x_1231 : f32 = u_xlat34;
  u_xlat33 = (x_1230 * x_1231);
  let x_1233 : f32 = u_xlat33;
  let x_1235 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1233, x_1233, x_1233) * x_1235);
  let x_1237 : vec3<f32> = u_xlat2;
  let x_1239 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1241 : vec3<f32> = (x_1237 + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec4<f32> = u_xlat7;
  let x_1246 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1244.x, x_1244.y, x_1244.z), vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : f32 = u_xlat33;
  u_xlat33 = max(x_1249, 1.17549435e-37f);
  let x_1252 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1252);
  let x_1254 : f32 = u_xlat33;
  let x_1256 : vec4<f32> = u_xlat7;
  let x_1258 : vec3<f32> = (vec3<f32>(x_1254, x_1254, x_1254) * vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec4<f32> = u_xlat3;
  let x_1263 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1266, 0.0f, 1.0f);
  let x_1269 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1271 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1269.x, x_1269.y, x_1269.z), vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1274, 0.0f, 1.0f);
  let x_1276 : f32 = u_xlat33;
  let x_1277 : f32 = u_xlat33;
  u_xlat33 = (x_1276 * x_1277);
  let x_1279 : f32 = u_xlat33;
  let x_1281 : f32 = u_xlat23.x;
  u_xlat33 = ((x_1279 * x_1281) + 1.000010014f);
  let x_1285 : f32 = u_xlat34;
  let x_1286 : f32 = u_xlat34;
  u_xlat34 = (x_1285 * x_1286);
  let x_1288 : f32 = u_xlat33;
  let x_1289 : f32 = u_xlat33;
  u_xlat33 = (x_1288 * x_1289);
  let x_1291 : f32 = u_xlat34;
  u_xlat34 = max(x_1291, 0.100000001f);
  let x_1294 : f32 = u_xlat33;
  let x_1295 : f32 = u_xlat34;
  u_xlat33 = (x_1294 * x_1295);
  let x_1297 : f32 = u_xlat37;
  let x_1298 : f32 = u_xlat33;
  u_xlat33 = (x_1297 * x_1298);
  let x_1300 : f32 = u_xlat35;
  let x_1301 : f32 = u_xlat33;
  u_xlat33 = (x_1300 / x_1301);
  let x_1303 : f32 = u_xlat33;
  let x_1307 : vec3<f32> = u_xlat4;
  let x_1308 : vec3<f32> = ((vec3<f32>(x_1303, x_1303, x_1303) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1307);
  let x_1309 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : vec3<f32> = u_xlat17;
  let x_1312 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1311 * vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
  let x_1317 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1319 : f32 = x_161.unity_LightData.y;
  u_xlat33 = min(x_1317, x_1319);
  let x_1321 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1321));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1333 : u32 = u_xlatu_loop_1;
    let x_1334 : u32 = u_xlatu33;
    if ((x_1333 < x_1334)) {
    } else {
      break;
    }
    let x_1337 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1337 >> 2u);
    let x_1340 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1340 & 3u));
    let x_1343 : u32 = u_xlatu36;
    let x_1346 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1343)];
    let x_1356 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1361 : vec4<u32> = indexable[x_1356];
    u_xlat36 = dot(x_1346, bitcast<vec4<f32>>(x_1361));
    let x_1365 : f32 = u_xlat36;
    u_xlati36 = i32(x_1365);
    let x_1367 : vec3<f32> = vs_INTERP0;
    let x_1379 : i32 = u_xlati36;
    let x_1381 : vec4<f32> = x_1378.x_AdditionalLightsPosition[x_1379];
    let x_1384 : i32 = u_xlati36;
    let x_1386 : vec4<f32> = x_1378.x_AdditionalLightsPosition[x_1384];
    let x_1388 : vec3<f32> = ((-(x_1367) * vec3<f32>(x_1381.w, x_1381.w, x_1381.w)) + vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1389 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
    let x_1391 : vec4<f32> = u_xlat8;
    let x_1393 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1391.x, x_1391.y, x_1391.z), vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : f32 = u_xlat40;
    u_xlat40 = max(x_1396, 6.10351562e-05f);
    let x_1400 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1400);
    let x_1402 : f32 = u_xlat41;
    let x_1404 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1402, x_1402, x_1402) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
    let x_1408 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1408);
    let x_1410 : f32 = u_xlat40;
    let x_1411 : i32 = u_xlati36;
    let x_1413 : f32 = x_1378.x_AdditionalLightsAttenuation[x_1411].x;
    u_xlat40 = (x_1410 * x_1413);
    let x_1415 : f32 = u_xlat40;
    let x_1417 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1415) * x_1417) + 1.0f);
    let x_1420 : f32 = u_xlat40;
    u_xlat40 = max(x_1420, 0.0f);
    let x_1422 : f32 = u_xlat40;
    let x_1423 : f32 = u_xlat40;
    u_xlat40 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat40;
    let x_1426 : f32 = u_xlat42;
    u_xlat40 = (x_1425 * x_1426);
    let x_1428 : i32 = u_xlati36;
    let x_1430 : vec4<f32> = x_1378.x_AdditionalLightsSpotDir[x_1428];
    let x_1432 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1430.x, x_1430.y, x_1430.z), x_1432);
    let x_1434 : f32 = u_xlat42;
    let x_1435 : i32 = u_xlati36;
    let x_1437 : f32 = x_1378.x_AdditionalLightsAttenuation[x_1435].z;
    let x_1439 : i32 = u_xlati36;
    let x_1441 : f32 = x_1378.x_AdditionalLightsAttenuation[x_1439].w;
    u_xlat42 = ((x_1434 * x_1437) + x_1441);
    let x_1443 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1443, 0.0f, 1.0f);
    let x_1445 : f32 = u_xlat42;
    let x_1446 : f32 = u_xlat42;
    u_xlat42 = (x_1445 * x_1446);
    let x_1448 : f32 = u_xlat40;
    let x_1449 : f32 = u_xlat42;
    u_xlat40 = (x_1448 * x_1449);
    let x_1452 : vec4<f32> = u_xlat6;
    let x_1454 : i32 = u_xlati36;
    let x_1456 : vec4<f32> = x_1378.x_AdditionalLightsColor[x_1454];
    u_xlat10 = (vec3<f32>(x_1452.x, x_1452.x, x_1452.x) * vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1459 : vec4<f32> = u_xlat3;
    let x_1461 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1459.x, x_1459.y, x_1459.z), x_1461);
    let x_1463 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1463, 0.0f, 1.0f);
    let x_1465 : f32 = u_xlat36;
    let x_1466 : f32 = u_xlat40;
    u_xlat36 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat36;
    let x_1470 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1468, x_1468, x_1468) * x_1470);
    let x_1472 : vec4<f32> = u_xlat8;
    let x_1474 : f32 = u_xlat41;
    let x_1477 : vec3<f32> = u_xlat2;
    let x_1478 : vec3<f32> = ((vec3<f32>(x_1472.x, x_1472.y, x_1472.z) * vec3<f32>(x_1474, x_1474, x_1474)) + x_1477);
    let x_1479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
    let x_1481 : vec4<f32> = u_xlat8;
    let x_1483 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : f32 = u_xlat36;
    u_xlat36 = max(x_1486, 1.17549435e-37f);
    let x_1488 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1488);
    let x_1490 : f32 = u_xlat36;
    let x_1492 : vec4<f32> = u_xlat8;
    let x_1494 : vec3<f32> = (vec3<f32>(x_1490, x_1490, x_1490) * vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
    let x_1497 : vec4<f32> = u_xlat3;
    let x_1499 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1497.x, x_1497.y, x_1497.z), vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
    let x_1502 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1502, 0.0f, 1.0f);
    let x_1504 : vec3<f32> = u_xlat9;
    let x_1505 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1504, vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1508, 0.0f, 1.0f);
    let x_1510 : f32 = u_xlat36;
    let x_1511 : f32 = u_xlat36;
    u_xlat36 = (x_1510 * x_1511);
    let x_1513 : f32 = u_xlat36;
    let x_1515 : f32 = u_xlat23.x;
    u_xlat36 = ((x_1513 * x_1515) + 1.000010014f);
    let x_1518 : f32 = u_xlat40;
    let x_1519 : f32 = u_xlat40;
    u_xlat40 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat36;
    let x_1522 : f32 = u_xlat36;
    u_xlat36 = (x_1521 * x_1522);
    let x_1524 : f32 = u_xlat40;
    u_xlat40 = max(x_1524, 0.100000001f);
    let x_1526 : f32 = u_xlat36;
    let x_1527 : f32 = u_xlat40;
    u_xlat36 = (x_1526 * x_1527);
    let x_1529 : f32 = u_xlat37;
    let x_1530 : f32 = u_xlat36;
    u_xlat36 = (x_1529 * x_1530);
    let x_1532 : f32 = u_xlat35;
    let x_1533 : f32 = u_xlat36;
    u_xlat36 = (x_1532 / x_1533);
    let x_1535 : f32 = u_xlat36;
    let x_1538 : vec3<f32> = u_xlat4;
    let x_1539 : vec3<f32> = ((vec3<f32>(x_1535, x_1535, x_1535) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1538);
    let x_1540 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
    let x_1542 : vec4<f32> = u_xlat8;
    let x_1544 : vec3<f32> = u_xlat10;
    let x_1546 : vec4<f32> = u_xlat7;
    let x_1548 : vec3<f32> = ((vec3<f32>(x_1542.x, x_1542.y, x_1542.z) * x_1544) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);

    continuing {
      let x_1551 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1551 + bitcast<u32>(1i));
    }
  }
  let x_1553 : vec3<f32> = u_xlat16;
  let x_1554 : vec4<f32> = u_xlat5;
  let x_1557 : vec3<f32> = u_xlat17;
  u_xlat2 = ((x_1553 * vec3<f32>(x_1554.x, x_1554.x, x_1554.x)) + x_1557);
  let x_1559 : vec4<f32> = u_xlat7;
  let x_1561 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1559.x, x_1559.y, x_1559.z) + x_1561);
  let x_1565 : vec4<f32> = vs_INTERP4;
  let x_1567 : vec3<f32> = u_xlat0;
  let x_1569 : vec3<f32> = u_xlat2;
  let x_1570 : vec3<f32> = ((vec3<f32>(x_1565.w, x_1565.w, x_1565.w) * x_1567) + x_1569);
  let x_1571 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : bool = u_xlatb12;
  if (x_1573) {
    let x_1578 : f32 = u_xlat1.x;
    x_1574 = x_1578;
  } else {
    x_1574 = 1.0f;
  }
  let x_1580 : f32 = x_1574;
  SV_Target0.w = x_1580;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}

