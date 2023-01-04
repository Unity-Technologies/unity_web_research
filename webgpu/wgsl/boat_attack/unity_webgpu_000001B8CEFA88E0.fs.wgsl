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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_271 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1355 : AdditionalLights;

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
  var x_1551 : f32;
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
  let x_864 : vec2<f32> = vs_INTERP5;
  let x_866 : f32 = x_90.x_GlobalMipBias.x;
  let x_867 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_864, x_866);
  u_xlat6 = x_867;
  let x_872 : vec2<f32> = vs_INTERP5;
  let x_874 : f32 = x_90.x_GlobalMipBias.x;
  let x_875 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_872, x_874);
  u_xlat16 = vec3<f32>(x_875.x, x_875.y, x_875.z);
  let x_877 : vec4<f32> = u_xlat6;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_882 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat3;
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat23.x = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_891 : f32 = u_xlat23.x;
  u_xlat23.x = (x_891 + 0.5f);
  let x_894 : vec2<f32> = u_xlat23;
  let x_896 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_894.x, x_894.x, x_894.x) * x_896);
  let x_899 : f32 = u_xlat6.w;
  u_xlat23.x = max(x_899, 0.0001f);
  let x_902 : vec3<f32> = u_xlat16;
  let x_903 : vec2<f32> = u_xlat23;
  u_xlat16 = (x_902 / vec3<f32>(x_903.x, x_903.x, x_903.x));
  let x_908 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_909.x, x_909.y));
  let x_914 : vec2<f32> = u_xlat23;
  let x_915 : vec4<f32> = hlslcc_FragCoord;
  let x_917 : vec2<f32> = (x_914 * vec2<f32>(x_915.x, x_915.y));
  let x_918 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
  let x_921 : f32 = u_xlat6.y;
  let x_924 : f32 = x_90.x_ScaleBiasRt.x;
  let x_927 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_921 * x_924) + x_927);
  let x_931 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_931) + 1.0f);
  let x_936 : f32 = u_xlat5.x;
  u_xlat5.x = x_936;
  let x_939 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_939, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat1.x;
  u_xlat1.x = x_943;
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_946, 0.0f, 1.0f);
  let x_949 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_949 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_954 : f32 = u_xlat5.x;
  u_xlat23.x = (-(x_954) + 1.0f);
  let x_959 : f32 = u_xlat23.x;
  let x_961 : f32 = u_xlat23.x;
  u_xlat34 = (x_959 * x_961);
  let x_963 : f32 = u_xlat34;
  u_xlat34 = max(x_963, 0.0078125f);
  let x_966 : f32 = u_xlat34;
  let x_967 : f32 = u_xlat34;
  u_xlat35 = (x_966 * x_967);
  let x_971 : f32 = u_xlat5.x;
  u_xlat36 = (x_971 + 0.040000021f);
  let x_974 : f32 = u_xlat36;
  u_xlat36 = min(x_974, 1.0f);
  let x_977 : f32 = u_xlat34;
  u_xlat37 = ((x_977 * 4.0f) + 2.0f);
  let x_985 : vec4<f32> = u_xlat6;
  let x_988 : f32 = x_90.x_GlobalMipBias.x;
  let x_989 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_985.x, x_985.z), x_988);
  u_xlat5.x = x_989.x;
  let x_993 : f32 = u_xlat5.x;
  u_xlat6.x = (x_993 + -1.0f);
  let x_997 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_999 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_997 * x_999) + 1.0f);
  let x_1004 : f32 = u_xlat5.x;
  let x_1006 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1004, x_1006);
  let x_1010 : vec3<f32> = vs_INTERP0;
  let x_1012 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1010 + -(x_1012));
  let x_1015 : vec3<f32> = u_xlat17;
  let x_1016 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1015, x_1016);
  let x_1020 : f32 = u_xlat17.x;
  let x_1022 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1025 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1020 * x_1022) + x_1025);
  let x_1029 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1029, 0.0f, 1.0f);
  let x_1033 : f32 = u_xlat33;
  u_xlat28 = (-(x_1033) + 1.0f);
  let x_1037 : f32 = u_xlat17.x;
  let x_1038 : f32 = u_xlat28;
  let x_1040 : f32 = u_xlat33;
  u_xlat33 = ((x_1037 * x_1038) + x_1040);
  let x_1042 : vec4<f32> = u_xlat6;
  let x_1045 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1042.x, x_1042.x, x_1042.x) * vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec3<f32> = u_xlat2;
  let x_1050 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1048), vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1055 : f32 = u_xlat7.x;
  let x_1057 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1055 + x_1057);
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1062 : vec4<f32> = u_xlat7;
  let x_1066 : vec3<f32> = u_xlat2;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * -(vec3<f32>(x_1062.x, x_1062.x, x_1062.x))) + -(x_1066));
  let x_1069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1072 : vec4<f32> = u_xlat3;
  let x_1074 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), x_1074);
  let x_1076 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1076, 0.0f, 1.0f);
  let x_1078 : f32 = u_xlat40;
  u_xlat40 = (-(x_1078) + 1.0f);
  let x_1081 : f32 = u_xlat40;
  let x_1082 : f32 = u_xlat40;
  u_xlat40 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat40;
  let x_1085 : f32 = u_xlat40;
  u_xlat40 = (x_1084 * x_1085);
  let x_1088 : f32 = u_xlat23.x;
  u_xlat8.x = ((-(x_1088) * 0.699999988f) + 1.700000048f);
  let x_1096 : f32 = u_xlat23.x;
  let x_1098 : f32 = u_xlat8.x;
  u_xlat23.x = (x_1096 * x_1098);
  let x_1102 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1102 * 6.0f);
  let x_1114 : vec4<f32> = u_xlat7;
  let x_1117 : f32 = u_xlat23.x;
  let x_1118 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1114.x, x_1114.y, x_1114.z), x_1117);
  u_xlat8 = x_1118;
  let x_1120 : f32 = u_xlat8.w;
  u_xlat23.x = (x_1120 + -1.0f);
  let x_1124 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1126 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1124 * x_1126) + 1.0f);
  let x_1131 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1131, 0.0f);
  let x_1135 : f32 = u_xlat23.x;
  u_xlat23.x = log2(x_1135);
  let x_1139 : f32 = u_xlat23.x;
  let x_1141 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat23.x = (x_1139 * x_1141);
  let x_1145 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_1145);
  let x_1149 : f32 = u_xlat23.x;
  let x_1151 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat23.x = (x_1149 * x_1151);
  let x_1154 : vec4<f32> = u_xlat8;
  let x_1156 : vec2<f32> = u_xlat23;
  let x_1158 : vec3<f32> = (vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * vec3<f32>(x_1156.x, x_1156.x, x_1156.x));
  let x_1159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : f32 = u_xlat34;
  let x_1163 : f32 = u_xlat34;
  u_xlat23 = ((vec2<f32>(x_1161, x_1161) * vec2<f32>(x_1163, x_1163)) + vec2<f32>(-1.0f, 1.0f));
  let x_1169 : f32 = u_xlat23.y;
  u_xlat34 = (1.0f / x_1169);
  let x_1171 : f32 = u_xlat36;
  u_xlat36 = (x_1171 + -0.039999999f);
  let x_1174 : f32 = u_xlat40;
  let x_1175 : f32 = u_xlat36;
  u_xlat36 = ((x_1174 * x_1175) + 0.039999999f);
  let x_1179 : f32 = u_xlat34;
  let x_1180 : f32 = u_xlat36;
  u_xlat34 = (x_1179 * x_1180);
  let x_1182 : f32 = u_xlat34;
  let x_1184 : vec4<f32> = u_xlat7;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec3<f32> = u_xlat16;
  let x_1190 : vec3<f32> = u_xlat4;
  let x_1192 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1189 * x_1190) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : f32 = u_xlat33;
  let x_1197 : f32 = x_161.unity_LightData.z;
  u_xlat33 = (x_1195 * x_1197);
  let x_1199 : vec4<f32> = u_xlat3;
  let x_1202 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1199.x, x_1199.y, x_1199.z), vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1205, 0.0f, 1.0f);
  let x_1207 : f32 = u_xlat33;
  let x_1208 : f32 = u_xlat34;
  u_xlat33 = (x_1207 * x_1208);
  let x_1210 : f32 = u_xlat33;
  let x_1212 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1210, x_1210, x_1210) * x_1212);
  let x_1214 : vec3<f32> = u_xlat2;
  let x_1216 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1218 : vec3<f32> = (x_1214 + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1221 : vec4<f32> = u_xlat7;
  let x_1223 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1221.x, x_1221.y, x_1221.z), vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : f32 = u_xlat33;
  u_xlat33 = max(x_1226, 1.17549435e-37f);
  let x_1229 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1229);
  let x_1231 : f32 = u_xlat33;
  let x_1233 : vec4<f32> = u_xlat7;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1231, x_1231, x_1231) * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat3;
  let x_1240 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1243, 0.0f, 1.0f);
  let x_1246 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1248 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1251, 0.0f, 1.0f);
  let x_1253 : f32 = u_xlat33;
  let x_1254 : f32 = u_xlat33;
  u_xlat33 = (x_1253 * x_1254);
  let x_1256 : f32 = u_xlat33;
  let x_1258 : f32 = u_xlat23.x;
  u_xlat33 = ((x_1256 * x_1258) + 1.000010014f);
  let x_1262 : f32 = u_xlat34;
  let x_1263 : f32 = u_xlat34;
  u_xlat34 = (x_1262 * x_1263);
  let x_1265 : f32 = u_xlat33;
  let x_1266 : f32 = u_xlat33;
  u_xlat33 = (x_1265 * x_1266);
  let x_1268 : f32 = u_xlat34;
  u_xlat34 = max(x_1268, 0.100000001f);
  let x_1271 : f32 = u_xlat33;
  let x_1272 : f32 = u_xlat34;
  u_xlat33 = (x_1271 * x_1272);
  let x_1274 : f32 = u_xlat37;
  let x_1275 : f32 = u_xlat33;
  u_xlat33 = (x_1274 * x_1275);
  let x_1277 : f32 = u_xlat35;
  let x_1278 : f32 = u_xlat33;
  u_xlat33 = (x_1277 / x_1278);
  let x_1280 : f32 = u_xlat33;
  let x_1284 : vec3<f32> = u_xlat4;
  let x_1285 : vec3<f32> = ((vec3<f32>(x_1280, x_1280, x_1280) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1284);
  let x_1286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : vec3<f32> = u_xlat17;
  let x_1289 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1288 * vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1294 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1296 : f32 = x_161.unity_LightData.y;
  u_xlat33 = min(x_1294, x_1296);
  let x_1298 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1298));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1310 : u32 = u_xlatu_loop_1;
    let x_1311 : u32 = u_xlatu33;
    if ((x_1310 < x_1311)) {
    } else {
      break;
    }
    let x_1314 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1314 >> 2u);
    let x_1317 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1317 & 3u));
    let x_1320 : u32 = u_xlatu36;
    let x_1323 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1320)];
    let x_1333 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1338 : vec4<u32> = indexable[x_1333];
    u_xlat36 = dot(x_1323, bitcast<vec4<f32>>(x_1338));
    let x_1342 : f32 = u_xlat36;
    u_xlati36 = i32(x_1342);
    let x_1344 : vec3<f32> = vs_INTERP0;
    let x_1356 : i32 = u_xlati36;
    let x_1358 : vec4<f32> = x_1355.x_AdditionalLightsPosition[x_1356];
    let x_1361 : i32 = u_xlati36;
    let x_1363 : vec4<f32> = x_1355.x_AdditionalLightsPosition[x_1361];
    let x_1365 : vec3<f32> = ((-(x_1344) * vec3<f32>(x_1358.w, x_1358.w, x_1358.w)) + vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
    let x_1366 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
    let x_1368 : vec4<f32> = u_xlat8;
    let x_1370 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1368.x, x_1368.y, x_1368.z), vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : f32 = u_xlat40;
    u_xlat40 = max(x_1373, 6.10351562e-05f);
    let x_1377 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1377);
    let x_1379 : f32 = u_xlat41;
    let x_1381 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
    let x_1385 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1385);
    let x_1387 : f32 = u_xlat40;
    let x_1388 : i32 = u_xlati36;
    let x_1390 : f32 = x_1355.x_AdditionalLightsAttenuation[x_1388].x;
    u_xlat40 = (x_1387 * x_1390);
    let x_1392 : f32 = u_xlat40;
    let x_1394 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1392) * x_1394) + 1.0f);
    let x_1397 : f32 = u_xlat40;
    u_xlat40 = max(x_1397, 0.0f);
    let x_1399 : f32 = u_xlat40;
    let x_1400 : f32 = u_xlat40;
    u_xlat40 = (x_1399 * x_1400);
    let x_1402 : f32 = u_xlat40;
    let x_1403 : f32 = u_xlat42;
    u_xlat40 = (x_1402 * x_1403);
    let x_1405 : i32 = u_xlati36;
    let x_1407 : vec4<f32> = x_1355.x_AdditionalLightsSpotDir[x_1405];
    let x_1409 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1407.x, x_1407.y, x_1407.z), x_1409);
    let x_1411 : f32 = u_xlat42;
    let x_1412 : i32 = u_xlati36;
    let x_1414 : f32 = x_1355.x_AdditionalLightsAttenuation[x_1412].z;
    let x_1416 : i32 = u_xlati36;
    let x_1418 : f32 = x_1355.x_AdditionalLightsAttenuation[x_1416].w;
    u_xlat42 = ((x_1411 * x_1414) + x_1418);
    let x_1420 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1420, 0.0f, 1.0f);
    let x_1422 : f32 = u_xlat42;
    let x_1423 : f32 = u_xlat42;
    u_xlat42 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat40;
    let x_1426 : f32 = u_xlat42;
    u_xlat40 = (x_1425 * x_1426);
    let x_1429 : vec4<f32> = u_xlat6;
    let x_1431 : i32 = u_xlati36;
    let x_1433 : vec4<f32> = x_1355.x_AdditionalLightsColor[x_1431];
    u_xlat10 = (vec3<f32>(x_1429.x, x_1429.x, x_1429.x) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
    let x_1436 : vec4<f32> = u_xlat3;
    let x_1438 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1436.x, x_1436.y, x_1436.z), x_1438);
    let x_1440 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1440, 0.0f, 1.0f);
    let x_1442 : f32 = u_xlat36;
    let x_1443 : f32 = u_xlat40;
    u_xlat36 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat36;
    let x_1447 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1445, x_1445, x_1445) * x_1447);
    let x_1449 : vec4<f32> = u_xlat8;
    let x_1451 : f32 = u_xlat41;
    let x_1454 : vec3<f32> = u_xlat2;
    let x_1455 : vec3<f32> = ((vec3<f32>(x_1449.x, x_1449.y, x_1449.z) * vec3<f32>(x_1451, x_1451, x_1451)) + x_1454);
    let x_1456 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
    let x_1458 : vec4<f32> = u_xlat8;
    let x_1460 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
    let x_1463 : f32 = u_xlat36;
    u_xlat36 = max(x_1463, 1.17549435e-37f);
    let x_1465 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1465);
    let x_1467 : f32 = u_xlat36;
    let x_1469 : vec4<f32> = u_xlat8;
    let x_1471 : vec3<f32> = (vec3<f32>(x_1467, x_1467, x_1467) * vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
    let x_1472 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
    let x_1474 : vec4<f32> = u_xlat3;
    let x_1476 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1474.x, x_1474.y, x_1474.z), vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
    let x_1479 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1479, 0.0f, 1.0f);
    let x_1481 : vec3<f32> = u_xlat9;
    let x_1482 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1481, vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
    let x_1485 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1485, 0.0f, 1.0f);
    let x_1487 : f32 = u_xlat36;
    let x_1488 : f32 = u_xlat36;
    u_xlat36 = (x_1487 * x_1488);
    let x_1490 : f32 = u_xlat36;
    let x_1492 : f32 = u_xlat23.x;
    u_xlat36 = ((x_1490 * x_1492) + 1.000010014f);
    let x_1495 : f32 = u_xlat40;
    let x_1496 : f32 = u_xlat40;
    u_xlat40 = (x_1495 * x_1496);
    let x_1498 : f32 = u_xlat36;
    let x_1499 : f32 = u_xlat36;
    u_xlat36 = (x_1498 * x_1499);
    let x_1501 : f32 = u_xlat40;
    u_xlat40 = max(x_1501, 0.100000001f);
    let x_1503 : f32 = u_xlat36;
    let x_1504 : f32 = u_xlat40;
    u_xlat36 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat37;
    let x_1507 : f32 = u_xlat36;
    u_xlat36 = (x_1506 * x_1507);
    let x_1509 : f32 = u_xlat35;
    let x_1510 : f32 = u_xlat36;
    u_xlat36 = (x_1509 / x_1510);
    let x_1512 : f32 = u_xlat36;
    let x_1515 : vec3<f32> = u_xlat4;
    let x_1516 : vec3<f32> = ((vec3<f32>(x_1512, x_1512, x_1512) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1515);
    let x_1517 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
    let x_1519 : vec4<f32> = u_xlat8;
    let x_1521 : vec3<f32> = u_xlat10;
    let x_1523 : vec4<f32> = u_xlat7;
    let x_1525 : vec3<f32> = ((vec3<f32>(x_1519.x, x_1519.y, x_1519.z) * x_1521) + vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);

    continuing {
      let x_1528 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1528 + bitcast<u32>(1i));
    }
  }
  let x_1530 : vec3<f32> = u_xlat16;
  let x_1531 : vec4<f32> = u_xlat5;
  let x_1534 : vec3<f32> = u_xlat17;
  u_xlat2 = ((x_1530 * vec3<f32>(x_1531.x, x_1531.x, x_1531.x)) + x_1534);
  let x_1536 : vec4<f32> = u_xlat7;
  let x_1538 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1536.x, x_1536.y, x_1536.z) + x_1538);
  let x_1542 : vec4<f32> = vs_INTERP4;
  let x_1544 : vec3<f32> = u_xlat0;
  let x_1546 : vec3<f32> = u_xlat2;
  let x_1547 : vec3<f32> = ((vec3<f32>(x_1542.w, x_1542.w, x_1542.w) * x_1544) + x_1546);
  let x_1548 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
  let x_1550 : bool = u_xlatb12;
  if (x_1550) {
    let x_1555 : f32 = u_xlat1.x;
    x_1551 = x_1555;
  } else {
    x_1551 = 1.0f;
  }
  let x_1557 : f32 = x_1551;
  SV_Target0.w = x_1557;
  let x_1564 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_1566 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_1564 & bitcast<u32>(x_1566));
  let x_1569 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1569);
  let x_1574 : f32 = u_xlat0.x;
  let x_1576 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1574 * x_1576);
  let x_1580 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1580, 0.0f, 1.0f);
  let x_1583 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1583.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

