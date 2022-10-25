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

@group(1) @binding(1) var<uniform> x_1354 : AdditionalLights;

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
  var x_1550 : f32;
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
  let x_866 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_863, x_865);
  u_xlat6 = x_866;
  let x_871 : vec2<f32> = vs_INTERP5;
  let x_873 : f32 = x_90.x_GlobalMipBias.x;
  let x_874 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_871, x_873);
  u_xlat16 = vec3<f32>(x_874.x, x_874.y, x_874.z);
  let x_876 : vec4<f32> = u_xlat6;
  let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat23.x = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_890 : f32 = u_xlat23.x;
  u_xlat23.x = (x_890 + 0.5f);
  let x_893 : vec2<f32> = u_xlat23;
  let x_895 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_893.x, x_893.x, x_893.x) * x_895);
  let x_898 : f32 = u_xlat6.w;
  u_xlat23.x = max(x_898, 0.0001f);
  let x_901 : vec3<f32> = u_xlat16;
  let x_902 : vec2<f32> = u_xlat23;
  u_xlat16 = (x_901 / vec3<f32>(x_902.x, x_902.x, x_902.x));
  let x_907 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_908.x, x_908.y));
  let x_913 : vec2<f32> = u_xlat23;
  let x_914 : vec4<f32> = hlslcc_FragCoord;
  let x_916 : vec2<f32> = (x_913 * vec2<f32>(x_914.x, x_914.y));
  let x_917 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
  let x_920 : f32 = u_xlat6.y;
  let x_923 : f32 = x_90.x_ScaleBiasRt.x;
  let x_926 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_920 * x_923) + x_926);
  let x_930 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat5.x;
  u_xlat5.x = x_935;
  let x_938 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_938, 0.0f, 1.0f);
  let x_942 : f32 = u_xlat1.x;
  u_xlat1.x = x_942;
  let x_945 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_945, 0.0f, 1.0f);
  let x_948 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_948 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_953 : f32 = u_xlat5.x;
  u_xlat23.x = (-(x_953) + 1.0f);
  let x_958 : f32 = u_xlat23.x;
  let x_960 : f32 = u_xlat23.x;
  u_xlat34 = (x_958 * x_960);
  let x_962 : f32 = u_xlat34;
  u_xlat34 = max(x_962, 0.0078125f);
  let x_965 : f32 = u_xlat34;
  let x_966 : f32 = u_xlat34;
  u_xlat35 = (x_965 * x_966);
  let x_970 : f32 = u_xlat5.x;
  u_xlat36 = (x_970 + 0.040000021f);
  let x_973 : f32 = u_xlat36;
  u_xlat36 = min(x_973, 1.0f);
  let x_976 : f32 = u_xlat34;
  u_xlat37 = ((x_976 * 4.0f) + 2.0f);
  let x_984 : vec4<f32> = u_xlat6;
  let x_987 : f32 = x_90.x_GlobalMipBias.x;
  let x_988 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_984.x, x_984.z), x_987);
  u_xlat5.x = x_988.x;
  let x_992 : f32 = u_xlat5.x;
  u_xlat6.x = (x_992 + -1.0f);
  let x_996 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_998 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_996 * x_998) + 1.0f);
  let x_1003 : f32 = u_xlat5.x;
  let x_1005 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1003, x_1005);
  let x_1009 : vec3<f32> = vs_INTERP0;
  let x_1011 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1009 + -(x_1011));
  let x_1014 : vec3<f32> = u_xlat17;
  let x_1015 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1014, x_1015);
  let x_1019 : f32 = u_xlat17.x;
  let x_1021 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1024 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1019 * x_1021) + x_1024);
  let x_1028 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1028, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat33;
  u_xlat28 = (-(x_1032) + 1.0f);
  let x_1036 : f32 = u_xlat17.x;
  let x_1037 : f32 = u_xlat28;
  let x_1039 : f32 = u_xlat33;
  u_xlat33 = ((x_1036 * x_1037) + x_1039);
  let x_1041 : vec4<f32> = u_xlat6;
  let x_1044 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1041.x, x_1041.x, x_1041.x) * vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec3<f32> = u_xlat2;
  let x_1049 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1047), vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1054 : f32 = u_xlat7.x;
  let x_1056 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1054 + x_1056);
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1061 : vec4<f32> = u_xlat7;
  let x_1065 : vec3<f32> = u_xlat2;
  let x_1067 : vec3<f32> = ((vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * -(vec3<f32>(x_1061.x, x_1061.x, x_1061.x))) + -(x_1065));
  let x_1068 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1071 : vec4<f32> = u_xlat3;
  let x_1073 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), x_1073);
  let x_1075 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1075, 0.0f, 1.0f);
  let x_1077 : f32 = u_xlat40;
  u_xlat40 = (-(x_1077) + 1.0f);
  let x_1080 : f32 = u_xlat40;
  let x_1081 : f32 = u_xlat40;
  u_xlat40 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat40;
  let x_1084 : f32 = u_xlat40;
  u_xlat40 = (x_1083 * x_1084);
  let x_1087 : f32 = u_xlat23.x;
  u_xlat8.x = ((-(x_1087) * 0.699999988f) + 1.700000048f);
  let x_1095 : f32 = u_xlat23.x;
  let x_1097 : f32 = u_xlat8.x;
  u_xlat23.x = (x_1095 * x_1097);
  let x_1101 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1101 * 6.0f);
  let x_1113 : vec4<f32> = u_xlat7;
  let x_1116 : f32 = u_xlat23.x;
  let x_1117 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1113.x, x_1113.y, x_1113.z), x_1116);
  u_xlat8 = x_1117;
  let x_1119 : f32 = u_xlat8.w;
  u_xlat23.x = (x_1119 + -1.0f);
  let x_1123 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1125 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1123 * x_1125) + 1.0f);
  let x_1130 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1130, 0.0f);
  let x_1134 : f32 = u_xlat23.x;
  u_xlat23.x = log2(x_1134);
  let x_1138 : f32 = u_xlat23.x;
  let x_1140 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat23.x = (x_1138 * x_1140);
  let x_1144 : f32 = u_xlat23.x;
  u_xlat23.x = exp2(x_1144);
  let x_1148 : f32 = u_xlat23.x;
  let x_1150 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat23.x = (x_1148 * x_1150);
  let x_1153 : vec4<f32> = u_xlat8;
  let x_1155 : vec2<f32> = u_xlat23;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * vec3<f32>(x_1155.x, x_1155.x, x_1155.x));
  let x_1158 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : f32 = u_xlat34;
  let x_1162 : f32 = u_xlat34;
  u_xlat23 = ((vec2<f32>(x_1160, x_1160) * vec2<f32>(x_1162, x_1162)) + vec2<f32>(-1.0f, 1.0f));
  let x_1168 : f32 = u_xlat23.y;
  u_xlat34 = (1.0f / x_1168);
  let x_1170 : f32 = u_xlat36;
  u_xlat36 = (x_1170 + -0.039999999f);
  let x_1173 : f32 = u_xlat40;
  let x_1174 : f32 = u_xlat36;
  u_xlat36 = ((x_1173 * x_1174) + 0.039999999f);
  let x_1178 : f32 = u_xlat34;
  let x_1179 : f32 = u_xlat36;
  u_xlat34 = (x_1178 * x_1179);
  let x_1181 : f32 = u_xlat34;
  let x_1183 : vec4<f32> = u_xlat7;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1181, x_1181, x_1181) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec3<f32> = u_xlat16;
  let x_1189 : vec3<f32> = u_xlat4;
  let x_1191 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1188 * x_1189) + vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : f32 = u_xlat33;
  let x_1196 : f32 = x_161.unity_LightData.z;
  u_xlat33 = (x_1194 * x_1196);
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1201 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1198.x, x_1198.y, x_1198.z), vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1204, 0.0f, 1.0f);
  let x_1206 : f32 = u_xlat33;
  let x_1207 : f32 = u_xlat34;
  u_xlat33 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat33;
  let x_1211 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1209, x_1209, x_1209) * x_1211);
  let x_1213 : vec3<f32> = u_xlat2;
  let x_1215 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1217 : vec3<f32> = (x_1213 + vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec4<f32> = u_xlat7;
  let x_1222 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1220.x, x_1220.y, x_1220.z), vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : f32 = u_xlat33;
  u_xlat33 = max(x_1225, 1.17549435e-37f);
  let x_1228 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_1228);
  let x_1230 : f32 = u_xlat33;
  let x_1232 : vec4<f32> = u_xlat7;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1230, x_1230, x_1230) * vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat3;
  let x_1239 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_1237.x, x_1237.y, x_1237.z), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1242, 0.0f, 1.0f);
  let x_1245 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1247 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_1245.x, x_1245.y, x_1245.z), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1250, 0.0f, 1.0f);
  let x_1252 : f32 = u_xlat33;
  let x_1253 : f32 = u_xlat33;
  u_xlat33 = (x_1252 * x_1253);
  let x_1255 : f32 = u_xlat33;
  let x_1257 : f32 = u_xlat23.x;
  u_xlat33 = ((x_1255 * x_1257) + 1.000010014f);
  let x_1261 : f32 = u_xlat34;
  let x_1262 : f32 = u_xlat34;
  u_xlat34 = (x_1261 * x_1262);
  let x_1264 : f32 = u_xlat33;
  let x_1265 : f32 = u_xlat33;
  u_xlat33 = (x_1264 * x_1265);
  let x_1267 : f32 = u_xlat34;
  u_xlat34 = max(x_1267, 0.100000001f);
  let x_1270 : f32 = u_xlat33;
  let x_1271 : f32 = u_xlat34;
  u_xlat33 = (x_1270 * x_1271);
  let x_1273 : f32 = u_xlat37;
  let x_1274 : f32 = u_xlat33;
  u_xlat33 = (x_1273 * x_1274);
  let x_1276 : f32 = u_xlat35;
  let x_1277 : f32 = u_xlat33;
  u_xlat33 = (x_1276 / x_1277);
  let x_1279 : f32 = u_xlat33;
  let x_1283 : vec3<f32> = u_xlat4;
  let x_1284 : vec3<f32> = ((vec3<f32>(x_1279, x_1279, x_1279) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1283);
  let x_1285 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : vec3<f32> = u_xlat17;
  let x_1288 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1287 * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1293 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1295 : f32 = x_161.unity_LightData.y;
  u_xlat33 = min(x_1293, x_1295);
  let x_1297 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_1297));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1309 : u32 = u_xlatu_loop_1;
    let x_1310 : u32 = u_xlatu33;
    if ((x_1309 < x_1310)) {
    } else {
      break;
    }
    let x_1313 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1313 >> 2u);
    let x_1316 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1316 & 3u));
    let x_1319 : u32 = u_xlatu36;
    let x_1322 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1319)];
    let x_1332 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1337 : vec4<u32> = indexable[x_1332];
    u_xlat36 = dot(x_1322, bitcast<vec4<f32>>(x_1337));
    let x_1341 : f32 = u_xlat36;
    u_xlati36 = i32(x_1341);
    let x_1343 : vec3<f32> = vs_INTERP0;
    let x_1355 : i32 = u_xlati36;
    let x_1357 : vec4<f32> = x_1354.x_AdditionalLightsPosition[x_1355];
    let x_1360 : i32 = u_xlati36;
    let x_1362 : vec4<f32> = x_1354.x_AdditionalLightsPosition[x_1360];
    let x_1364 : vec3<f32> = ((-(x_1343) * vec3<f32>(x_1357.w, x_1357.w, x_1357.w)) + vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
    let x_1365 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
    let x_1367 : vec4<f32> = u_xlat8;
    let x_1369 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1367.x, x_1367.y, x_1367.z), vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
    let x_1372 : f32 = u_xlat40;
    u_xlat40 = max(x_1372, 6.10351562e-05f);
    let x_1376 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1376);
    let x_1378 : f32 = u_xlat41;
    let x_1380 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1378, x_1378, x_1378) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
    let x_1384 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1384);
    let x_1386 : f32 = u_xlat40;
    let x_1387 : i32 = u_xlati36;
    let x_1389 : f32 = x_1354.x_AdditionalLightsAttenuation[x_1387].x;
    u_xlat40 = (x_1386 * x_1389);
    let x_1391 : f32 = u_xlat40;
    let x_1393 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1391) * x_1393) + 1.0f);
    let x_1396 : f32 = u_xlat40;
    u_xlat40 = max(x_1396, 0.0f);
    let x_1398 : f32 = u_xlat40;
    let x_1399 : f32 = u_xlat40;
    u_xlat40 = (x_1398 * x_1399);
    let x_1401 : f32 = u_xlat40;
    let x_1402 : f32 = u_xlat42;
    u_xlat40 = (x_1401 * x_1402);
    let x_1404 : i32 = u_xlati36;
    let x_1406 : vec4<f32> = x_1354.x_AdditionalLightsSpotDir[x_1404];
    let x_1408 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1406.x, x_1406.y, x_1406.z), x_1408);
    let x_1410 : f32 = u_xlat42;
    let x_1411 : i32 = u_xlati36;
    let x_1413 : f32 = x_1354.x_AdditionalLightsAttenuation[x_1411].z;
    let x_1415 : i32 = u_xlati36;
    let x_1417 : f32 = x_1354.x_AdditionalLightsAttenuation[x_1415].w;
    u_xlat42 = ((x_1410 * x_1413) + x_1417);
    let x_1419 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1419, 0.0f, 1.0f);
    let x_1421 : f32 = u_xlat42;
    let x_1422 : f32 = u_xlat42;
    u_xlat42 = (x_1421 * x_1422);
    let x_1424 : f32 = u_xlat40;
    let x_1425 : f32 = u_xlat42;
    u_xlat40 = (x_1424 * x_1425);
    let x_1428 : vec4<f32> = u_xlat6;
    let x_1430 : i32 = u_xlati36;
    let x_1432 : vec4<f32> = x_1354.x_AdditionalLightsColor[x_1430];
    u_xlat10 = (vec3<f32>(x_1428.x, x_1428.x, x_1428.x) * vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
    let x_1435 : vec4<f32> = u_xlat3;
    let x_1437 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1435.x, x_1435.y, x_1435.z), x_1437);
    let x_1439 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1439, 0.0f, 1.0f);
    let x_1441 : f32 = u_xlat36;
    let x_1442 : f32 = u_xlat40;
    u_xlat36 = (x_1441 * x_1442);
    let x_1444 : f32 = u_xlat36;
    let x_1446 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1444, x_1444, x_1444) * x_1446);
    let x_1448 : vec4<f32> = u_xlat8;
    let x_1450 : f32 = u_xlat41;
    let x_1453 : vec3<f32> = u_xlat2;
    let x_1454 : vec3<f32> = ((vec3<f32>(x_1448.x, x_1448.y, x_1448.z) * vec3<f32>(x_1450, x_1450, x_1450)) + x_1453);
    let x_1455 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
    let x_1457 : vec4<f32> = u_xlat8;
    let x_1459 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1457.x, x_1457.y, x_1457.z), vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
    let x_1462 : f32 = u_xlat36;
    u_xlat36 = max(x_1462, 1.17549435e-37f);
    let x_1464 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1464);
    let x_1466 : f32 = u_xlat36;
    let x_1468 : vec4<f32> = u_xlat8;
    let x_1470 : vec3<f32> = (vec3<f32>(x_1466, x_1466, x_1466) * vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
    let x_1471 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
    let x_1473 : vec4<f32> = u_xlat3;
    let x_1475 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1473.x, x_1473.y, x_1473.z), vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
    let x_1478 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1478, 0.0f, 1.0f);
    let x_1480 : vec3<f32> = u_xlat9;
    let x_1481 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1480, vec3<f32>(x_1481.x, x_1481.y, x_1481.z));
    let x_1484 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1484, 0.0f, 1.0f);
    let x_1486 : f32 = u_xlat36;
    let x_1487 : f32 = u_xlat36;
    u_xlat36 = (x_1486 * x_1487);
    let x_1489 : f32 = u_xlat36;
    let x_1491 : f32 = u_xlat23.x;
    u_xlat36 = ((x_1489 * x_1491) + 1.000010014f);
    let x_1494 : f32 = u_xlat40;
    let x_1495 : f32 = u_xlat40;
    u_xlat40 = (x_1494 * x_1495);
    let x_1497 : f32 = u_xlat36;
    let x_1498 : f32 = u_xlat36;
    u_xlat36 = (x_1497 * x_1498);
    let x_1500 : f32 = u_xlat40;
    u_xlat40 = max(x_1500, 0.100000001f);
    let x_1502 : f32 = u_xlat36;
    let x_1503 : f32 = u_xlat40;
    u_xlat36 = (x_1502 * x_1503);
    let x_1505 : f32 = u_xlat37;
    let x_1506 : f32 = u_xlat36;
    u_xlat36 = (x_1505 * x_1506);
    let x_1508 : f32 = u_xlat35;
    let x_1509 : f32 = u_xlat36;
    u_xlat36 = (x_1508 / x_1509);
    let x_1511 : f32 = u_xlat36;
    let x_1514 : vec3<f32> = u_xlat4;
    let x_1515 : vec3<f32> = ((vec3<f32>(x_1511, x_1511, x_1511) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1514);
    let x_1516 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
    let x_1518 : vec4<f32> = u_xlat8;
    let x_1520 : vec3<f32> = u_xlat10;
    let x_1522 : vec4<f32> = u_xlat7;
    let x_1524 : vec3<f32> = ((vec3<f32>(x_1518.x, x_1518.y, x_1518.z) * x_1520) + vec3<f32>(x_1522.x, x_1522.y, x_1522.z));
    let x_1525 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);

    continuing {
      let x_1527 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1527 + bitcast<u32>(1i));
    }
  }
  let x_1529 : vec3<f32> = u_xlat16;
  let x_1530 : vec4<f32> = u_xlat5;
  let x_1533 : vec3<f32> = u_xlat17;
  u_xlat2 = ((x_1529 * vec3<f32>(x_1530.x, x_1530.x, x_1530.x)) + x_1533);
  let x_1535 : vec4<f32> = u_xlat7;
  let x_1537 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1535.x, x_1535.y, x_1535.z) + x_1537);
  let x_1541 : vec4<f32> = vs_INTERP4;
  let x_1543 : vec3<f32> = u_xlat0;
  let x_1545 : vec3<f32> = u_xlat2;
  let x_1546 : vec3<f32> = ((vec3<f32>(x_1541.w, x_1541.w, x_1541.w) * x_1543) + x_1545);
  let x_1547 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
  let x_1549 : bool = u_xlatb12;
  if (x_1549) {
    let x_1554 : f32 = u_xlat1.x;
    x_1550 = x_1554;
  } else {
    x_1550 = 1.0f;
  }
  let x_1556 : f32 = x_1550;
  SV_Target0.w = x_1556;
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

