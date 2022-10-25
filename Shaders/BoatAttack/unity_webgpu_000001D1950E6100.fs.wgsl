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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_89 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_153 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_269 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_359 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_975 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1400 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1507 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_179 : f32;
  var x_192 : f32;
  var x_204 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb16 : bool;
  var x_463 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatu16 : vec3<u32>;
  var u_xlatu44 : u32;
  var u_xlatu3 : u32;
  var u_xlati44 : i32;
  var u_xlati30 : i32;
  var u_xlatu30 : u32;
  var u_xlati16 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat30 : f32;
  var x_597 : f32;
  var x_622 : f32;
  var x_667 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat32 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_1059 : f32;
  var x_1070 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu43 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu18 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu49 : u32;
  var u_xlati51 : i32;
  var u_xlati49 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1802 : f32;
  var x_1815 : f32;
  var x_1867 : f32;
  var x_1878 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_79);
  let x_93 : f32 = x_89.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_93 >= 0.0f);
  let x_100 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_100);
  let x_105 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_105);
  let x_109 : f32 = u_xlat14.y;
  let x_111 : f32 = u_xlat14.x;
  u_xlat14.x = (x_109 * x_111);
  let x_115 : vec3<f32> = vs_INTERP1;
  let x_117 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_115.z, x_115.x, x_115.y) * vec3<f32>(x_117.y, x_117.z, x_117.x));
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  let x_125 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_120.y, x_120.z, x_120.x) * vec3<f32>(x_122.z, x_122.x, x_122.y)) + -(x_125));
  let x_128 : vec3<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : f32 = u_xlat0;
  let x_134 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : f32 = u_xlat0;
  let x_139 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_137, x_137, x_137) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = u_xlat14;
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
  u_xlat43 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat43;
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
  let x_273 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_282 : vec4<f32> = vs_INTERP3;
  let x_285 : f32 = x_153.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_282.x, x_282.y), x_285);
  u_xlat8 = vec4<f32>(x_286.w, x_286.x, x_286.y, x_286.z);
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_289.y, x_289.z, x_289.w, x_289.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_296 : vec4<f32> = u_xlat9;
  let x_297 : vec4<f32> = u_xlat9;
  u_xlat0 = dot(x_296, x_297);
  let x_299 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_299);
  let x_302 : f32 = u_xlat0;
  let x_304 : vec4<f32> = u_xlat9;
  u_xlat22 = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_309 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_309 * 200.0f);
  let x_312 : f32 = u_xlat0;
  u_xlat0 = min(x_312, 1.0f);
  let x_314 : f32 = u_xlat0;
  let x_316 : vec4<f32> = u_xlat6;
  let x_318 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec3<f32> = u_xlat22;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.y, x_323.y, x_323.y));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat22;
  let x_330 : vec3<f32> = u_xlat2;
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_328.x, x_328.x, x_328.x) * x_330) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec3<f32> = u_xlat22;
  let x_337 : vec3<f32> = u_xlat1;
  let x_339 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_335.z, x_335.z, x_335.z) * x_337) + x_339);
  let x_341 : vec3<f32> = u_xlat1;
  let x_342 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_341, x_342);
  let x_344 : f32 = u_xlat0;
  u_xlat0 = max(x_344, 1.17549435e-37f);
  let x_347 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_347);
  let x_349 : f32 = u_xlat0;
  let x_351 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_349, x_349, x_349) * x_351);
  let x_353 : vec3<f32> = vs_INTERP0;
  let x_361 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_353.y, x_353.y, x_353.y) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][0i];
  let x_367 : vec3<f32> = vs_INTERP0;
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.x, x_367.x)) + x_370);
  let x_373 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][2i];
  let x_375 : vec3<f32> = vs_INTERP0;
  let x_378 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.z, x_375.z, x_375.z)) + x_378);
  let x_380 : vec3<f32> = u_xlat2;
  let x_382 : vec4<f32> = x_359.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_380 + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_386 : vec3<f32> = u_xlat2;
  let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
  let x_389 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_387.x, x_387.y, x_389);
  let x_401 : vec3<f32> = txVec0;
  let x_403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_401.xy, x_401.z);
  u_xlat0 = x_403;
  let x_406 : f32 = x_359.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_406) + 1.0f);
  let x_409 : f32 = u_xlat0;
  let x_411 : f32 = x_359.x_MainLightShadowParams.x;
  let x_413 : f32 = u_xlat43;
  u_xlat0 = ((x_409 * x_411) + x_413);
  let x_417 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_417);
  let x_421 : f32 = u_xlat2.z;
  u_xlatb16 = (x_421 >= 1.0f);
  let x_423 : bool = u_xlatb16;
  let x_424 : bool = u_xlatb2;
  u_xlatb2 = (x_423 | x_424);
  let x_426 : bool = u_xlatb2;
  let x_427 : f32 = u_xlat0;
  u_xlat0 = select(x_427, 1.0f, x_426);
  let x_429 : vec3<f32> = u_xlat1;
  let x_431 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat1.x = dot(x_429, -(vec3<f32>(x_431.x, x_431.y, x_431.z)));
  let x_437 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_437, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat0;
  let x_444 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat2 = (vec3<f32>(x_440, x_440, x_440) * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec3<f32> = u_xlat1;
  let x_449 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_447.x, x_447.x, x_447.x) * x_449);
  let x_451 : vec3<f32> = u_xlat1;
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_451 * vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_456 : f32 = x_89.unity_LODFade.x;
  u_xlatb0 = (x_456 < 0.0f);
  let x_459 : f32 = x_89.unity_LODFade.x;
  u_xlat2.x = (x_459 + 1.0f);
  let x_462 : bool = u_xlatb0;
  if (x_462) {
    let x_467 : f32 = u_xlat2.x;
    x_463 = x_467;
  } else {
    let x_470 : f32 = x_89.unity_LODFade.x;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  u_xlat0 = x_471;
  let x_473 : f32 = u_xlat0;
  u_xlatb2 = (0.5f >= x_473);
  let x_476 : vec3<f32> = u_xlat4;
  let x_480 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat16 = (abs(x_476) * vec3<f32>(x_480.x, x_480.y, x_480.x));
  let x_486 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_486);
  let x_490 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_490 * 1025u);
  let x_494 : u32 = u_xlatu44;
  u_xlatu3 = (x_494 >> 6u);
  let x_498 : u32 = u_xlatu44;
  let x_499 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_498 ^ x_499));
  let x_502 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_502) * 9u);
  let x_506 : u32 = u_xlatu44;
  u_xlatu3 = (x_506 >> 11u);
  let x_509 : u32 = u_xlatu44;
  let x_510 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_509 ^ x_510));
  let x_513 : i32 = u_xlati44;
  u_xlati44 = (x_513 * 32769i);
  let x_517 : i32 = u_xlati44;
  let x_520 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_517) ^ x_520));
  let x_524 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_524) * 1025u);
  let x_527 : u32 = u_xlatu30;
  u_xlatu44 = (x_527 >> 6u);
  let x_529 : u32 = u_xlatu44;
  let x_530 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_529 ^ x_530));
  let x_533 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_533) * 9u);
  let x_536 : u32 = u_xlatu30;
  u_xlatu44 = (x_536 >> 11u);
  let x_538 : u32 = u_xlatu44;
  let x_539 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_538 ^ x_539));
  let x_542 : i32 = u_xlati30;
  u_xlati30 = (x_542 * 32769i);
  let x_545 : i32 = u_xlati30;
  let x_548 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_545) ^ x_548));
  let x_551 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_551) * 1025u);
  let x_556 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_556 >> 6u);
  let x_558 : u32 = u_xlatu30;
  let x_560 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_558 ^ x_560));
  let x_563 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_563) * 9u);
  let x_568 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_568 >> 11u);
  let x_570 : u32 = u_xlatu30;
  let x_572 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_570 ^ x_572));
  let x_575 : i32 = u_xlati16;
  u_xlati16 = (x_575 * 32769i);
  param = 1065353216i;
  let x_581 : i32 = u_xlati16;
  param_1 = x_581;
  param_2 = 0i;
  param_3 = 23i;
  let x_584 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_584);
  let x_588 : f32 = u_xlat16.x;
  u_xlat16.x = (x_588 + -1.0f);
  let x_593 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_593) + 1.0f);
  let x_596 : bool = u_xlatb2;
  if (x_596) {
    let x_601 : f32 = u_xlat16.x;
    x_597 = x_601;
  } else {
    let x_603 : f32 = u_xlat30;
    x_597 = x_603;
  }
  let x_604 : f32 = x_597;
  u_xlat2.x = x_604;
  let x_606 : f32 = u_xlat0;
  let x_609 : f32 = u_xlat2.x;
  u_xlat0 = ((x_606 * 2.0f) + -(x_609));
  let x_612 : f32 = u_xlat0;
  let x_614 : f32 = u_xlat6.w;
  u_xlat2.x = (x_612 * x_614);
  let x_618 : f32 = u_xlat2.x;
  u_xlatb16 = (x_618 >= 0.400000006f);
  let x_621 : bool = u_xlatb16;
  if (x_621) {
    let x_626 : f32 = u_xlat2.x;
    x_622 = x_626;
  } else {
    x_622 = 0.0f;
  }
  let x_628 : f32 = x_622;
  u_xlat16.x = x_628;
  let x_631 : f32 = u_xlat6.w;
  let x_632 : f32 = u_xlat0;
  u_xlat0 = ((x_631 * x_632) + -0.400000006f);
  let x_637 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_637);
  let x_640 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_640);
  let x_644 : f32 = u_xlat2.x;
  let x_646 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_644) + abs(x_646));
  let x_651 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_651, 0.0001f);
  let x_655 : f32 = u_xlat0;
  let x_657 : f32 = u_xlat2.x;
  u_xlat0 = (x_655 / x_657);
  let x_659 : f32 = u_xlat0;
  u_xlat0 = (x_659 + 0.5f);
  let x_661 : f32 = u_xlat0;
  u_xlat0 = clamp(x_661, 0.0f, 1.0f);
  let x_664 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_664 == 0.0f));
  let x_666 : bool = u_xlatb2;
  if (x_666) {
    let x_670 : f32 = u_xlat0;
    x_667 = x_670;
  } else {
    let x_673 : f32 = u_xlat16.x;
    x_667 = x_673;
  }
  let x_674 : f32 = x_667;
  u_xlat0 = x_674;
  let x_675 : f32 = u_xlat0;
  u_xlat16.x = (x_675 + -0.0001f);
  let x_680 : f32 = u_xlat16.x;
  u_xlatb16 = (x_680 < 0.0f);
  let x_682 : bool = u_xlatb16;
  if (((select(0i, 1i, x_682) * -1i) != 0i)) {
    discard;
  }
  let x_690 : vec3<f32> = u_xlat14;
  let x_691 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_690 * vec3<f32>(x_691.y, x_691.y, x_691.y));
  let x_694 : vec3<f32> = u_xlat22;
  let x_696 : vec4<f32> = vs_INTERP2;
  let x_699 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_694.x, x_694.x, x_694.x) * vec3<f32>(x_696.x, x_696.y, x_696.z)) + x_699);
  let x_701 : vec3<f32> = u_xlat22;
  let x_703 : vec3<f32> = vs_INTERP1;
  let x_705 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_701.z, x_701.z, x_701.z) * x_703) + x_705);
  let x_707 : vec3<f32> = u_xlat14;
  let x_708 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_707, x_708);
  let x_712 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_712);
  let x_715 : vec3<f32> = u_xlat14;
  let x_716 : vec3<f32> = u_xlat16;
  let x_718 : vec3<f32> = (x_715 * vec3<f32>(x_716.x, x_716.x, x_716.x));
  let x_719 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  u_xlat3.w = 1.0f;
  let x_724 : vec4<f32> = x_89.unity_SHAr;
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_724, x_725);
  let x_730 : vec4<f32> = x_89.unity_SHAg;
  let x_731 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_730, x_731);
  let x_736 : vec4<f32> = x_89.unity_SHAb;
  let x_737 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_736, x_737);
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_740.y, x_740.z, x_740.z, x_740.x) * vec4<f32>(x_742.x, x_742.y, x_742.z, x_742.z));
  let x_747 : vec4<f32> = x_89.unity_SHBr;
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_747, x_748);
  let x_753 : vec4<f32> = x_89.unity_SHBg;
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_753, x_754);
  let x_758 : vec4<f32> = x_89.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_758, x_759);
  let x_763 : f32 = u_xlat3.y;
  let x_765 : f32 = u_xlat3.y;
  u_xlat14.x = (x_763 * x_765);
  let x_769 : f32 = u_xlat3.x;
  let x_771 : f32 = u_xlat3.x;
  let x_774 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_769 * x_771) + -(x_774));
  let x_780 : vec4<f32> = x_89.unity_SHC;
  let x_782 : vec3<f32> = u_xlat14;
  let x_785 : vec4<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782.x, x_782.x, x_782.x)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec3<f32> = u_xlat14;
  let x_789 : vec3<f32> = u_xlat4;
  u_xlat14 = (x_788 + x_789);
  let x_791 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_791, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_796 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_797 : vec2<f32> = vec2<f32>(x_796.x, x_796.y);
  let x_801 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_797.x, x_797.y));
  let x_802 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_801.x, x_801.y, x_802.z);
  let x_804 : vec3<f32> = u_xlat16;
  let x_806 : vec4<f32> = hlslcc_FragCoord;
  let x_808 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_806.x, x_806.y));
  let x_809 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_808.x, x_808.y, x_809.z);
  let x_812 : f32 = u_xlat4.y;
  let x_815 : f32 = x_153.x_ScaleBiasRt.x;
  let x_818 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat16.x = ((x_812 * x_815) + x_818);
  let x_822 : f32 = u_xlat16.x;
  u_xlat4.z = (-(x_822) + 1.0f);
  let x_827 : f32 = u_xlat8.x;
  u_xlat8.x = x_827;
  let x_830 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_830, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat0;
  u_xlat0 = x_833;
  let x_834 : f32 = u_xlat0;
  u_xlat0 = clamp(x_834, 0.0f, 1.0f);
  let x_836 : vec4<f32> = u_xlat7;
  u_xlat16 = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_843 : f32 = u_xlat8.x;
  u_xlat45 = (-(x_843) + 1.0f);
  let x_847 : f32 = u_xlat45;
  let x_848 : f32 = u_xlat45;
  u_xlat18 = (x_847 * x_848);
  let x_850 : f32 = u_xlat18;
  u_xlat18 = max(x_850, 0.0078125f);
  let x_854 : f32 = u_xlat18;
  let x_855 : f32 = u_xlat18;
  u_xlat46 = (x_854 * x_855);
  let x_859 : f32 = u_xlat8.x;
  u_xlat47 = (x_859 + 0.040000021f);
  let x_862 : f32 = u_xlat47;
  u_xlat47 = min(x_862, 1.0f);
  let x_864 : f32 = u_xlat18;
  u_xlat6.x = ((x_864 * 4.0f) + 2.0f);
  let x_874 : vec3<f32> = u_xlat4;
  let x_877 : f32 = x_153.x_GlobalMipBias.x;
  let x_878 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_874.x, x_874.z), x_877);
  u_xlat4.x = x_878.x;
  let x_883 : f32 = u_xlat4.x;
  u_xlat32 = (x_883 + -1.0f);
  let x_887 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_888 : f32 = u_xlat32;
  u_xlat32 = ((x_887 * x_888) + 1.0f);
  let x_892 : f32 = u_xlat4.x;
  let x_894 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_892, x_894);
  let x_899 : vec4<f32> = vs_INTERP9;
  let x_900 : vec2<f32> = vec2<f32>(x_899.x, x_899.y);
  let x_902 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_900.x, x_900.y, x_902);
  let x_910 : vec3<f32> = txVec1;
  let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_910.xy, x_910.z);
  u_xlat20.x = x_912;
  let x_915 : f32 = u_xlat20.x;
  let x_917 : f32 = x_359.x_MainLightShadowParams.x;
  let x_919 : f32 = u_xlat43;
  u_xlat43 = ((x_915 * x_917) + x_919);
  let x_923 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_923);
  let x_928 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_928 >= 1.0f);
  let x_930 : bool = u_xlatb34;
  let x_932 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_930 | x_932);
  let x_936 : bool = u_xlatb20.x;
  let x_937 : f32 = u_xlat43;
  u_xlat43 = select(x_937, 1.0f, x_936);
  let x_939 : vec3<f32> = vs_INTERP0;
  let x_941 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat20 = (x_939 + -(x_941));
  let x_944 : vec3<f32> = u_xlat20;
  let x_945 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_944, x_945);
  let x_949 : f32 = u_xlat20.x;
  let x_951 : f32 = x_359.x_MainLightShadowParams.z;
  let x_954 : f32 = x_359.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_949 * x_951) + x_954);
  let x_958 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_958, 0.0f, 1.0f);
  let x_962 : f32 = u_xlat43;
  u_xlat34 = (-(x_962) + 1.0f);
  let x_966 : f32 = u_xlat20.x;
  let x_967 : f32 = u_xlat34;
  let x_969 : f32 = u_xlat43;
  u_xlat43 = ((x_966 * x_967) + x_969);
  let x_977 : f32 = x_975.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_977 == -1.0f));
  let x_981 : bool = u_xlatb20.x;
  if (x_981) {
    let x_984 : vec3<f32> = vs_INTERP0;
    let x_987 : vec4<f32> = x_975.x_MainLightWorldToLight[1i];
    let x_989 : vec2<f32> = (vec2<f32>(x_984.y, x_984.y) * vec2<f32>(x_987.x, x_987.y));
    let x_990 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_989.x, x_989.y, x_990.z);
    let x_993 : vec4<f32> = x_975.x_MainLightWorldToLight[0i];
    let x_995 : vec3<f32> = vs_INTERP0;
    let x_998 : vec3<f32> = u_xlat20;
    let x_1000 : vec2<f32> = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_995.x, x_995.x)) + vec2<f32>(x_998.x, x_998.y));
    let x_1001 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1000.x, x_1000.y, x_1001.z);
    let x_1004 : vec4<f32> = x_975.x_MainLightWorldToLight[2i];
    let x_1006 : vec3<f32> = vs_INTERP0;
    let x_1009 : vec3<f32> = u_xlat20;
    let x_1011 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1006.z, x_1006.z)) + vec2<f32>(x_1009.x, x_1009.y));
    let x_1012 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1011.x, x_1011.y, x_1012.z);
    let x_1014 : vec3<f32> = u_xlat20;
    let x_1017 : vec4<f32> = x_975.x_MainLightWorldToLight[3i];
    let x_1019 : vec2<f32> = (vec2<f32>(x_1014.x, x_1014.y) + vec2<f32>(x_1017.x, x_1017.y));
    let x_1020 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1019.x, x_1019.y, x_1020.z);
    let x_1022 : vec3<f32> = u_xlat20;
    let x_1026 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1027 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1026.x, x_1026.y, x_1027.z);
    let x_1034 : vec3<f32> = u_xlat20;
    let x_1037 : f32 = x_153.x_GlobalMipBias.x;
    let x_1038 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1034.x, x_1034.y), x_1037);
    u_xlat7 = x_1038;
    let x_1040 : f32 = x_975.x_MainLightCookieTextureFormat;
    let x_1042 : f32 = x_975.x_MainLightCookieTextureFormat;
    let x_1044 : f32 = x_975.x_MainLightCookieTextureFormat;
    let x_1046 : f32 = x_975.x_MainLightCookieTextureFormat;
    let x_1047 : vec4<f32> = vec4<f32>(x_1040, x_1042, x_1044, x_1046);
    let x_1055 : vec4<bool> = (vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1055.x, x_1055.y);
    let x_1058 : bool = u_xlatb20.y;
    if (x_1058) {
      let x_1063 : f32 = u_xlat7.w;
      x_1059 = x_1063;
    } else {
      let x_1066 : f32 = u_xlat7.x;
      x_1059 = x_1066;
    }
    let x_1067 : f32 = x_1059;
    u_xlat34 = x_1067;
    let x_1069 : bool = u_xlatb20.x;
    if (x_1069) {
      let x_1073 : vec4<f32> = u_xlat7;
      x_1070 = vec3<f32>(x_1073.x, x_1073.y, x_1073.z);
    } else {
      let x_1076 : f32 = u_xlat34;
      x_1070 = vec3<f32>(x_1076, x_1076, x_1076);
    }
    let x_1078 : vec3<f32> = x_1070;
    u_xlat20 = x_1078;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1083 : vec3<f32> = u_xlat20;
  let x_1085 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat20 = (x_1083 * vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : f32 = u_xlat32;
  let x_1090 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1088, x_1088, x_1088) * x_1090);
  let x_1092 : vec3<f32> = u_xlat5;
  let x_1094 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1092), vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1099 : f32 = u_xlat7.x;
  let x_1101 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1099 + x_1101);
  let x_1104 : vec4<f32> = u_xlat3;
  let x_1106 : vec4<f32> = u_xlat7;
  let x_1110 : vec3<f32> = u_xlat5;
  let x_1112 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * -(vec3<f32>(x_1106.x, x_1106.x, x_1106.x))) + -(x_1110));
  let x_1113 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1116 : vec4<f32> = u_xlat3;
  let x_1118 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), x_1118);
  let x_1120 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1120, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat49;
  u_xlat49 = (-(x_1122) + 1.0f);
  let x_1125 : f32 = u_xlat49;
  let x_1126 : f32 = u_xlat49;
  u_xlat49 = (x_1125 * x_1126);
  let x_1128 : f32 = u_xlat49;
  let x_1129 : f32 = u_xlat49;
  u_xlat49 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_1131) * 0.699999988f) + 1.700000048f);
  let x_1138 : f32 = u_xlat45;
  let x_1140 : f32 = u_xlat8.x;
  u_xlat45 = (x_1138 * x_1140);
  let x_1142 : f32 = u_xlat45;
  u_xlat45 = (x_1142 * 6.0f);
  let x_1153 : vec4<f32> = u_xlat7;
  let x_1155 : f32 = u_xlat45;
  let x_1156 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1153.x, x_1153.y, x_1153.z), x_1155);
  u_xlat8 = x_1156;
  let x_1158 : f32 = u_xlat8.w;
  u_xlat45 = (x_1158 + -1.0f);
  let x_1161 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1162 : f32 = u_xlat45;
  u_xlat45 = ((x_1161 * x_1162) + 1.0f);
  let x_1165 : f32 = u_xlat45;
  u_xlat45 = max(x_1165, 0.0f);
  let x_1167 : f32 = u_xlat45;
  u_xlat45 = log2(x_1167);
  let x_1169 : f32 = u_xlat45;
  let x_1171 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1169 * x_1171);
  let x_1173 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1173);
  let x_1175 : f32 = u_xlat45;
  let x_1177 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1175 * x_1177);
  let x_1179 : vec4<f32> = u_xlat8;
  let x_1181 : f32 = u_xlat45;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1181, x_1181, x_1181));
  let x_1184 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : f32 = u_xlat18;
  let x_1188 : f32 = u_xlat18;
  let x_1192 : vec2<f32> = ((vec2<f32>(x_1186, x_1186) * vec2<f32>(x_1188, x_1188)) + vec2<f32>(-1.0f, 1.0f));
  let x_1193 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
  let x_1196 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1196);
  let x_1198 : f32 = u_xlat47;
  u_xlat18 = (x_1198 + -0.039999999f);
  let x_1201 : f32 = u_xlat49;
  let x_1202 : f32 = u_xlat18;
  u_xlat18 = ((x_1201 * x_1202) + 0.039999999f);
  let x_1206 : f32 = u_xlat45;
  let x_1207 : f32 = u_xlat18;
  u_xlat45 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat45;
  let x_1211 : vec4<f32> = u_xlat7;
  let x_1213 : vec3<f32> = (vec3<f32>(x_1209, x_1209, x_1209) * vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec3<f32> = u_xlat14;
  let x_1217 : vec3<f32> = u_xlat16;
  let x_1219 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1216 * x_1217) + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : f32 = u_xlat43;
  let x_1224 : f32 = x_89.unity_LightData.z;
  u_xlat43 = (x_1222 * x_1224);
  let x_1226 : vec4<f32> = u_xlat3;
  let x_1229 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1232 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1232, 0.0f, 1.0f);
  let x_1234 : f32 = u_xlat43;
  let x_1235 : f32 = u_xlat45;
  u_xlat43 = (x_1234 * x_1235);
  let x_1237 : f32 = u_xlat43;
  let x_1239 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1237, x_1237, x_1237) * x_1239);
  let x_1241 : vec3<f32> = u_xlat5;
  let x_1243 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1245 : vec3<f32> = (x_1241 + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat7;
  let x_1250 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat43;
  u_xlat43 = max(x_1253, 1.17549435e-37f);
  let x_1255 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1255);
  let x_1257 : f32 = u_xlat43;
  let x_1259 : vec4<f32> = u_xlat7;
  let x_1261 : vec3<f32> = (vec3<f32>(x_1257, x_1257, x_1257) * vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat3;
  let x_1266 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1264.x, x_1264.y, x_1264.z), vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1269, 0.0f, 1.0f);
  let x_1272 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1274 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1272.x, x_1272.y, x_1272.z), vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1277, 0.0f, 1.0f);
  let x_1279 : f32 = u_xlat43;
  let x_1280 : f32 = u_xlat43;
  u_xlat43 = (x_1279 * x_1280);
  let x_1282 : f32 = u_xlat43;
  let x_1284 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1282 * x_1284) + 1.000010014f);
  let x_1288 : f32 = u_xlat45;
  let x_1289 : f32 = u_xlat45;
  u_xlat45 = (x_1288 * x_1289);
  let x_1291 : f32 = u_xlat43;
  let x_1292 : f32 = u_xlat43;
  u_xlat43 = (x_1291 * x_1292);
  let x_1294 : f32 = u_xlat45;
  u_xlat45 = max(x_1294, 0.100000001f);
  let x_1297 : f32 = u_xlat43;
  let x_1298 : f32 = u_xlat45;
  u_xlat43 = (x_1297 * x_1298);
  let x_1301 : f32 = u_xlat6.x;
  let x_1302 : f32 = u_xlat43;
  u_xlat43 = (x_1301 * x_1302);
  let x_1304 : f32 = u_xlat46;
  let x_1305 : f32 = u_xlat43;
  u_xlat43 = (x_1304 / x_1305);
  let x_1307 : f32 = u_xlat43;
  let x_1311 : vec3<f32> = u_xlat16;
  let x_1312 : vec3<f32> = ((vec3<f32>(x_1307, x_1307, x_1307) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1311);
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec3<f32> = u_xlat20;
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1315 * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1321 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1323 : f32 = x_89.unity_LightData.y;
  u_xlat43 = min(x_1321, x_1323);
  let x_1326 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1326));
  let x_1331 : f32 = x_975.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1333 : f32 = x_975.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1335 : f32 = x_975.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1337 : f32 = x_975.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1338 : vec4<f32> = vec4<f32>(x_1331, x_1333, x_1335, x_1337);
  let x_1344 : vec4<bool> = (vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1338.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1344.x, x_1344.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1355 : u32 = u_xlatu_loop_1;
    let x_1356 : u32 = u_xlatu43;
    if ((x_1355 < x_1356)) {
    } else {
      break;
    }
    let x_1359 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1359 >> 2u);
    let x_1362 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1362 & 3u));
    let x_1365 : u32 = u_xlatu18;
    let x_1368 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1365)];
    let x_1378 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1383 : vec4<u32> = indexable[x_1378];
    u_xlat18 = dot(x_1368, bitcast<vec4<f32>>(x_1383));
    let x_1386 : f32 = u_xlat18;
    u_xlatu18 = bitcast<u32>(i32(x_1386));
    let x_1389 : vec3<f32> = vs_INTERP0;
    let x_1401 : u32 = u_xlatu18;
    let x_1404 : vec4<f32> = x_1400.x_AdditionalLightsPosition[bitcast<i32>(x_1401)];
    let x_1407 : u32 = u_xlatu18;
    let x_1410 : vec4<f32> = x_1400.x_AdditionalLightsPosition[bitcast<i32>(x_1407)];
    let x_1412 : vec3<f32> = ((-(x_1389) * vec3<f32>(x_1404.w, x_1404.w, x_1404.w)) + vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
    let x_1413 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
    let x_1415 : vec4<f32> = u_xlat9;
    let x_1417 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1415.x, x_1415.y, x_1415.z), vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
    let x_1420 : f32 = u_xlat47;
    u_xlat47 = max(x_1420, 6.10351562e-05f);
    let x_1424 : f32 = u_xlat47;
    u_xlat35 = inverseSqrt(x_1424);
    let x_1427 : f32 = u_xlat35;
    let x_1429 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1427, x_1427, x_1427) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1432);
    let x_1434 : f32 = u_xlat47;
    let x_1435 : u32 = u_xlatu18;
    let x_1438 : f32 = x_1400.x_AdditionalLightsAttenuation[bitcast<i32>(x_1435)].x;
    u_xlat47 = (x_1434 * x_1438);
    let x_1440 : f32 = u_xlat47;
    let x_1442 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1440) * x_1442) + 1.0f);
    let x_1445 : f32 = u_xlat47;
    u_xlat47 = max(x_1445, 0.0f);
    let x_1447 : f32 = u_xlat47;
    let x_1448 : f32 = u_xlat47;
    u_xlat47 = (x_1447 * x_1448);
    let x_1450 : f32 = u_xlat47;
    let x_1451 : f32 = u_xlat49;
    u_xlat47 = (x_1450 * x_1451);
    let x_1453 : u32 = u_xlatu18;
    let x_1456 : vec4<f32> = x_1400.x_AdditionalLightsSpotDir[bitcast<i32>(x_1453)];
    let x_1458 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1456.x, x_1456.y, x_1456.z), x_1458);
    let x_1460 : f32 = u_xlat49;
    let x_1461 : u32 = u_xlatu18;
    let x_1464 : f32 = x_1400.x_AdditionalLightsAttenuation[bitcast<i32>(x_1461)].z;
    let x_1466 : u32 = u_xlatu18;
    let x_1469 : f32 = x_1400.x_AdditionalLightsAttenuation[bitcast<i32>(x_1466)].w;
    u_xlat49 = ((x_1460 * x_1464) + x_1469);
    let x_1471 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1471, 0.0f, 1.0f);
    let x_1473 : f32 = u_xlat49;
    let x_1474 : f32 = u_xlat49;
    u_xlat49 = (x_1473 * x_1474);
    let x_1476 : f32 = u_xlat47;
    let x_1477 : f32 = u_xlat49;
    u_xlat47 = (x_1476 * x_1477);
    let x_1480 : u32 = u_xlatu18;
    u_xlatu49 = (x_1480 >> 5u);
    let x_1483 : u32 = u_xlatu18;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1483) & 31i)));
    let x_1489 : i32 = u_xlati51;
    let x_1491 : u32 = u_xlatu49;
    let x_1494 : f32 = x_975.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1491)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1489) & bitcast<u32>(x_1494)));
    let x_1498 : i32 = u_xlati49;
    if ((x_1498 != 0i)) {
      let x_1508 : u32 = u_xlatu18;
      let x_1511 : f32 = x_1507.x_AdditionalLightsLightTypes[bitcast<i32>(x_1508)].el;
      u_xlati49 = i32(x_1511);
      let x_1513 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1513 != 0i));
      let x_1517 : u32 = u_xlatu18;
      u_xlati52 = (bitcast<i32>(x_1517) << bitcast<u32>(2i));
      let x_1520 : i32 = u_xlati51;
      if ((x_1520 != 0i)) {
        let x_1525 : vec3<f32> = vs_INTERP0;
        let x_1527 : i32 = u_xlati52;
        let x_1530 : i32 = u_xlati52;
        let x_1534 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1527 + 1i) / 4i)][((x_1530 + 1i) % 4i)];
        let x_1536 : vec3<f32> = (vec3<f32>(x_1525.y, x_1525.y, x_1525.y) * vec3<f32>(x_1534.x, x_1534.y, x_1534.w));
        let x_1537 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
        let x_1539 : i32 = u_xlati52;
        let x_1541 : i32 = u_xlati52;
        let x_1544 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[(x_1539 / 4i)][(x_1541 % 4i)];
        let x_1546 : vec3<f32> = vs_INTERP0;
        let x_1549 : vec4<f32> = u_xlat11;
        let x_1551 : vec3<f32> = ((vec3<f32>(x_1544.x, x_1544.y, x_1544.w) * vec3<f32>(x_1546.x, x_1546.x, x_1546.x)) + vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
        let x_1552 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
        let x_1554 : i32 = u_xlati52;
        let x_1557 : i32 = u_xlati52;
        let x_1561 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1554 + 2i) / 4i)][((x_1557 + 2i) % 4i)];
        let x_1563 : vec3<f32> = vs_INTERP0;
        let x_1566 : vec4<f32> = u_xlat11;
        let x_1568 : vec3<f32> = ((vec3<f32>(x_1561.x, x_1561.y, x_1561.w) * vec3<f32>(x_1563.z, x_1563.z, x_1563.z)) + vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
        let x_1569 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
        let x_1571 : vec4<f32> = u_xlat11;
        let x_1573 : i32 = u_xlati52;
        let x_1576 : i32 = u_xlati52;
        let x_1580 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1573 + 3i) / 4i)][((x_1576 + 3i) % 4i)];
        let x_1582 : vec3<f32> = (vec3<f32>(x_1571.x, x_1571.y, x_1571.z) + vec3<f32>(x_1580.x, x_1580.y, x_1580.w));
        let x_1583 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
        let x_1585 : vec4<f32> = u_xlat11;
        let x_1587 : vec4<f32> = u_xlat11;
        let x_1589 : vec2<f32> = (vec2<f32>(x_1585.x, x_1585.y) / vec2<f32>(x_1587.z, x_1587.z));
        let x_1590 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
        let x_1592 : vec4<f32> = u_xlat11;
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1592.x, x_1592.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat11;
        let x_1602 : vec2<f32> = clamp(vec2<f32>(x_1598.x, x_1598.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1603 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
        let x_1605 : u32 = u_xlatu18;
        let x_1608 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1605)];
        let x_1610 : vec4<f32> = u_xlat11;
        let x_1613 : u32 = u_xlatu18;
        let x_1616 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1613)];
        let x_1618 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(x_1610.x, x_1610.y)) + vec2<f32>(x_1616.z, x_1616.w));
        let x_1619 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1618.x, x_1618.y, x_1619.z, x_1619.w);
      } else {
        let x_1623 : i32 = u_xlati49;
        u_xlatb49 = (x_1623 == 1i);
        let x_1625 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1625);
        let x_1627 : i32 = u_xlati49;
        if ((x_1627 != 0i)) {
          let x_1633 : vec3<f32> = vs_INTERP0;
          let x_1635 : i32 = u_xlati52;
          let x_1638 : i32 = u_xlati52;
          let x_1642 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1635 + 1i) / 4i)][((x_1638 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(x_1642.x, x_1642.y));
          let x_1645 : i32 = u_xlati52;
          let x_1647 : i32 = u_xlati52;
          let x_1650 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[(x_1645 / 4i)][(x_1647 % 4i)];
          let x_1652 : vec3<f32> = vs_INTERP0;
          let x_1655 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1650.x, x_1650.y) * vec2<f32>(x_1652.x, x_1652.x)) + x_1655);
          let x_1657 : i32 = u_xlati52;
          let x_1660 : i32 = u_xlati52;
          let x_1664 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1657 + 2i) / 4i)][((x_1660 + 2i) % 4i)];
          let x_1666 : vec3<f32> = vs_INTERP0;
          let x_1669 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1664.x, x_1664.y) * vec2<f32>(x_1666.z, x_1666.z)) + x_1669);
          let x_1671 : vec2<f32> = u_xlat39;
          let x_1672 : i32 = u_xlati52;
          let x_1675 : i32 = u_xlati52;
          let x_1679 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1672 + 3i) / 4i)][((x_1675 + 3i) % 4i)];
          u_xlat39 = (x_1671 + vec2<f32>(x_1679.x, x_1679.y));
          let x_1682 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1682 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1685 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1685);
          let x_1687 : u32 = u_xlatu18;
          let x_1690 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1687)];
          let x_1692 : vec2<f32> = u_xlat39;
          let x_1694 : u32 = u_xlatu18;
          let x_1697 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1694)];
          let x_1699 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.y) * x_1692) + vec2<f32>(x_1697.z, x_1697.w));
          let x_1700 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
        } else {
          let x_1704 : vec3<f32> = vs_INTERP0;
          let x_1706 : i32 = u_xlati52;
          let x_1709 : i32 = u_xlati52;
          let x_1713 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1706 + 1i) / 4i)][((x_1709 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1704.y, x_1704.y, x_1704.y, x_1704.y) * x_1713);
          let x_1715 : i32 = u_xlati52;
          let x_1717 : i32 = u_xlati52;
          let x_1720 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[(x_1715 / 4i)][(x_1717 % 4i)];
          let x_1721 : vec3<f32> = vs_INTERP0;
          let x_1724 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1720 * vec4<f32>(x_1721.x, x_1721.x, x_1721.x, x_1721.x)) + x_1724);
          let x_1726 : i32 = u_xlati52;
          let x_1729 : i32 = u_xlati52;
          let x_1733 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1726 + 2i) / 4i)][((x_1729 + 2i) % 4i)];
          let x_1734 : vec3<f32> = vs_INTERP0;
          let x_1737 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1733 * vec4<f32>(x_1734.z, x_1734.z, x_1734.z, x_1734.z)) + x_1737);
          let x_1739 : vec4<f32> = u_xlat12;
          let x_1740 : i32 = u_xlati52;
          let x_1743 : i32 = u_xlati52;
          let x_1747 : vec4<f32> = x_1507.x_AdditionalLightsWorldToLights[((x_1740 + 3i) / 4i)][((x_1743 + 3i) % 4i)];
          u_xlat12 = (x_1739 + x_1747);
          let x_1749 : vec4<f32> = u_xlat12;
          let x_1751 : vec4<f32> = u_xlat12;
          let x_1753 : vec3<f32> = (vec3<f32>(x_1749.x, x_1749.y, x_1749.z) / vec3<f32>(x_1751.w, x_1751.w, x_1751.w));
          let x_1754 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
          let x_1756 : vec4<f32> = u_xlat12;
          let x_1758 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1756.x, x_1756.y, x_1756.z), vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
          let x_1761 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1761);
          let x_1763 : f32 = u_xlat49;
          let x_1765 : vec4<f32> = u_xlat12;
          let x_1767 : vec3<f32> = (vec3<f32>(x_1763, x_1763, x_1763) * vec3<f32>(x_1765.x, x_1765.y, x_1765.z));
          let x_1768 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1768.w);
          let x_1770 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1770.x, x_1770.y, x_1770.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1775 : f32 = u_xlat49;
          u_xlat49 = max(x_1775, 0.000001f);
          let x_1778 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1778);
          let x_1781 : f32 = u_xlat49;
          let x_1783 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1781, x_1781, x_1781) * vec3<f32>(x_1783.z, x_1783.x, x_1783.y));
          let x_1787 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1787);
          let x_1791 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1791, 0.0f, 1.0f);
          let x_1795 : vec3<f32> = u_xlat13;
          let x_1798 : vec4<bool> = (vec4<f32>(x_1795.y, x_1795.z, x_1795.y, x_1795.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1798.x, x_1798.y);
          let x_1801 : bool = u_xlatb39.x;
          if (x_1801) {
            let x_1806 : f32 = u_xlat13.x;
            x_1802 = x_1806;
          } else {
            let x_1809 : f32 = u_xlat13.x;
            x_1802 = -(x_1809);
          }
          let x_1811 : f32 = x_1802;
          u_xlat39.x = x_1811;
          let x_1814 : bool = u_xlatb39.y;
          if (x_1814) {
            let x_1819 : f32 = u_xlat13.x;
            x_1815 = x_1819;
          } else {
            let x_1822 : f32 = u_xlat13.x;
            x_1815 = -(x_1822);
          }
          let x_1824 : f32 = x_1815;
          u_xlat39.y = x_1824;
          let x_1826 : vec4<f32> = u_xlat12;
          let x_1828 : f32 = u_xlat49;
          let x_1831 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1828, x_1828)) + x_1831);
          let x_1833 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1833 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1836 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1836, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1840 : u32 = u_xlatu18;
          let x_1843 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1840)];
          let x_1845 : vec2<f32> = u_xlat39;
          let x_1847 : u32 = u_xlatu18;
          let x_1850 : vec4<f32> = x_1507.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1847)];
          let x_1852 : vec2<f32> = ((vec2<f32>(x_1843.x, x_1843.y) * x_1845) + vec2<f32>(x_1850.z, x_1850.w));
          let x_1853 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1852.x, x_1852.y, x_1853.z, x_1853.w);
        }
      }
      let x_1860 : vec4<f32> = u_xlat11;
      let x_1863 : f32 = x_153.x_GlobalMipBias.x;
      let x_1864 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1860.x, x_1860.y), x_1863);
      u_xlat11 = x_1864;
      let x_1866 : bool = u_xlatb7.y;
      if (x_1866) {
        let x_1871 : f32 = u_xlat11.w;
        x_1867 = x_1871;
      } else {
        let x_1874 : f32 = u_xlat11.x;
        x_1867 = x_1874;
      }
      let x_1875 : f32 = x_1867;
      u_xlat49 = x_1875;
      let x_1877 : bool = u_xlatb7.x;
      if (x_1877) {
        let x_1881 : vec4<f32> = u_xlat11;
        x_1878 = vec3<f32>(x_1881.x, x_1881.y, x_1881.z);
      } else {
        let x_1884 : f32 = u_xlat49;
        x_1878 = vec3<f32>(x_1884, x_1884, x_1884);
      }
      let x_1886 : vec3<f32> = x_1878;
      let x_1887 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1893 : vec4<f32> = u_xlat11;
    let x_1895 : u32 = u_xlatu18;
    let x_1898 : vec4<f32> = x_1400.x_AdditionalLightsColor[bitcast<i32>(x_1895)];
    let x_1900 : vec3<f32> = (vec3<f32>(x_1893.x, x_1893.y, x_1893.z) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
    let x_1901 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
    let x_1903 : f32 = u_xlat32;
    let x_1905 : vec4<f32> = u_xlat11;
    let x_1907 : vec3<f32> = (vec3<f32>(x_1903, x_1903, x_1903) * vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
    let x_1908 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
    let x_1910 : vec4<f32> = u_xlat3;
    let x_1912 : vec3<f32> = u_xlat10;
    u_xlat18 = dot(vec3<f32>(x_1910.x, x_1910.y, x_1910.z), x_1912);
    let x_1914 : f32 = u_xlat18;
    u_xlat18 = clamp(x_1914, 0.0f, 1.0f);
    let x_1916 : f32 = u_xlat18;
    let x_1917 : f32 = u_xlat47;
    u_xlat18 = (x_1916 * x_1917);
    let x_1919 : f32 = u_xlat18;
    let x_1921 : vec4<f32> = u_xlat11;
    let x_1923 : vec3<f32> = (vec3<f32>(x_1919, x_1919, x_1919) * vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
    let x_1926 : vec4<f32> = u_xlat9;
    let x_1928 : f32 = u_xlat35;
    let x_1931 : vec3<f32> = u_xlat5;
    let x_1932 : vec3<f32> = ((vec3<f32>(x_1926.x, x_1926.y, x_1926.z) * vec3<f32>(x_1928, x_1928, x_1928)) + x_1931);
    let x_1933 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
    let x_1935 : vec4<f32> = u_xlat9;
    let x_1937 : vec4<f32> = u_xlat9;
    u_xlat18 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
    let x_1940 : f32 = u_xlat18;
    u_xlat18 = max(x_1940, 1.17549435e-37f);
    let x_1942 : f32 = u_xlat18;
    u_xlat18 = inverseSqrt(x_1942);
    let x_1944 : f32 = u_xlat18;
    let x_1946 : vec4<f32> = u_xlat9;
    let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
    let x_1951 : vec4<f32> = u_xlat3;
    let x_1953 : vec4<f32> = u_xlat9;
    u_xlat18 = dot(vec3<f32>(x_1951.x, x_1951.y, x_1951.z), vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
    let x_1956 : f32 = u_xlat18;
    u_xlat18 = clamp(x_1956, 0.0f, 1.0f);
    let x_1958 : vec3<f32> = u_xlat10;
    let x_1959 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_1958, vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
    let x_1962 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1962, 0.0f, 1.0f);
    let x_1964 : f32 = u_xlat18;
    let x_1965 : f32 = u_xlat18;
    u_xlat18 = (x_1964 * x_1965);
    let x_1967 : f32 = u_xlat18;
    let x_1969 : f32 = u_xlat8.x;
    u_xlat18 = ((x_1967 * x_1969) + 1.000010014f);
    let x_1972 : f32 = u_xlat47;
    let x_1973 : f32 = u_xlat47;
    u_xlat47 = (x_1972 * x_1973);
    let x_1975 : f32 = u_xlat18;
    let x_1976 : f32 = u_xlat18;
    u_xlat18 = (x_1975 * x_1976);
    let x_1978 : f32 = u_xlat47;
    u_xlat47 = max(x_1978, 0.100000001f);
    let x_1980 : f32 = u_xlat18;
    let x_1981 : f32 = u_xlat47;
    u_xlat18 = (x_1980 * x_1981);
    let x_1984 : f32 = u_xlat6.x;
    let x_1985 : f32 = u_xlat18;
    u_xlat18 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat46;
    let x_1988 : f32 = u_xlat18;
    u_xlat18 = (x_1987 / x_1988);
    let x_1990 : f32 = u_xlat18;
    let x_1993 : vec3<f32> = u_xlat16;
    let x_1994 : vec3<f32> = ((vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1993);
    let x_1995 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
    let x_1997 : vec4<f32> = u_xlat9;
    let x_1999 : vec4<f32> = u_xlat11;
    let x_2002 : vec3<f32> = u_xlat22;
    u_xlat22 = ((vec3<f32>(x_1997.x, x_1997.y, x_1997.z) * vec3<f32>(x_1999.x, x_1999.y, x_1999.z)) + x_2002);

    continuing {
      let x_2004 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2004 + bitcast<u32>(1i));
    }
  }
  let x_2006 : vec3<f32> = u_xlat14;
  let x_2007 : vec3<f32> = u_xlat4;
  let x_2010 : vec3<f32> = u_xlat20;
  u_xlat14 = ((x_2006 * vec3<f32>(x_2007.x, x_2007.x, x_2007.x)) + x_2010);
  let x_2012 : vec3<f32> = u_xlat22;
  let x_2013 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_2012 + x_2013);
  let x_2017 : vec4<f32> = vs_INTERP4;
  let x_2019 : vec3<f32> = u_xlat1;
  let x_2021 : vec3<f32> = u_xlat14;
  let x_2022 : vec3<f32> = ((vec3<f32>(x_2017.w, x_2017.w, x_2017.w) * x_2019) + x_2021);
  let x_2023 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : bool = u_xlatb2;
  let x_2026 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2026, x_2025);
  let x_2034 : u32 = x_153.x_RenderingLayerMaxInt;
  let x_2036 : f32 = x_89.unity_RenderingLayer.x;
  u_xlatu0 = (x_2034 & bitcast<u32>(x_2036));
  let x_2039 : u32 = u_xlatu0;
  u_xlat0 = f32(x_2039);
  let x_2042 : f32 = u_xlat0;
  let x_2044 : f32 = x_153.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2042 * x_2044);
  let x_2048 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2048, 0.0f, 1.0f);
  let x_2051 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2051.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

