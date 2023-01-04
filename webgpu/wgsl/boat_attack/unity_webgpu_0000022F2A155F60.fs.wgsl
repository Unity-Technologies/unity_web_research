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

@group(1) @binding(1) var<uniform> x_1379 : AdditionalLights;

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
  var x_665 : f32;
  var u_xlatb23 : vec2<bool>;
  var u_xlat23 : vec2<f32>;
  var u_xlatb12 : bool;
  var x_738 : f32;
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
  var x_1575 : f32;
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
  let x_548 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_544) * vec3<f32>(x_548.x, x_548.y, x_548.x));
  let x_554 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_554);
  let x_558 : u32 = u_xlatu1.z;
  u_xlatu23 = (x_558 * 1025u);
  let x_562 : u32 = u_xlatu23;
  u_xlatu3 = (x_562 >> 6u);
  let x_566 : u32 = u_xlatu23;
  let x_567 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_566 ^ x_567));
  let x_570 : i32 = u_xlati23;
  u_xlatu23 = (bitcast<u32>(x_570) * 9u);
  let x_574 : u32 = u_xlatu23;
  u_xlatu3 = (x_574 >> 11u);
  let x_577 : u32 = u_xlatu23;
  let x_578 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_577 ^ x_578));
  let x_581 : i32 = u_xlati23;
  u_xlati23 = (x_581 * 32769i);
  let x_585 : i32 = u_xlati23;
  let x_588 : u32 = u_xlatu1.y;
  u_xlati12 = bitcast<i32>((bitcast<u32>(x_585) ^ x_588));
  let x_592 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_592) * 1025u);
  let x_595 : u32 = u_xlatu12;
  u_xlatu23 = (x_595 >> 6u);
  let x_597 : u32 = u_xlatu23;
  let x_598 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_597 ^ x_598));
  let x_601 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_601) * 9u);
  let x_604 : u32 = u_xlatu12;
  u_xlatu23 = (x_604 >> 11u);
  let x_606 : u32 = u_xlatu23;
  let x_607 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_606 ^ x_607));
  let x_610 : i32 = u_xlati12;
  u_xlati12 = (x_610 * 32769i);
  let x_613 : i32 = u_xlati12;
  let x_616 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_613) ^ x_616));
  let x_619 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_619) * 1025u);
  let x_624 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_624 >> 6u);
  let x_626 : u32 = u_xlatu12;
  let x_628 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_626 ^ x_628));
  let x_631 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_631) * 9u);
  let x_636 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_636 >> 11u);
  let x_638 : u32 = u_xlatu12;
  let x_640 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_638 ^ x_640));
  let x_643 : i32 = u_xlati1;
  u_xlati1 = (x_643 * 32769i);
  param = 1065353216i;
  let x_649 : i32 = u_xlati1;
  param_1 = x_649;
  param_2 = 0i;
  param_3 = 23i;
  let x_652 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_652);
  let x_656 : f32 = u_xlat1.x;
  u_xlat1.x = (x_656 + -1.0f);
  let x_661 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_661) + 1.0f);
  let x_664 : bool = u_xlatb35;
  if (x_664) {
    let x_669 : f32 = u_xlat1.x;
    x_665 = x_669;
  } else {
    let x_671 : f32 = u_xlat12;
    x_665 = x_671;
  }
  let x_672 : f32 = x_665;
  u_xlat1.x = x_672;
  let x_674 : f32 = u_xlat34;
  let x_677 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_674 * 2.0f) + -(x_677));
  let x_682 : f32 = u_xlat1.x;
  let x_684 : f32 = u_xlat3.w;
  u_xlat12 = (x_682 * x_684);
  let x_689 : f32 = u_xlat12;
  u_xlatb23.x = (x_689 >= 0.400000006f);
  let x_696 : bool = u_xlatb23.x;
  let x_697 : f32 = u_xlat12;
  u_xlat23.x = select(0.0f, x_697, x_696);
  let x_701 : f32 = u_xlat3.w;
  let x_703 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_701 * x_703) + -0.400000006f);
  let x_708 : f32 = u_xlat12;
  u_xlat34 = dpdxCoarse(x_708);
  let x_710 : f32 = u_xlat12;
  u_xlat12 = dpdyCoarse(x_710);
  let x_712 : f32 = u_xlat12;
  let x_714 : f32 = u_xlat34;
  u_xlat12 = (abs(x_712) + abs(x_714));
  let x_717 : f32 = u_xlat12;
  u_xlat12 = max(x_717, 0.0001f);
  let x_721 : f32 = u_xlat1.x;
  let x_722 : f32 = u_xlat12;
  u_xlat1.x = (x_721 / x_722);
  let x_726 : f32 = u_xlat1.x;
  u_xlat1.x = (x_726 + 0.5f);
  let x_730 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_730, 0.0f, 1.0f);
  let x_735 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb12 = !((x_735 == 0.0f));
  let x_737 : bool = u_xlatb12;
  if (x_737) {
    let x_742 : f32 = u_xlat1.x;
    x_738 = x_742;
  } else {
    let x_745 : f32 = u_xlat23.x;
    x_738 = x_745;
  }
  let x_746 : f32 = x_738;
  u_xlat1.x = x_746;
  let x_749 : f32 = u_xlat1.x;
  u_xlat23.x = (x_749 + -0.0001f);
  let x_754 : f32 = u_xlat23.x;
  u_xlatb23.x = (x_754 < 0.0f);
  let x_758 : bool = u_xlatb23.x;
  if (((select(0i, 1i, x_758) * -1i) != 0i)) {
    discard;
  }
  let x_768 : f32 = vs_INTERP2.w;
  u_xlatb23.x = (0.0f < x_768);
  let x_772 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb23.y = (x_772 >= 0.0f);
  let x_776 : bool = u_xlatb23.x;
  u_xlat23.x = select(-1.0f, 1.0f, x_776);
  let x_780 : bool = u_xlatb23.y;
  u_xlat23.y = select(-1.0f, 1.0f, x_780);
  let x_784 : f32 = u_xlat23.y;
  let x_786 : f32 = u_xlat23.x;
  u_xlat23.x = (x_784 * x_786);
  let x_789 : vec3<f32> = vs_INTERP1;
  let x_791 : vec4<f32> = vs_INTERP2;
  let x_793 : vec3<f32> = (vec3<f32>(x_789.z, x_789.x, x_789.y) * vec3<f32>(x_791.y, x_791.z, x_791.x));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = vs_INTERP1;
  let x_798 : vec4<f32> = vs_INTERP2;
  let x_801 : vec4<f32> = u_xlat3;
  let x_804 : vec3<f32> = ((vec3<f32>(x_796.y, x_796.z, x_796.x) * vec3<f32>(x_798.z, x_798.x, x_798.y)) + -(vec3<f32>(x_801.x, x_801.y, x_801.z)));
  let x_805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec2<f32> = u_xlat23;
  let x_809 : vec4<f32> = u_xlat3;
  let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.x, x_807.x) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat3;
  let x_816 : vec3<f32> = u_xlat16;
  let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.y, x_816.y, x_816.y));
  let x_819 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat16;
  let x_823 : vec4<f32> = vs_INTERP2;
  let x_826 : vec4<f32> = u_xlat3;
  let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec3<f32> = u_xlat16;
  let x_833 : vec3<f32> = vs_INTERP1;
  let x_835 : vec4<f32> = u_xlat3;
  let x_837 : vec3<f32> = ((vec3<f32>(x_831.z, x_831.z, x_831.z) * x_833) + vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat3;
  let x_842 : vec4<f32> = u_xlat3;
  u_xlat23.x = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_847 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_847);
  let x_850 : vec2<f32> = u_xlat23;
  let x_852 : vec4<f32> = u_xlat3;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.x, x_850.x) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  u_xlat3.w = 1.0f;
  let x_860 : vec4<f32> = x_161.unity_SHAr;
  let x_861 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_860, x_861);
  let x_866 : vec4<f32> = x_161.unity_SHAg;
  let x_867 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_866, x_867);
  let x_872 : vec4<f32> = x_161.unity_SHAb;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_872, x_873);
  let x_876 : vec4<f32> = u_xlat3;
  let x_878 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_876.y, x_876.z, x_876.z, x_876.x) * vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.z));
  let x_883 : vec4<f32> = x_161.unity_SHBr;
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_883, x_884);
  let x_889 : vec4<f32> = x_161.unity_SHBg;
  let x_890 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_889, x_890);
  let x_894 : vec4<f32> = x_161.unity_SHBb;
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_894, x_895);
  let x_899 : f32 = u_xlat3.y;
  let x_901 : f32 = u_xlat3.y;
  u_xlat23.x = (x_899 * x_901);
  let x_905 : f32 = u_xlat3.x;
  let x_907 : f32 = u_xlat3.x;
  let x_910 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_905 * x_907) + -(x_910));
  let x_916 : vec4<f32> = x_161.unity_SHC;
  let x_918 : vec2<f32> = u_xlat23;
  let x_921 : vec4<f32> = u_xlat8;
  u_xlat16 = ((vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918.x, x_918.x, x_918.x)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec3<f32> = u_xlat16;
  let x_925 : vec4<f32> = u_xlat6;
  u_xlat16 = (x_924 + vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_928, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_932 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_933 : vec2<f32> = vec2<f32>(x_932.x, x_932.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_933.x, x_933.y));
  let x_938 : vec2<f32> = u_xlat23;
  let x_939 : vec4<f32> = hlslcc_FragCoord;
  let x_941 : vec2<f32> = (x_938 * vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
  let x_945 : f32 = u_xlat6.y;
  let x_948 : f32 = x_90.x_ScaleBiasRt.x;
  let x_951 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_945 * x_948) + x_951);
  let x_955 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_955) + 1.0f);
  let x_960 : f32 = u_xlat5.x;
  u_xlat5.x = x_960;
  let x_963 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_963, 0.0f, 1.0f);
  let x_967 : f32 = u_xlat1.x;
  u_xlat1.x = x_967;
  let x_970 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_970, 0.0f, 1.0f);
  let x_973 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_973 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_978 : f32 = u_xlat5.x;
  u_xlat23.x = (-(x_978) + 1.0f);
  let x_983 : f32 = u_xlat23.x;
  let x_985 : f32 = u_xlat23.x;
  u_xlat34 = (x_983 * x_985);
  let x_987 : f32 = u_xlat34;
  u_xlat34 = max(x_987, 0.0078125f);
  let x_990 : f32 = u_xlat34;
  let x_991 : f32 = u_xlat34;
  u_xlat35 = (x_990 * x_991);
  let x_995 : f32 = u_xlat5.x;
  u_xlat36 = (x_995 + 0.040000021f);
  let x_998 : f32 = u_xlat36;
  u_xlat36 = min(x_998, 1.0f);
  let x_1001 : f32 = u_xlat34;
  u_xlat37 = ((x_1001 * 4.0f) + 2.0f);
  let x_1009 : vec4<f32> = u_xlat6;
  let x_1012 : f32 = x_90.x_GlobalMipBias.x;
  let x_1013 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1009.x, x_1009.z), x_1012);
  u_xlat5.x = x_1013.x;
  let x_1017 : f32 = u_xlat5.x;
  u_xlat6.x = (x_1017 + -1.0f);
  let x_1021 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1023 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1021 * x_1023) + 1.0f);
  let x_1028 : f32 = u_xlat5.x;
  let x_1030 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1028, x_1030);
  let x_1034 : vec3<f32> = vs_INTERP0;
  let x_1036 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1034 + -(x_1036));
  let x_1039 : vec3<f32> = u_xlat17;
  let x_1040 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1039, x_1040);
  let x_1044 : f32 = u_xlat17.x;
  let x_1046 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1049 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1044 * x_1046) + x_1049);
  let x_1053 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1053, 0.0f, 1.0f);
  let x_1057 : f32 = u_xlat33;
  u_xlat28 = (-(x_1057) + 1.0f);
  let x_1061 : f32 = u_xlat17.x;
  let x_1062 : f32 = u_xlat28;
  let x_1064 : f32 = u_xlat33;
  u_xlat33 = ((x_1061 * x_1062) + x_1064);
  let x_1066 : vec4<f32> = u_xlat6;
  let x_1069 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1066.x, x_1066.x, x_1066.x) * vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec3<f32> = u_xlat2;
  let x_1074 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1072), vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1079 : f32 = u_xlat7.x;
  let x_1081 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1079 + x_1081);
  let x_1084 : vec4<f32> = u_xlat3;
  let x_1086 : vec4<f32> = u_xlat7;
  let x_1090 : vec3<f32> = u_xlat2;
  let x_1092 : vec3<f32> = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * -(vec3<f32>(x_1086.x, x_1086.x, x_1086.x))) + -(x_1090));
  let x_1093 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1096 : vec4<f32> = u_xlat3;
  let x_1098 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), x_1098);
  let x_1100 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1100, 0.0f, 1.0f);
  let x_1102 : f32 = u_xlat40;
  u_xlat40 = (-(x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat40;
  let x_1106 : f32 = u_xlat40;
  u_xlat40 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat40;
  let x_1109 : f32 = u_xlat40;
  u_xlat40 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat23.x;
  u_xlat8.x = ((-(x_1112) * 0.699999988f) + 1.700000048f);
  let x_1120 : f32 = u_xlat23.x;
  let x_1122 : f32 = u_xlat8.x;
  u_xlat23.x = (x_1120 * x_1122);
  let x_1126 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1126 * 6.0f);
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1141 : f32 = u_xlat23.x;
  let x_1142 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1138.x, x_1138.y, x_1138.z), x_1141);
  u_xlat8 = x_1142;
  let x_1144 : f32 = u_xlat8.w;
  u_xlat23.x = (x_1144 + -1.0f);
  let x_1148 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1150 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1148 * x_1150) + 1.0f);
  let x_1155 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1155, 0.0f);
  let x_1159 : f32 = u_xlat23.x;
  u_xlat23.x = log2(x_1159);
  let x_1163 : f32 = u_xlat23.x;
  let x_1165 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat23.x = (x_1163 * x_1165);
  let x_1169 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_1169);
  let x_1173 : f32 = u_xlat23.x;
  let x_1175 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat23.x = (x_1173 * x_1175);
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : vec2<f32> = u_xlat23;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * vec3<f32>(x_1180.x, x_1180.x, x_1180.x));
  let x_1183 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1185 : f32 = u_xlat34;
  let x_1187 : f32 = u_xlat34;
  u_xlat23 = ((vec2<f32>(x_1185, x_1185) * vec2<f32>(x_1187, x_1187)) + vec2<f32>(-1.0f, 1.0f));
  let x_1193 : f32 = u_xlat23.y;
  u_xlat34 = (1.0f / x_1193);
  let x_1195 : f32 = u_xlat36;
  u_xlat36 = (x_1195 + -0.039999999f);
  let x_1198 : f32 = u_xlat40;
  let x_1199 : f32 = u_xlat36;
  u_xlat36 = ((x_1198 * x_1199) + 0.039999999f);
  let x_1203 : f32 = u_xlat34;
  let x_1204 : f32 = u_xlat36;
  u_xlat34 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat34;
  let x_1208 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec3<f32> = u_xlat16;
  let x_1214 : vec3<f32> = u_xlat4;
  let x_1216 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1213 * x_1214) + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : f32 = u_xlat33;
  let x_1221 : f32 = x_161.unity_LightData.z;
  u_xlat33 = (x_1219 * x_1221);
  let x_1223 : vec4<f32> = u_xlat3;
  let x_1226 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1223.x, x_1223.y, x_1223.z), vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1229, 0.0f, 1.0f);
  let x_1231 : f32 = u_xlat33;
  let x_1232 : f32 = u_xlat34;
  u_xlat33 = (x_1231 * x_1232);
  let x_1234 : f32 = u_xlat33;
  let x_1236 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1234, x_1234, x_1234) * x_1236);
  let x_1238 : vec3<f32> = u_xlat2;
  let x_1240 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1242 : vec3<f32> = (x_1238 + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec4<f32> = u_xlat7;
  let x_1247 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1245.x, x_1245.y, x_1245.z), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : f32 = u_xlat33;
  u_xlat33 = max(x_1250, 1.17549435e-37f);
  let x_1253 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1253);
  let x_1255 : f32 = u_xlat33;
  let x_1257 : vec4<f32> = u_xlat7;
  let x_1259 : vec3<f32> = (vec3<f32>(x_1255, x_1255, x_1255) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1260 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1262 : vec4<f32> = u_xlat3;
  let x_1264 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1267, 0.0f, 1.0f);
  let x_1270 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1272 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1270.x, x_1270.y, x_1270.z), vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1275, 0.0f, 1.0f);
  let x_1277 : f32 = u_xlat33;
  let x_1278 : f32 = u_xlat33;
  u_xlat33 = (x_1277 * x_1278);
  let x_1280 : f32 = u_xlat33;
  let x_1282 : f32 = u_xlat23.x;
  u_xlat33 = ((x_1280 * x_1282) + 1.000010014f);
  let x_1286 : f32 = u_xlat34;
  let x_1287 : f32 = u_xlat34;
  u_xlat34 = (x_1286 * x_1287);
  let x_1289 : f32 = u_xlat33;
  let x_1290 : f32 = u_xlat33;
  u_xlat33 = (x_1289 * x_1290);
  let x_1292 : f32 = u_xlat34;
  u_xlat34 = max(x_1292, 0.100000001f);
  let x_1295 : f32 = u_xlat33;
  let x_1296 : f32 = u_xlat34;
  u_xlat33 = (x_1295 * x_1296);
  let x_1298 : f32 = u_xlat37;
  let x_1299 : f32 = u_xlat33;
  u_xlat33 = (x_1298 * x_1299);
  let x_1301 : f32 = u_xlat35;
  let x_1302 : f32 = u_xlat33;
  u_xlat33 = (x_1301 / x_1302);
  let x_1304 : f32 = u_xlat33;
  let x_1308 : vec3<f32> = u_xlat4;
  let x_1309 : vec3<f32> = ((vec3<f32>(x_1304, x_1304, x_1304) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1308);
  let x_1310 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1312 : vec3<f32> = u_xlat17;
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1312 * vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1318 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1320 : f32 = x_161.unity_LightData.y;
  u_xlat33 = min(x_1318, x_1320);
  let x_1322 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1322));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1334 : u32 = u_xlatu_loop_1;
    let x_1335 : u32 = u_xlatu33;
    if ((x_1334 < x_1335)) {
    } else {
      break;
    }
    let x_1338 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1338 >> 2u);
    let x_1341 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1341 & 3u));
    let x_1344 : u32 = u_xlatu36;
    let x_1347 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1344)];
    let x_1357 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1362 : vec4<u32> = indexable[x_1357];
    u_xlat36 = dot(x_1347, bitcast<vec4<f32>>(x_1362));
    let x_1366 : f32 = u_xlat36;
    u_xlati36 = i32(x_1366);
    let x_1368 : vec3<f32> = vs_INTERP0;
    let x_1380 : i32 = u_xlati36;
    let x_1382 : vec4<f32> = x_1379.x_AdditionalLightsPosition[x_1380];
    let x_1385 : i32 = u_xlati36;
    let x_1387 : vec4<f32> = x_1379.x_AdditionalLightsPosition[x_1385];
    let x_1389 : vec3<f32> = ((-(x_1368) * vec3<f32>(x_1382.w, x_1382.w, x_1382.w)) + vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
    let x_1390 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
    let x_1392 : vec4<f32> = u_xlat8;
    let x_1394 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1392.x, x_1392.y, x_1392.z), vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : f32 = u_xlat40;
    u_xlat40 = max(x_1397, 6.10351562e-05f);
    let x_1401 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1401);
    let x_1403 : f32 = u_xlat41;
    let x_1405 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1403, x_1403, x_1403) * vec3<f32>(x_1405.x, x_1405.y, x_1405.z));
    let x_1409 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1409);
    let x_1411 : f32 = u_xlat40;
    let x_1412 : i32 = u_xlati36;
    let x_1414 : f32 = x_1379.x_AdditionalLightsAttenuation[x_1412].x;
    u_xlat40 = (x_1411 * x_1414);
    let x_1416 : f32 = u_xlat40;
    let x_1418 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1416) * x_1418) + 1.0f);
    let x_1421 : f32 = u_xlat40;
    u_xlat40 = max(x_1421, 0.0f);
    let x_1423 : f32 = u_xlat40;
    let x_1424 : f32 = u_xlat40;
    u_xlat40 = (x_1423 * x_1424);
    let x_1426 : f32 = u_xlat40;
    let x_1427 : f32 = u_xlat42;
    u_xlat40 = (x_1426 * x_1427);
    let x_1429 : i32 = u_xlati36;
    let x_1431 : vec4<f32> = x_1379.x_AdditionalLightsSpotDir[x_1429];
    let x_1433 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1431.x, x_1431.y, x_1431.z), x_1433);
    let x_1435 : f32 = u_xlat42;
    let x_1436 : i32 = u_xlati36;
    let x_1438 : f32 = x_1379.x_AdditionalLightsAttenuation[x_1436].z;
    let x_1440 : i32 = u_xlati36;
    let x_1442 : f32 = x_1379.x_AdditionalLightsAttenuation[x_1440].w;
    u_xlat42 = ((x_1435 * x_1438) + x_1442);
    let x_1444 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1444, 0.0f, 1.0f);
    let x_1446 : f32 = u_xlat42;
    let x_1447 : f32 = u_xlat42;
    u_xlat42 = (x_1446 * x_1447);
    let x_1449 : f32 = u_xlat40;
    let x_1450 : f32 = u_xlat42;
    u_xlat40 = (x_1449 * x_1450);
    let x_1453 : vec4<f32> = u_xlat6;
    let x_1455 : i32 = u_xlati36;
    let x_1457 : vec4<f32> = x_1379.x_AdditionalLightsColor[x_1455];
    u_xlat10 = (vec3<f32>(x_1453.x, x_1453.x, x_1453.x) * vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
    let x_1460 : vec4<f32> = u_xlat3;
    let x_1462 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1460.x, x_1460.y, x_1460.z), x_1462);
    let x_1464 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1464, 0.0f, 1.0f);
    let x_1466 : f32 = u_xlat36;
    let x_1467 : f32 = u_xlat40;
    u_xlat36 = (x_1466 * x_1467);
    let x_1469 : f32 = u_xlat36;
    let x_1471 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1469, x_1469, x_1469) * x_1471);
    let x_1473 : vec4<f32> = u_xlat8;
    let x_1475 : f32 = u_xlat41;
    let x_1478 : vec3<f32> = u_xlat2;
    let x_1479 : vec3<f32> = ((vec3<f32>(x_1473.x, x_1473.y, x_1473.z) * vec3<f32>(x_1475, x_1475, x_1475)) + x_1478);
    let x_1480 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
    let x_1482 : vec4<f32> = u_xlat8;
    let x_1484 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1482.x, x_1482.y, x_1482.z), vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
    let x_1487 : f32 = u_xlat36;
    u_xlat36 = max(x_1487, 1.17549435e-37f);
    let x_1489 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1489);
    let x_1491 : f32 = u_xlat36;
    let x_1493 : vec4<f32> = u_xlat8;
    let x_1495 : vec3<f32> = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    let x_1498 : vec4<f32> = u_xlat3;
    let x_1500 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1498.x, x_1498.y, x_1498.z), vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
    let x_1503 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1503, 0.0f, 1.0f);
    let x_1505 : vec3<f32> = u_xlat9;
    let x_1506 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1505, vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1509, 0.0f, 1.0f);
    let x_1511 : f32 = u_xlat36;
    let x_1512 : f32 = u_xlat36;
    u_xlat36 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat36;
    let x_1516 : f32 = u_xlat23.x;
    u_xlat36 = ((x_1514 * x_1516) + 1.000010014f);
    let x_1519 : f32 = u_xlat40;
    let x_1520 : f32 = u_xlat40;
    u_xlat40 = (x_1519 * x_1520);
    let x_1522 : f32 = u_xlat36;
    let x_1523 : f32 = u_xlat36;
    u_xlat36 = (x_1522 * x_1523);
    let x_1525 : f32 = u_xlat40;
    u_xlat40 = max(x_1525, 0.100000001f);
    let x_1527 : f32 = u_xlat36;
    let x_1528 : f32 = u_xlat40;
    u_xlat36 = (x_1527 * x_1528);
    let x_1530 : f32 = u_xlat37;
    let x_1531 : f32 = u_xlat36;
    u_xlat36 = (x_1530 * x_1531);
    let x_1533 : f32 = u_xlat35;
    let x_1534 : f32 = u_xlat36;
    u_xlat36 = (x_1533 / x_1534);
    let x_1536 : f32 = u_xlat36;
    let x_1539 : vec3<f32> = u_xlat4;
    let x_1540 : vec3<f32> = ((vec3<f32>(x_1536, x_1536, x_1536) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1539);
    let x_1541 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
    let x_1543 : vec4<f32> = u_xlat8;
    let x_1545 : vec3<f32> = u_xlat10;
    let x_1547 : vec4<f32> = u_xlat7;
    let x_1549 : vec3<f32> = ((vec3<f32>(x_1543.x, x_1543.y, x_1543.z) * x_1545) + vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
    let x_1550 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1550.w);

    continuing {
      let x_1552 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1552 + bitcast<u32>(1i));
    }
  }
  let x_1554 : vec3<f32> = u_xlat16;
  let x_1555 : vec4<f32> = u_xlat5;
  let x_1558 : vec3<f32> = u_xlat17;
  u_xlat2 = ((x_1554 * vec3<f32>(x_1555.x, x_1555.x, x_1555.x)) + x_1558);
  let x_1560 : vec4<f32> = u_xlat7;
  let x_1562 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1560.x, x_1560.y, x_1560.z) + x_1562);
  let x_1566 : vec4<f32> = vs_INTERP4;
  let x_1568 : vec3<f32> = u_xlat0;
  let x_1570 : vec3<f32> = u_xlat2;
  let x_1571 : vec3<f32> = ((vec3<f32>(x_1566.w, x_1566.w, x_1566.w) * x_1568) + x_1570);
  let x_1572 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1574 : bool = u_xlatb12;
  if (x_1574) {
    let x_1579 : f32 = u_xlat1.x;
    x_1575 = x_1579;
  } else {
    x_1575 = 1.0f;
  }
  let x_1581 : f32 = x_1575;
  SV_Target0.w = x_1581;
  let x_1588 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_1590 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_1588 & bitcast<u32>(x_1590));
  let x_1593 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1593);
  let x_1598 : f32 = u_xlat0.x;
  let x_1600 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1598 * x_1600);
  let x_1604 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1604, 0.0f, 1.0f);
  let x_1607 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1607.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

