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

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_271 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1317 : AdditionalLights;

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
  var x_1513 : f32;
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
  let x_863 : vec2<f32> = vs_INTERP5;
  let x_865 : f32 = x_90.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_863, x_865);
  u_xlat16 = vec3<f32>(x_866.x, x_866.y, x_866.z);
  let x_870 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_871.x, x_871.y));
  let x_876 : vec2<f32> = u_xlat23;
  let x_877 : vec4<f32> = hlslcc_FragCoord;
  let x_879 : vec2<f32> = (x_876 * vec2<f32>(x_877.x, x_877.y));
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
  let x_883 : f32 = u_xlat6.y;
  let x_886 : f32 = x_90.x_ScaleBiasRt.x;
  let x_889 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_883 * x_886) + x_889);
  let x_893 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_893) + 1.0f);
  let x_898 : f32 = u_xlat5.x;
  u_xlat5.x = x_898;
  let x_901 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat1.x;
  u_xlat1.x = x_905;
  let x_908 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_908, 0.0f, 1.0f);
  let x_911 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_911 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_916 : f32 = u_xlat5.x;
  u_xlat23.x = (-(x_916) + 1.0f);
  let x_921 : f32 = u_xlat23.x;
  let x_923 : f32 = u_xlat23.x;
  u_xlat34 = (x_921 * x_923);
  let x_925 : f32 = u_xlat34;
  u_xlat34 = max(x_925, 0.0078125f);
  let x_928 : f32 = u_xlat34;
  let x_929 : f32 = u_xlat34;
  u_xlat35 = (x_928 * x_929);
  let x_933 : f32 = u_xlat5.x;
  u_xlat36 = (x_933 + 0.040000021f);
  let x_936 : f32 = u_xlat36;
  u_xlat36 = min(x_936, 1.0f);
  let x_939 : f32 = u_xlat34;
  u_xlat37 = ((x_939 * 4.0f) + 2.0f);
  let x_947 : vec4<f32> = u_xlat6;
  let x_950 : f32 = x_90.x_GlobalMipBias.x;
  let x_951 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_947.x, x_947.z), x_950);
  u_xlat5.x = x_951.x;
  let x_955 : f32 = u_xlat5.x;
  u_xlat6.x = (x_955 + -1.0f);
  let x_959 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_961 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_959 * x_961) + 1.0f);
  let x_966 : f32 = u_xlat5.x;
  let x_968 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_966, x_968);
  let x_972 : vec3<f32> = vs_INTERP0;
  let x_974 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_972 + -(x_974));
  let x_977 : vec3<f32> = u_xlat17;
  let x_978 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_977, x_978);
  let x_982 : f32 = u_xlat17.x;
  let x_984 : f32 = x_271.x_MainLightShadowParams.z;
  let x_987 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_982 * x_984) + x_987);
  let x_991 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_991, 0.0f, 1.0f);
  let x_995 : f32 = u_xlat33;
  u_xlat28 = (-(x_995) + 1.0f);
  let x_999 : f32 = u_xlat17.x;
  let x_1000 : f32 = u_xlat28;
  let x_1002 : f32 = u_xlat33;
  u_xlat33 = ((x_999 * x_1000) + x_1002);
  let x_1004 : vec4<f32> = u_xlat6;
  let x_1007 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1004.x, x_1004.x, x_1004.x) * vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec3<f32> = u_xlat2;
  let x_1012 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1010), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1017 : f32 = u_xlat7.x;
  let x_1019 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1017 + x_1019);
  let x_1022 : vec4<f32> = u_xlat3;
  let x_1024 : vec4<f32> = u_xlat7;
  let x_1028 : vec3<f32> = u_xlat2;
  let x_1030 : vec3<f32> = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * -(vec3<f32>(x_1024.x, x_1024.x, x_1024.x))) + -(x_1028));
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1034 : vec4<f32> = u_xlat3;
  let x_1036 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), x_1036);
  let x_1038 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1038, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat40;
  u_xlat40 = (-(x_1040) + 1.0f);
  let x_1043 : f32 = u_xlat40;
  let x_1044 : f32 = u_xlat40;
  u_xlat40 = (x_1043 * x_1044);
  let x_1046 : f32 = u_xlat40;
  let x_1047 : f32 = u_xlat40;
  u_xlat40 = (x_1046 * x_1047);
  let x_1050 : f32 = u_xlat23.x;
  u_xlat8.x = ((-(x_1050) * 0.699999988f) + 1.700000048f);
  let x_1058 : f32 = u_xlat23.x;
  let x_1060 : f32 = u_xlat8.x;
  u_xlat23.x = (x_1058 * x_1060);
  let x_1064 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1064 * 6.0f);
  let x_1076 : vec4<f32> = u_xlat7;
  let x_1079 : f32 = u_xlat23.x;
  let x_1080 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1076.x, x_1076.y, x_1076.z), x_1079);
  u_xlat8 = x_1080;
  let x_1082 : f32 = u_xlat8.w;
  u_xlat23.x = (x_1082 + -1.0f);
  let x_1086 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1088 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1086 * x_1088) + 1.0f);
  let x_1093 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1093, 0.0f);
  let x_1097 : f32 = u_xlat23.x;
  u_xlat23.x = log2(x_1097);
  let x_1101 : f32 = u_xlat23.x;
  let x_1103 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat23.x = (x_1101 * x_1103);
  let x_1107 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_1107);
  let x_1111 : f32 = u_xlat23.x;
  let x_1113 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat23.x = (x_1111 * x_1113);
  let x_1116 : vec4<f32> = u_xlat8;
  let x_1118 : vec2<f32> = u_xlat23;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * vec3<f32>(x_1118.x, x_1118.x, x_1118.x));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : f32 = u_xlat34;
  let x_1125 : f32 = u_xlat34;
  u_xlat23 = ((vec2<f32>(x_1123, x_1123) * vec2<f32>(x_1125, x_1125)) + vec2<f32>(-1.0f, 1.0f));
  let x_1131 : f32 = u_xlat23.y;
  u_xlat34 = (1.0f / x_1131);
  let x_1133 : f32 = u_xlat36;
  u_xlat36 = (x_1133 + -0.039999999f);
  let x_1136 : f32 = u_xlat40;
  let x_1137 : f32 = u_xlat36;
  u_xlat36 = ((x_1136 * x_1137) + 0.039999999f);
  let x_1141 : f32 = u_xlat34;
  let x_1142 : f32 = u_xlat36;
  u_xlat34 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat34;
  let x_1146 : vec4<f32> = u_xlat7;
  let x_1148 : vec3<f32> = (vec3<f32>(x_1144, x_1144, x_1144) * vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1151 : vec3<f32> = u_xlat16;
  let x_1152 : vec3<f32> = u_xlat4;
  let x_1154 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1151 * x_1152) + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : f32 = u_xlat33;
  let x_1159 : f32 = x_161.unity_LightData.z;
  u_xlat33 = (x_1157 * x_1159);
  let x_1161 : vec4<f32> = u_xlat3;
  let x_1164 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1161.x, x_1161.y, x_1161.z), vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1167, 0.0f, 1.0f);
  let x_1169 : f32 = u_xlat33;
  let x_1170 : f32 = u_xlat34;
  u_xlat33 = (x_1169 * x_1170);
  let x_1172 : f32 = u_xlat33;
  let x_1174 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1172, x_1172, x_1172) * x_1174);
  let x_1176 : vec3<f32> = u_xlat2;
  let x_1178 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1180 : vec3<f32> = (x_1176 + vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1183 : vec4<f32> = u_xlat7;
  let x_1185 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1183.x, x_1183.y, x_1183.z), vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1188 : f32 = u_xlat33;
  u_xlat33 = max(x_1188, 1.17549435e-37f);
  let x_1191 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1191);
  let x_1193 : f32 = u_xlat33;
  let x_1195 : vec4<f32> = u_xlat7;
  let x_1197 : vec3<f32> = (vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
  let x_1200 : vec4<f32> = u_xlat3;
  let x_1202 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1200.x, x_1200.y, x_1200.z), vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1205, 0.0f, 1.0f);
  let x_1208 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1213, 0.0f, 1.0f);
  let x_1215 : f32 = u_xlat33;
  let x_1216 : f32 = u_xlat33;
  u_xlat33 = (x_1215 * x_1216);
  let x_1218 : f32 = u_xlat33;
  let x_1220 : f32 = u_xlat23.x;
  u_xlat33 = ((x_1218 * x_1220) + 1.000010014f);
  let x_1224 : f32 = u_xlat34;
  let x_1225 : f32 = u_xlat34;
  u_xlat34 = (x_1224 * x_1225);
  let x_1227 : f32 = u_xlat33;
  let x_1228 : f32 = u_xlat33;
  u_xlat33 = (x_1227 * x_1228);
  let x_1230 : f32 = u_xlat34;
  u_xlat34 = max(x_1230, 0.100000001f);
  let x_1233 : f32 = u_xlat33;
  let x_1234 : f32 = u_xlat34;
  u_xlat33 = (x_1233 * x_1234);
  let x_1236 : f32 = u_xlat37;
  let x_1237 : f32 = u_xlat33;
  u_xlat33 = (x_1236 * x_1237);
  let x_1239 : f32 = u_xlat35;
  let x_1240 : f32 = u_xlat33;
  u_xlat33 = (x_1239 / x_1240);
  let x_1242 : f32 = u_xlat33;
  let x_1246 : vec3<f32> = u_xlat4;
  let x_1247 : vec3<f32> = ((vec3<f32>(x_1242, x_1242, x_1242) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1246);
  let x_1248 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  let x_1250 : vec3<f32> = u_xlat17;
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1250 * vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1256 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1258 : f32 = x_161.unity_LightData.y;
  u_xlat33 = min(x_1256, x_1258);
  let x_1260 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1260));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1272 : u32 = u_xlatu_loop_1;
    let x_1273 : u32 = u_xlatu33;
    if ((x_1272 < x_1273)) {
    } else {
      break;
    }
    let x_1276 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1276 >> 2u);
    let x_1279 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1279 & 3u));
    let x_1282 : u32 = u_xlatu36;
    let x_1285 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1282)];
    let x_1295 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1300 : vec4<u32> = indexable[x_1295];
    u_xlat36 = dot(x_1285, bitcast<vec4<f32>>(x_1300));
    let x_1304 : f32 = u_xlat36;
    u_xlati36 = i32(x_1304);
    let x_1306 : vec3<f32> = vs_INTERP0;
    let x_1318 : i32 = u_xlati36;
    let x_1320 : vec4<f32> = x_1317.x_AdditionalLightsPosition[x_1318];
    let x_1323 : i32 = u_xlati36;
    let x_1325 : vec4<f32> = x_1317.x_AdditionalLightsPosition[x_1323];
    let x_1327 : vec3<f32> = ((-(x_1306) * vec3<f32>(x_1320.w, x_1320.w, x_1320.w)) + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
    let x_1328 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
    let x_1330 : vec4<f32> = u_xlat8;
    let x_1332 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1330.x, x_1330.y, x_1330.z), vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : f32 = u_xlat40;
    u_xlat40 = max(x_1335, 6.10351562e-05f);
    let x_1339 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1339);
    let x_1341 : f32 = u_xlat41;
    let x_1343 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1341, x_1341, x_1341) * vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
    let x_1347 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1347);
    let x_1349 : f32 = u_xlat40;
    let x_1350 : i32 = u_xlati36;
    let x_1352 : f32 = x_1317.x_AdditionalLightsAttenuation[x_1350].x;
    u_xlat40 = (x_1349 * x_1352);
    let x_1354 : f32 = u_xlat40;
    let x_1356 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1354) * x_1356) + 1.0f);
    let x_1359 : f32 = u_xlat40;
    u_xlat40 = max(x_1359, 0.0f);
    let x_1361 : f32 = u_xlat40;
    let x_1362 : f32 = u_xlat40;
    u_xlat40 = (x_1361 * x_1362);
    let x_1364 : f32 = u_xlat40;
    let x_1365 : f32 = u_xlat42;
    u_xlat40 = (x_1364 * x_1365);
    let x_1367 : i32 = u_xlati36;
    let x_1369 : vec4<f32> = x_1317.x_AdditionalLightsSpotDir[x_1367];
    let x_1371 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1369.x, x_1369.y, x_1369.z), x_1371);
    let x_1373 : f32 = u_xlat42;
    let x_1374 : i32 = u_xlati36;
    let x_1376 : f32 = x_1317.x_AdditionalLightsAttenuation[x_1374].z;
    let x_1378 : i32 = u_xlati36;
    let x_1380 : f32 = x_1317.x_AdditionalLightsAttenuation[x_1378].w;
    u_xlat42 = ((x_1373 * x_1376) + x_1380);
    let x_1382 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1382, 0.0f, 1.0f);
    let x_1384 : f32 = u_xlat42;
    let x_1385 : f32 = u_xlat42;
    u_xlat42 = (x_1384 * x_1385);
    let x_1387 : f32 = u_xlat40;
    let x_1388 : f32 = u_xlat42;
    u_xlat40 = (x_1387 * x_1388);
    let x_1391 : vec4<f32> = u_xlat6;
    let x_1393 : i32 = u_xlati36;
    let x_1395 : vec4<f32> = x_1317.x_AdditionalLightsColor[x_1393];
    u_xlat10 = (vec3<f32>(x_1391.x, x_1391.x, x_1391.x) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat3;
    let x_1400 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1398.x, x_1398.y, x_1398.z), x_1400);
    let x_1402 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1402, 0.0f, 1.0f);
    let x_1404 : f32 = u_xlat36;
    let x_1405 : f32 = u_xlat40;
    u_xlat36 = (x_1404 * x_1405);
    let x_1407 : f32 = u_xlat36;
    let x_1409 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1407, x_1407, x_1407) * x_1409);
    let x_1411 : vec4<f32> = u_xlat8;
    let x_1413 : f32 = u_xlat41;
    let x_1416 : vec3<f32> = u_xlat2;
    let x_1417 : vec3<f32> = ((vec3<f32>(x_1411.x, x_1411.y, x_1411.z) * vec3<f32>(x_1413, x_1413, x_1413)) + x_1416);
    let x_1418 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    let x_1420 : vec4<f32> = u_xlat8;
    let x_1422 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
    let x_1425 : f32 = u_xlat36;
    u_xlat36 = max(x_1425, 1.17549435e-37f);
    let x_1427 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1427);
    let x_1429 : f32 = u_xlat36;
    let x_1431 : vec4<f32> = u_xlat8;
    let x_1433 : vec3<f32> = (vec3<f32>(x_1429, x_1429, x_1429) * vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
    let x_1436 : vec4<f32> = u_xlat3;
    let x_1438 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1436.x, x_1436.y, x_1436.z), vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
    let x_1441 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1441, 0.0f, 1.0f);
    let x_1443 : vec3<f32> = u_xlat9;
    let x_1444 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1443, vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
    let x_1447 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1447, 0.0f, 1.0f);
    let x_1449 : f32 = u_xlat36;
    let x_1450 : f32 = u_xlat36;
    u_xlat36 = (x_1449 * x_1450);
    let x_1452 : f32 = u_xlat36;
    let x_1454 : f32 = u_xlat23.x;
    u_xlat36 = ((x_1452 * x_1454) + 1.000010014f);
    let x_1457 : f32 = u_xlat40;
    let x_1458 : f32 = u_xlat40;
    u_xlat40 = (x_1457 * x_1458);
    let x_1460 : f32 = u_xlat36;
    let x_1461 : f32 = u_xlat36;
    u_xlat36 = (x_1460 * x_1461);
    let x_1463 : f32 = u_xlat40;
    u_xlat40 = max(x_1463, 0.100000001f);
    let x_1465 : f32 = u_xlat36;
    let x_1466 : f32 = u_xlat40;
    u_xlat36 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat37;
    let x_1469 : f32 = u_xlat36;
    u_xlat36 = (x_1468 * x_1469);
    let x_1471 : f32 = u_xlat35;
    let x_1472 : f32 = u_xlat36;
    u_xlat36 = (x_1471 / x_1472);
    let x_1474 : f32 = u_xlat36;
    let x_1477 : vec3<f32> = u_xlat4;
    let x_1478 : vec3<f32> = ((vec3<f32>(x_1474, x_1474, x_1474) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1477);
    let x_1479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
    let x_1481 : vec4<f32> = u_xlat8;
    let x_1483 : vec3<f32> = u_xlat10;
    let x_1485 : vec4<f32> = u_xlat7;
    let x_1487 : vec3<f32> = ((vec3<f32>(x_1481.x, x_1481.y, x_1481.z) * x_1483) + vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
    let x_1488 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);

    continuing {
      let x_1490 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1490 + bitcast<u32>(1i));
    }
  }
  let x_1492 : vec3<f32> = u_xlat16;
  let x_1493 : vec4<f32> = u_xlat5;
  let x_1496 : vec3<f32> = u_xlat17;
  u_xlat2 = ((x_1492 * vec3<f32>(x_1493.x, x_1493.x, x_1493.x)) + x_1496);
  let x_1498 : vec4<f32> = u_xlat7;
  let x_1500 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1498.x, x_1498.y, x_1498.z) + x_1500);
  let x_1504 : vec4<f32> = vs_INTERP4;
  let x_1506 : vec3<f32> = u_xlat0;
  let x_1508 : vec3<f32> = u_xlat2;
  let x_1509 : vec3<f32> = ((vec3<f32>(x_1504.w, x_1504.w, x_1504.w) * x_1506) + x_1508);
  let x_1510 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : bool = u_xlatb12;
  if (x_1512) {
    let x_1517 : f32 = u_xlat1.x;
    x_1513 = x_1517;
  } else {
    x_1513 = 1.0f;
  }
  let x_1519 : f32 = x_1513;
  SV_Target0.w = x_1519;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

