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

@group(1) @binding(0) var<uniform> x_151 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_267 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_351 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1188 : AdditionalLights;

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
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat5 : vec3<f32>;
  var x_177 : f32;
  var x_190 : f32;
  var x_202 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var x_455 : f32;
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
  var x_589 : f32;
  var x_614 : f32;
  var x_659 : f32;
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
  u_xlat3 = (x_143 * vec3<f32>(x_144, x_144, x_144));
  let x_154 : f32 = x_151.unity_OrthoParams.w;
  u_xlatb0 = (x_154 == 0.0f);
  let x_158 : vec3<f32> = vs_INTERP0;
  let x_163 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_158) + x_163);
  let x_166 : vec3<f32> = u_xlat4;
  let x_167 : vec3<f32> = u_xlat4;
  u_xlat34 = dot(x_166, x_167);
  let x_169 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_169);
  let x_171 : f32 = u_xlat34;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_171, x_171, x_171) * x_173);
  let x_176 : bool = u_xlatb0;
  if (x_176) {
    let x_181 : f32 = u_xlat4.x;
    x_177 = x_181;
  } else {
    let x_186 : f32 = x_151.unity_MatrixV[0i].z;
    x_177 = x_186;
  }
  let x_187 : f32 = x_177;
  u_xlat5.x = x_187;
  let x_189 : bool = u_xlatb0;
  if (x_189) {
    let x_194 : f32 = u_xlat4.y;
    x_190 = x_194;
  } else {
    let x_198 : f32 = x_151.unity_MatrixV[1i].z;
    x_190 = x_198;
  }
  let x_199 : f32 = x_190;
  u_xlat5.y = x_199;
  let x_201 : bool = u_xlatb0;
  if (x_201) {
    let x_206 : f32 = u_xlat4.z;
    x_202 = x_206;
  } else {
    let x_210 : f32 = x_151.unity_MatrixV[2i].z;
    x_202 = x_210;
  }
  let x_211 : f32 = x_202;
  u_xlat5.z = x_211;
  let x_213 : vec3<f32> = u_xlat5;
  let x_217 : vec4<f32> = x_89.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_213.y, x_213.y, x_213.y) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec4<f32> = x_89.unity_WorldToObject[0i];
  let x_223 : vec3<f32> = u_xlat5;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223.x, x_223.x, x_223.x)) + x_226);
  let x_229 : vec4<f32> = x_89.unity_WorldToObject[2i];
  let x_231 : vec3<f32> = u_xlat5;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.z, x_231.z, x_231.z)) + x_234);
  let x_236 : vec3<f32> = u_xlat4;
  let x_237 : vec3<f32> = u_xlat4;
  u_xlat0 = dot(x_236, x_237);
  let x_239 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat0;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_241, x_241, x_241) * x_243);
  let x_257 : vec4<f32> = vs_INTERP3;
  let x_260 : f32 = x_151.x_GlobalMipBias.x;
  let x_261 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_257.x, x_257.y), x_260);
  u_xlat6 = x_261;
  let x_263 : vec4<f32> = u_xlat6;
  let x_269 : vec4<f32> = x_267.Color_C30C7CA3;
  u_xlat7 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_278 : vec4<f32> = vs_INTERP3;
  let x_281 : f32 = x_151.x_GlobalMipBias.x;
  let x_282 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_278.x, x_278.y), x_281);
  u_xlat8 = vec4<f32>(x_282.w, x_282.x, x_282.y, x_282.z);
  let x_285 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_285.y, x_285.z, x_285.w, x_285.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_292 : vec4<f32> = u_xlat9;
  let x_293 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_292, x_293);
  let x_295 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_295);
  let x_298 : f32 = u_xlat0;
  let x_300 : vec4<f32> = u_xlat9;
  u_xlat19 = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_305 * 200.0f);
  let x_308 : f32 = u_xlat0;
  u_xlat0 = min(x_308, 1.0f);
  let x_310 : f32 = u_xlat0;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat19;
  u_xlat3 = (x_317 * vec3<f32>(x_318.y, x_318.y, x_318.y));
  let x_321 : vec3<f32> = u_xlat19;
  let x_323 : vec3<f32> = u_xlat2;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_321.x, x_321.x, x_321.x) * x_323) + x_325);
  let x_327 : vec3<f32> = u_xlat19;
  let x_329 : vec3<f32> = u_xlat1;
  let x_331 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_327.z, x_327.z, x_327.z) * x_329) + x_331);
  let x_333 : vec3<f32> = u_xlat1;
  let x_334 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_333, x_334);
  let x_336 : f32 = u_xlat0;
  u_xlat0 = max(x_336, 1.17549435e-37f);
  let x_339 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_339);
  let x_341 : f32 = u_xlat0;
  let x_343 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_345 : vec3<f32> = vs_INTERP0;
  let x_353 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_345.y, x_345.y, x_345.y) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][0i];
  let x_359 : vec3<f32> = vs_INTERP0;
  let x_362 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.x, x_359.x)) + x_362);
  let x_365 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][2i];
  let x_367 : vec3<f32> = vs_INTERP0;
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + x_370);
  let x_372 : vec3<f32> = u_xlat2;
  let x_374 : vec4<f32> = x_351.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_372 + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_378 : vec3<f32> = u_xlat2;
  let x_379 : vec2<f32> = vec2<f32>(x_378.x, x_378.y);
  let x_381 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_379.x, x_379.y, x_381);
  let x_393 : vec3<f32> = txVec0;
  let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_393.xy, x_393.z);
  u_xlat0 = x_395;
  let x_398 : f32 = x_351.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat0;
  let x_403 : f32 = x_351.x_MainLightShadowParams.x;
  let x_405 : f32 = u_xlat34;
  u_xlat0 = ((x_401 * x_403) + x_405);
  let x_409 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_409);
  let x_413 : f32 = u_xlat2.z;
  u_xlatb13 = (x_413 >= 1.0f);
  let x_415 : bool = u_xlatb13;
  let x_416 : bool = u_xlatb2;
  u_xlatb2 = (x_415 | x_416);
  let x_418 : bool = u_xlatb2;
  let x_419 : f32 = u_xlat0;
  u_xlat0 = select(x_419, 1.0f, x_418);
  let x_421 : vec3<f32> = u_xlat1;
  let x_423 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat1.x = dot(x_421, -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_429, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat0;
  let x_436 : vec4<f32> = x_151.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_432, x_432, x_432) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec3<f32> = u_xlat1;
  let x_441 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_439.x, x_439.x, x_439.x) * x_441);
  let x_443 : vec3<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_443 * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_448 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_448 < 0.0f);
  let x_451 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_451 + 1.0f);
  let x_454 : bool = u_xlatb0;
  if (x_454) {
    let x_459 : f32 = u_xlat2.x;
    x_455 = x_459;
  } else {
    let x_462 : f32 = x_89.unity_LODFade.x;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat0 = x_463;
  let x_465 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_465);
  let x_468 : vec3<f32> = u_xlat4;
  let x_472 : vec4<f32> = x_151.x_ScreenParams;
  u_xlat13 = (abs(x_468) * vec3<f32>(x_472.x, x_472.y, x_472.x));
  let x_478 : vec3<f32> = u_xlat13;
  u_xlatu13 = vec3<u32>(x_478);
  let x_482 : u32 = u_xlatu13.z;
  u_xlatu35 = (x_482 * 1025u);
  let x_486 : u32 = u_xlatu35;
  u_xlatu3 = (x_486 >> 6u);
  let x_490 : u32 = u_xlatu35;
  let x_491 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_490 ^ x_491));
  let x_494 : i32 = u_xlati35;
  u_xlatu35 = (bitcast<u32>(x_494) * 9u);
  let x_498 : u32 = u_xlatu35;
  u_xlatu3 = (x_498 >> 11u);
  let x_501 : u32 = u_xlatu35;
  let x_502 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_501 ^ x_502));
  let x_505 : i32 = u_xlati35;
  u_xlati35 = (x_505 * 32769i);
  let x_509 : i32 = u_xlati35;
  let x_512 : u32 = u_xlatu13.y;
  u_xlati24 = bitcast<i32>((bitcast<u32>(x_509) ^ x_512));
  let x_516 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_516) * 1025u);
  let x_519 : u32 = u_xlatu24;
  u_xlatu35 = (x_519 >> 6u);
  let x_521 : u32 = u_xlatu35;
  let x_522 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_521 ^ x_522));
  let x_525 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_525) * 9u);
  let x_528 : u32 = u_xlatu24;
  u_xlatu35 = (x_528 >> 11u);
  let x_530 : u32 = u_xlatu35;
  let x_531 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_530 ^ x_531));
  let x_534 : i32 = u_xlati24;
  u_xlati24 = (x_534 * 32769i);
  let x_537 : i32 = u_xlati24;
  let x_540 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_537) ^ x_540));
  let x_543 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_543) * 1025u);
  let x_548 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_548 >> 6u);
  let x_550 : u32 = u_xlatu24;
  let x_552 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_550 ^ x_552));
  let x_555 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_555) * 9u);
  let x_560 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_560 >> 11u);
  let x_562 : u32 = u_xlatu24;
  let x_564 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_562 ^ x_564));
  let x_567 : i32 = u_xlati13;
  u_xlati13 = (x_567 * 32769i);
  param = 1065353216i;
  let x_573 : i32 = u_xlati13;
  param_1 = x_573;
  param_2 = 0i;
  param_3 = 23i;
  let x_576 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat13.x = bitcast<f32>(x_576);
  let x_580 : f32 = u_xlat13.x;
  u_xlat13.x = (x_580 + -1.0f);
  let x_585 : f32 = u_xlat13.x;
  u_xlat24 = (-(x_585) + 1.0f);
  let x_588 : bool = u_xlatb2;
  if (x_588) {
    let x_593 : f32 = u_xlat13.x;
    x_589 = x_593;
  } else {
    let x_595 : f32 = u_xlat24;
    x_589 = x_595;
  }
  let x_596 : f32 = x_589;
  u_xlat2.x = x_596;
  let x_598 : f32 = u_xlat0;
  let x_601 : f32 = u_xlat2.x;
  u_xlat0 = ((x_598 * 2.0f) + -(x_601));
  let x_604 : f32 = u_xlat0;
  let x_606 : f32 = u_xlat6.w;
  u_xlat2.x = (x_604 * x_606);
  let x_610 : f32 = u_xlat2.x;
  u_xlatb13 = (x_610 >= 0.400000006f);
  let x_613 : bool = u_xlatb13;
  if (x_613) {
    let x_618 : f32 = u_xlat2.x;
    x_614 = x_618;
  } else {
    x_614 = 0.0f;
  }
  let x_620 : f32 = x_614;
  u_xlat13.x = x_620;
  let x_623 : f32 = u_xlat6.w;
  let x_624 : f32 = u_xlat0;
  u_xlat0 = ((x_623 * x_624) + -0.400000006f);
  let x_629 : f32 = u_xlat2.x;
  u_xlat24 = dpdxCoarse(x_629);
  let x_632 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_632);
  let x_636 : f32 = u_xlat2.x;
  let x_638 : f32 = u_xlat24;
  u_xlat2.x = (abs(x_636) + abs(x_638));
  let x_643 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_643, 0.0001f);
  let x_647 : f32 = u_xlat0;
  let x_649 : f32 = u_xlat2.x;
  u_xlat0 = (x_647 / x_649);
  let x_651 : f32 = u_xlat0;
  u_xlat0 = (x_651 + 0.5f);
  let x_653 : f32 = u_xlat0;
  u_xlat0 = clamp(x_653, 0.0f, 1.0f);
  let x_656 : f32 = x_151.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_656 == 0.0f));
  let x_658 : bool = u_xlatb2;
  if (x_658) {
    let x_662 : f32 = u_xlat0;
    x_659 = x_662;
  } else {
    let x_665 : f32 = u_xlat13.x;
    x_659 = x_665;
  }
  let x_666 : f32 = x_659;
  u_xlat0 = x_666;
  let x_667 : f32 = u_xlat0;
  u_xlat13.x = (x_667 + -0.0001f);
  let x_672 : f32 = u_xlat13.x;
  u_xlatb13 = (x_672 < 0.0f);
  let x_674 : bool = u_xlatb13;
  if (((select(0i, 1i, x_674) * -1i) != 0i)) {
    discard;
  }
  let x_682 : vec3<f32> = u_xlat11;
  let x_683 : vec3<f32> = u_xlat19;
  u_xlat11 = (x_682 * vec3<f32>(x_683.y, x_683.y, x_683.y));
  let x_686 : vec3<f32> = u_xlat19;
  let x_688 : vec4<f32> = vs_INTERP2;
  let x_691 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_686.x, x_686.x, x_686.x) * vec3<f32>(x_688.x, x_688.y, x_688.z)) + x_691);
  let x_693 : vec3<f32> = u_xlat19;
  let x_695 : vec3<f32> = vs_INTERP1;
  let x_697 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_693.z, x_693.z, x_693.z) * x_695) + x_697);
  let x_699 : vec3<f32> = u_xlat11;
  let x_700 : vec3<f32> = u_xlat11;
  u_xlat13.x = dot(x_699, x_700);
  let x_704 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_704);
  let x_707 : vec3<f32> = u_xlat11;
  let x_708 : vec3<f32> = u_xlat13;
  u_xlat11 = (x_707 * vec3<f32>(x_708.x, x_708.x, x_708.x));
  let x_718 : vec2<f32> = vs_INTERP5;
  let x_720 : f32 = x_151.x_GlobalMipBias.x;
  let x_721 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_718, x_720);
  u_xlat13 = vec3<f32>(x_721.x, x_721.y, x_721.z);
  let x_725 : vec4<f32> = x_151.x_ScaledScreenParams;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_730 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_726.x, x_726.y));
  let x_731 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_730.x, x_730.y, x_731.z);
  let x_733 : vec3<f32> = u_xlat3;
  let x_735 : vec4<f32> = hlslcc_FragCoord;
  let x_737 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) * vec2<f32>(x_735.x, x_735.y));
  let x_738 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_737.x, x_737.y, x_738.z);
  let x_742 : f32 = u_xlat3.y;
  let x_745 : f32 = x_151.x_ScaleBiasRt.x;
  let x_748 : f32 = x_151.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_742 * x_745) + x_748);
  let x_752 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_752) + 1.0f);
  let x_757 : f32 = u_xlat8.x;
  u_xlat8.x = x_757;
  let x_760 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_760, 0.0f, 1.0f);
  let x_763 : f32 = u_xlat0;
  u_xlat0 = x_763;
  let x_764 : f32 = u_xlat0;
  u_xlat0 = clamp(x_764, 0.0f, 1.0f);
  let x_766 : vec3<f32> = u_xlat7;
  u_xlat4 = (x_766 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_771 : f32 = u_xlat8.x;
  u_xlat14.x = (-(x_771) + 1.0f);
  let x_777 : f32 = u_xlat14.x;
  let x_779 : f32 = u_xlat14.x;
  u_xlat36 = (x_777 * x_779);
  let x_781 : f32 = u_xlat36;
  u_xlat36 = max(x_781, 0.0078125f);
  let x_785 : f32 = u_xlat36;
  let x_786 : f32 = u_xlat36;
  u_xlat37 = (x_785 * x_786);
  let x_790 : f32 = u_xlat8.x;
  u_xlat38 = (x_790 + 0.040000021f);
  let x_793 : f32 = u_xlat38;
  u_xlat38 = min(x_793, 1.0f);
  let x_795 : f32 = u_xlat36;
  u_xlat6.x = ((x_795 * 4.0f) + 2.0f);
  let x_805 : vec3<f32> = u_xlat3;
  let x_808 : f32 = x_151.x_GlobalMipBias.x;
  let x_809 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_805.x, x_805.z), x_808);
  u_xlat3.x = x_809.x;
  let x_814 : f32 = u_xlat3.x;
  u_xlat25 = (x_814 + -1.0f);
  let x_818 : f32 = x_151.x_AmbientOcclusionParam.w;
  let x_819 : f32 = u_xlat25;
  u_xlat25 = ((x_818 * x_819) + 1.0f);
  let x_823 : f32 = u_xlat3.x;
  let x_825 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_823, x_825);
  let x_830 : vec4<f32> = vs_INTERP9;
  let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
  let x_833 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_831.x, x_831.y, x_833);
  let x_841 : vec3<f32> = txVec1;
  let x_843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_841.xy, x_841.z);
  u_xlat17.x = x_843;
  let x_846 : f32 = u_xlat17.x;
  let x_848 : f32 = x_351.x_MainLightShadowParams.x;
  let x_850 : f32 = u_xlat34;
  u_xlat34 = ((x_846 * x_848) + x_850);
  let x_854 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_854);
  let x_858 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_858 >= 1.0f);
  let x_860 : bool = u_xlatb28;
  let x_861 : bool = u_xlatb17;
  u_xlatb17 = (x_860 | x_861);
  let x_863 : bool = u_xlatb17;
  let x_864 : f32 = u_xlat34;
  u_xlat34 = select(x_864, 1.0f, x_863);
  let x_866 : vec3<f32> = vs_INTERP0;
  let x_868 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat17 = (x_866 + -(x_868));
  let x_871 : vec3<f32> = u_xlat17;
  let x_872 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_871, x_872);
  let x_876 : f32 = u_xlat17.x;
  let x_878 : f32 = x_351.x_MainLightShadowParams.z;
  let x_881 : f32 = x_351.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_876 * x_878) + x_881);
  let x_885 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_885, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat34;
  u_xlat28 = (-(x_889) + 1.0f);
  let x_893 : f32 = u_xlat17.x;
  let x_894 : f32 = u_xlat28;
  let x_896 : f32 = u_xlat34;
  u_xlat34 = ((x_893 * x_894) + x_896);
  let x_898 : f32 = u_xlat25;
  let x_901 : vec4<f32> = x_151.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec3<f32> = u_xlat5;
  let x_906 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(x_904), x_906);
  let x_910 : f32 = u_xlat7.x;
  let x_912 : f32 = u_xlat7.x;
  u_xlat7.x = (x_910 + x_912);
  let x_915 : vec3<f32> = u_xlat11;
  let x_916 : vec3<f32> = u_xlat7;
  let x_920 : vec3<f32> = u_xlat5;
  u_xlat7 = ((x_915 * -(vec3<f32>(x_916.x, x_916.x, x_916.x))) + -(x_920));
  let x_924 : vec3<f32> = u_xlat11;
  let x_925 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_924, x_925);
  let x_927 : f32 = u_xlat40;
  u_xlat40 = clamp(x_927, 0.0f, 1.0f);
  let x_929 : f32 = u_xlat40;
  u_xlat40 = (-(x_929) + 1.0f);
  let x_932 : f32 = u_xlat40;
  let x_933 : f32 = u_xlat40;
  u_xlat40 = (x_932 * x_933);
  let x_935 : f32 = u_xlat40;
  let x_936 : f32 = u_xlat40;
  u_xlat40 = (x_935 * x_936);
  let x_939 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_939) * 0.699999988f) + 1.700000048f);
  let x_947 : f32 = u_xlat14.x;
  let x_949 : f32 = u_xlat8.x;
  u_xlat14.x = (x_947 * x_949);
  let x_953 : f32 = u_xlat14.x;
  u_xlat14.x = (x_953 * 6.0f);
  let x_965 : vec3<f32> = u_xlat7;
  let x_967 : f32 = u_xlat14.x;
  let x_968 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_965, x_967);
  u_xlat8 = x_968;
  let x_970 : f32 = u_xlat8.w;
  u_xlat14.x = (x_970 + -1.0f);
  let x_974 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_976 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_974 * x_976) + 1.0f);
  let x_981 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_981, 0.0f);
  let x_985 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_985);
  let x_989 : f32 = u_xlat14.x;
  let x_991 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_989 * x_991);
  let x_995 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_995);
  let x_999 : f32 = u_xlat14.x;
  let x_1001 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_999 * x_1001);
  let x_1004 : vec4<f32> = u_xlat8;
  let x_1006 : vec3<f32> = u_xlat14;
  u_xlat7 = (vec3<f32>(x_1004.x, x_1004.y, x_1004.z) * vec3<f32>(x_1006.x, x_1006.x, x_1006.x));
  let x_1009 : f32 = u_xlat36;
  let x_1011 : f32 = u_xlat36;
  let x_1015 : vec2<f32> = ((vec2<f32>(x_1009, x_1009) * vec2<f32>(x_1011, x_1011)) + vec2<f32>(-1.0f, 1.0f));
  let x_1016 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1015.x, x_1016.y, x_1015.y);
  let x_1019 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_1019);
  let x_1021 : f32 = u_xlat38;
  u_xlat38 = (x_1021 + -0.039999999f);
  let x_1024 : f32 = u_xlat40;
  let x_1025 : f32 = u_xlat38;
  u_xlat38 = ((x_1024 * x_1025) + 0.039999999f);
  let x_1029 : f32 = u_xlat36;
  let x_1030 : f32 = u_xlat38;
  u_xlat36 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat36;
  let x_1034 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1032, x_1032, x_1032) * x_1034);
  let x_1036 : vec3<f32> = u_xlat13;
  let x_1037 : vec3<f32> = u_xlat4;
  let x_1039 : vec3<f32> = u_xlat7;
  u_xlat13 = ((x_1036 * x_1037) + x_1039);
  let x_1041 : f32 = u_xlat34;
  let x_1043 : f32 = x_89.unity_LightData.z;
  u_xlat34 = (x_1041 * x_1043);
  let x_1045 : vec3<f32> = u_xlat11;
  let x_1047 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat36 = dot(x_1045, vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1050, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat34;
  let x_1053 : f32 = u_xlat36;
  u_xlat34 = (x_1052 * x_1053);
  let x_1055 : f32 = u_xlat34;
  let x_1057 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1055, x_1055, x_1055) * x_1057);
  let x_1059 : vec3<f32> = u_xlat5;
  let x_1061 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat7 = (x_1059 + vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : vec3<f32> = u_xlat7;
  let x_1065 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1064, x_1065);
  let x_1067 : f32 = u_xlat34;
  u_xlat34 = max(x_1067, 1.17549435e-37f);
  let x_1069 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_1069);
  let x_1071 : f32 = u_xlat34;
  let x_1073 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1071, x_1071, x_1071) * x_1073);
  let x_1075 : vec3<f32> = u_xlat11;
  let x_1076 : vec3<f32> = u_xlat7;
  u_xlat34 = dot(x_1075, x_1076);
  let x_1078 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1078, 0.0f, 1.0f);
  let x_1081 : vec4<f32> = x_151.x_MainLightPosition;
  let x_1083 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), x_1083);
  let x_1085 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1085, 0.0f, 1.0f);
  let x_1087 : f32 = u_xlat34;
  let x_1088 : f32 = u_xlat34;
  u_xlat34 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat34;
  let x_1092 : f32 = u_xlat14.x;
  u_xlat34 = ((x_1090 * x_1092) + 1.000010014f);
  let x_1096 : f32 = u_xlat36;
  let x_1097 : f32 = u_xlat36;
  u_xlat36 = (x_1096 * x_1097);
  let x_1099 : f32 = u_xlat34;
  let x_1100 : f32 = u_xlat34;
  u_xlat34 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat36;
  u_xlat36 = max(x_1102, 0.100000001f);
  let x_1105 : f32 = u_xlat34;
  let x_1106 : f32 = u_xlat36;
  u_xlat34 = (x_1105 * x_1106);
  let x_1109 : f32 = u_xlat6.x;
  let x_1110 : f32 = u_xlat34;
  u_xlat34 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat37;
  let x_1113 : f32 = u_xlat34;
  u_xlat34 = (x_1112 / x_1113);
  let x_1115 : f32 = u_xlat34;
  let x_1119 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1115, x_1115, x_1115) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1119);
  let x_1121 : vec3<f32> = u_xlat17;
  let x_1122 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1121 * x_1122);
  let x_1126 : f32 = x_151.x_AdditionalLightsCount.x;
  let x_1128 : f32 = x_89.unity_LightData.y;
  u_xlat34 = min(x_1126, x_1128);
  let x_1131 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1131));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1143 : u32 = u_xlatu_loop_1;
    let x_1144 : u32 = u_xlatu34;
    if ((x_1143 < x_1144)) {
    } else {
      break;
    }
    let x_1147 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1147 >> 2u);
    let x_1150 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1150 & 3u));
    let x_1153 : u32 = u_xlatu38;
    let x_1156 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1153)];
    let x_1166 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1171 : vec4<u32> = indexable[x_1166];
    u_xlat38 = dot(x_1156, bitcast<vec4<f32>>(x_1171));
    let x_1175 : f32 = u_xlat38;
    u_xlati38 = i32(x_1175);
    let x_1177 : vec3<f32> = vs_INTERP0;
    let x_1189 : i32 = u_xlati38;
    let x_1191 : vec4<f32> = x_1188.x_AdditionalLightsPosition[x_1189];
    let x_1194 : i32 = u_xlati38;
    let x_1196 : vec4<f32> = x_1188.x_AdditionalLightsPosition[x_1194];
    let x_1198 : vec3<f32> = ((-(x_1177) * vec3<f32>(x_1191.w, x_1191.w, x_1191.w)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
    let x_1199 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1201 : vec4<f32> = u_xlat8;
    let x_1203 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
    let x_1206 : f32 = u_xlat40;
    u_xlat40 = max(x_1206, 6.10351562e-05f);
    let x_1210 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1210);
    let x_1212 : f32 = u_xlat41;
    let x_1214 : vec4<f32> = u_xlat8;
    let x_1216 : vec3<f32> = (vec3<f32>(x_1212, x_1212, x_1212) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
    let x_1217 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
    let x_1220 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1220);
    let x_1222 : f32 = u_xlat40;
    let x_1223 : i32 = u_xlati38;
    let x_1225 : f32 = x_1188.x_AdditionalLightsAttenuation[x_1223].x;
    u_xlat40 = (x_1222 * x_1225);
    let x_1227 : f32 = u_xlat40;
    let x_1229 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1227) * x_1229) + 1.0f);
    let x_1232 : f32 = u_xlat40;
    u_xlat40 = max(x_1232, 0.0f);
    let x_1234 : f32 = u_xlat40;
    let x_1235 : f32 = u_xlat40;
    u_xlat40 = (x_1234 * x_1235);
    let x_1237 : f32 = u_xlat40;
    let x_1238 : f32 = u_xlat42;
    u_xlat40 = (x_1237 * x_1238);
    let x_1240 : i32 = u_xlati38;
    let x_1242 : vec4<f32> = x_1188.x_AdditionalLightsSpotDir[x_1240];
    let x_1244 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1242.x, x_1242.y, x_1242.z), vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
    let x_1247 : f32 = u_xlat42;
    let x_1248 : i32 = u_xlati38;
    let x_1250 : f32 = x_1188.x_AdditionalLightsAttenuation[x_1248].z;
    let x_1252 : i32 = u_xlati38;
    let x_1254 : f32 = x_1188.x_AdditionalLightsAttenuation[x_1252].w;
    u_xlat42 = ((x_1247 * x_1250) + x_1254);
    let x_1256 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1256, 0.0f, 1.0f);
    let x_1258 : f32 = u_xlat42;
    let x_1259 : f32 = u_xlat42;
    u_xlat42 = (x_1258 * x_1259);
    let x_1261 : f32 = u_xlat40;
    let x_1262 : f32 = u_xlat42;
    u_xlat40 = (x_1261 * x_1262);
    let x_1265 : f32 = u_xlat25;
    let x_1267 : i32 = u_xlati38;
    let x_1269 : vec4<f32> = x_1188.x_AdditionalLightsColor[x_1267];
    u_xlat10 = (vec3<f32>(x_1265, x_1265, x_1265) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
    let x_1272 : vec3<f32> = u_xlat11;
    let x_1273 : vec4<f32> = u_xlat9;
    u_xlat38 = dot(x_1272, vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
    let x_1276 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1276, 0.0f, 1.0f);
    let x_1278 : f32 = u_xlat38;
    let x_1279 : f32 = u_xlat40;
    u_xlat38 = (x_1278 * x_1279);
    let x_1281 : f32 = u_xlat38;
    let x_1283 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1281, x_1281, x_1281) * x_1283);
    let x_1285 : vec4<f32> = u_xlat8;
    let x_1287 : f32 = u_xlat41;
    let x_1290 : vec3<f32> = u_xlat5;
    let x_1291 : vec3<f32> = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(x_1287, x_1287, x_1287)) + x_1290);
    let x_1292 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
    let x_1294 : vec4<f32> = u_xlat8;
    let x_1296 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
    let x_1299 : f32 = u_xlat38;
    u_xlat38 = max(x_1299, 1.17549435e-37f);
    let x_1301 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1301);
    let x_1303 : f32 = u_xlat38;
    let x_1305 : vec4<f32> = u_xlat8;
    let x_1307 : vec3<f32> = (vec3<f32>(x_1303, x_1303, x_1303) * vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
    let x_1310 : vec3<f32> = u_xlat11;
    let x_1311 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1310, vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
    let x_1314 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1314, 0.0f, 1.0f);
    let x_1316 : vec4<f32> = u_xlat9;
    let x_1318 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1316.x, x_1316.y, x_1316.z), vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
    let x_1321 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1321, 0.0f, 1.0f);
    let x_1323 : f32 = u_xlat38;
    let x_1324 : f32 = u_xlat38;
    u_xlat38 = (x_1323 * x_1324);
    let x_1326 : f32 = u_xlat38;
    let x_1328 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1326 * x_1328) + 1.000010014f);
    let x_1331 : f32 = u_xlat40;
    let x_1332 : f32 = u_xlat40;
    u_xlat40 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat38;
    let x_1335 : f32 = u_xlat38;
    u_xlat38 = (x_1334 * x_1335);
    let x_1337 : f32 = u_xlat40;
    u_xlat40 = max(x_1337, 0.100000001f);
    let x_1339 : f32 = u_xlat38;
    let x_1340 : f32 = u_xlat40;
    u_xlat38 = (x_1339 * x_1340);
    let x_1343 : f32 = u_xlat6.x;
    let x_1344 : f32 = u_xlat38;
    u_xlat38 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat37;
    let x_1347 : f32 = u_xlat38;
    u_xlat38 = (x_1346 / x_1347);
    let x_1349 : f32 = u_xlat38;
    let x_1352 : vec3<f32> = u_xlat4;
    let x_1353 : vec3<f32> = ((vec3<f32>(x_1349, x_1349, x_1349) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1352);
    let x_1354 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
    let x_1356 : vec4<f32> = u_xlat8;
    let x_1358 : vec3<f32> = u_xlat10;
    let x_1360 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1356.x, x_1356.y, x_1356.z) * x_1358) + x_1360);

    continuing {
      let x_1362 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1362 + bitcast<u32>(1i));
    }
  }
  let x_1364 : vec3<f32> = u_xlat13;
  let x_1365 : vec3<f32> = u_xlat3;
  let x_1368 : vec3<f32> = u_xlat17;
  u_xlat11 = ((x_1364 * vec3<f32>(x_1365.x, x_1365.x, x_1365.x)) + x_1368);
  let x_1370 : vec3<f32> = u_xlat7;
  let x_1371 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1370 + x_1371);
  let x_1375 : vec4<f32> = vs_INTERP4;
  let x_1377 : vec3<f32> = u_xlat1;
  let x_1379 : vec3<f32> = u_xlat11;
  let x_1380 : vec3<f32> = ((vec3<f32>(x_1375.w, x_1375.w, x_1375.w) * x_1377) + x_1379);
  let x_1381 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : bool = u_xlatb2;
  let x_1384 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1384, x_1383);
  let x_1392 : u32 = x_151.x_RenderingLayerMaxInt;
  let x_1394 : f32 = x_89.unity_RenderingLayer.x;
  u_xlatu0 = (x_1392 & bitcast<u32>(x_1394));
  let x_1397 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1397);
  let x_1400 : f32 = u_xlat0;
  let x_1402 : f32 = x_151.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1400 * x_1402);
  let x_1406 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1406, 0.0f, 1.0f);
  let x_1410 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1410.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

