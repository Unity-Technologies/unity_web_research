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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_269 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_359 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_950 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1389 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1497 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_596 : f32;
  var x_621 : f32;
  var x_666 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_1034 : f32;
  var x_1045 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu43 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1792 : f32;
  var x_1805 : f32;
  var x_1857 : f32;
  var x_1868 : vec3<f32>;
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
  let x_479 : vec4<f32> = x_153.x_ScreenParams;
  u_xlat16 = (abs(x_476) * vec3<f32>(x_479.x, x_479.y, x_479.x));
  let x_485 : vec3<f32> = u_xlat16;
  u_xlatu16 = vec3<u32>(x_485);
  let x_489 : u32 = u_xlatu16.z;
  u_xlatu44 = (x_489 * 1025u);
  let x_493 : u32 = u_xlatu44;
  u_xlatu3 = (x_493 >> 6u);
  let x_497 : u32 = u_xlatu44;
  let x_498 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_497 ^ x_498));
  let x_501 : i32 = u_xlati44;
  u_xlatu44 = (bitcast<u32>(x_501) * 9u);
  let x_505 : u32 = u_xlatu44;
  u_xlatu3 = (x_505 >> 11u);
  let x_508 : u32 = u_xlatu44;
  let x_509 : u32 = u_xlatu3;
  u_xlati44 = bitcast<i32>((x_508 ^ x_509));
  let x_512 : i32 = u_xlati44;
  u_xlati44 = (x_512 * 32769i);
  let x_516 : i32 = u_xlati44;
  let x_519 : u32 = u_xlatu16.y;
  u_xlati30 = bitcast<i32>((bitcast<u32>(x_516) ^ x_519));
  let x_523 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_523) * 1025u);
  let x_526 : u32 = u_xlatu30;
  u_xlatu44 = (x_526 >> 6u);
  let x_528 : u32 = u_xlatu44;
  let x_529 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_528 ^ x_529));
  let x_532 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_532) * 9u);
  let x_535 : u32 = u_xlatu30;
  u_xlatu44 = (x_535 >> 11u);
  let x_537 : u32 = u_xlatu44;
  let x_538 : u32 = u_xlatu30;
  u_xlati30 = bitcast<i32>((x_537 ^ x_538));
  let x_541 : i32 = u_xlati30;
  u_xlati30 = (x_541 * 32769i);
  let x_544 : i32 = u_xlati30;
  let x_547 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_544) ^ x_547));
  let x_550 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_550) * 1025u);
  let x_555 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_555 >> 6u);
  let x_557 : u32 = u_xlatu30;
  let x_559 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_557 ^ x_559));
  let x_562 : i32 = u_xlati16;
  u_xlatu16.x = (bitcast<u32>(x_562) * 9u);
  let x_567 : u32 = u_xlatu16.x;
  u_xlatu30 = (x_567 >> 11u);
  let x_569 : u32 = u_xlatu30;
  let x_571 : u32 = u_xlatu16.x;
  u_xlati16 = bitcast<i32>((x_569 ^ x_571));
  let x_574 : i32 = u_xlati16;
  u_xlati16 = (x_574 * 32769i);
  param = 1065353216i;
  let x_580 : i32 = u_xlati16;
  param_1 = x_580;
  param_2 = 0i;
  param_3 = 23i;
  let x_583 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat16.x = bitcast<f32>(x_583);
  let x_587 : f32 = u_xlat16.x;
  u_xlat16.x = (x_587 + -1.0f);
  let x_592 : f32 = u_xlat16.x;
  u_xlat30 = (-(x_592) + 1.0f);
  let x_595 : bool = u_xlatb2;
  if (x_595) {
    let x_600 : f32 = u_xlat16.x;
    x_596 = x_600;
  } else {
    let x_602 : f32 = u_xlat30;
    x_596 = x_602;
  }
  let x_603 : f32 = x_596;
  u_xlat2.x = x_603;
  let x_605 : f32 = u_xlat0;
  let x_608 : f32 = u_xlat2.x;
  u_xlat0 = ((x_605 * 2.0f) + -(x_608));
  let x_611 : f32 = u_xlat0;
  let x_613 : f32 = u_xlat6.w;
  u_xlat2.x = (x_611 * x_613);
  let x_617 : f32 = u_xlat2.x;
  u_xlatb16 = (x_617 >= 0.400000006f);
  let x_620 : bool = u_xlatb16;
  if (x_620) {
    let x_625 : f32 = u_xlat2.x;
    x_621 = x_625;
  } else {
    x_621 = 0.0f;
  }
  let x_627 : f32 = x_621;
  u_xlat16.x = x_627;
  let x_630 : f32 = u_xlat6.w;
  let x_631 : f32 = u_xlat0;
  u_xlat0 = ((x_630 * x_631) + -0.400000006f);
  let x_636 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_636);
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_639);
  let x_643 : f32 = u_xlat2.x;
  let x_645 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_643) + abs(x_645));
  let x_650 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_650, 0.0001f);
  let x_654 : f32 = u_xlat0;
  let x_656 : f32 = u_xlat2.x;
  u_xlat0 = (x_654 / x_656);
  let x_658 : f32 = u_xlat0;
  u_xlat0 = (x_658 + 0.5f);
  let x_660 : f32 = u_xlat0;
  u_xlat0 = clamp(x_660, 0.0f, 1.0f);
  let x_663 : f32 = x_153.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_663 == 0.0f));
  let x_665 : bool = u_xlatb2;
  if (x_665) {
    let x_669 : f32 = u_xlat0;
    x_666 = x_669;
  } else {
    let x_672 : f32 = u_xlat16.x;
    x_666 = x_672;
  }
  let x_673 : f32 = x_666;
  u_xlat0 = x_673;
  let x_674 : f32 = u_xlat0;
  u_xlat16.x = (x_674 + -0.0001f);
  let x_679 : f32 = u_xlat16.x;
  u_xlatb16 = (x_679 < 0.0f);
  let x_681 : bool = u_xlatb16;
  if (((select(0i, 1i, x_681) * -1i) != 0i)) {
    discard;
  }
  let x_689 : vec3<f32> = u_xlat14;
  let x_690 : vec3<f32> = u_xlat22;
  u_xlat14 = (x_689 * vec3<f32>(x_690.y, x_690.y, x_690.y));
  let x_693 : vec3<f32> = u_xlat22;
  let x_695 : vec4<f32> = vs_INTERP2;
  let x_698 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_693.x, x_693.x, x_693.x) * vec3<f32>(x_695.x, x_695.y, x_695.z)) + x_698);
  let x_700 : vec3<f32> = u_xlat22;
  let x_702 : vec3<f32> = vs_INTERP1;
  let x_704 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_700.z, x_700.z, x_700.z) * x_702) + x_704);
  let x_706 : vec3<f32> = u_xlat14;
  let x_707 : vec3<f32> = u_xlat14;
  u_xlat16.x = dot(x_706, x_707);
  let x_711 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_711);
  let x_714 : vec3<f32> = u_xlat14;
  let x_715 : vec3<f32> = u_xlat16;
  u_xlat14 = (x_714 * vec3<f32>(x_715.x, x_715.x, x_715.x));
  let x_725 : vec2<f32> = vs_INTERP5;
  let x_727 : f32 = x_153.x_GlobalMipBias.x;
  let x_728 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_725, x_727);
  u_xlat3 = x_728;
  let x_733 : vec2<f32> = vs_INTERP5;
  let x_735 : f32 = x_153.x_GlobalMipBias.x;
  let x_736 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_733, x_735);
  u_xlat16 = vec3<f32>(x_736.x, x_736.y, x_736.z);
  let x_738 : vec4<f32> = u_xlat3;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat14;
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_745, vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_751 : f32 = u_xlat3.x;
  u_xlat3.x = (x_751 + 0.5f);
  let x_754 : vec3<f32> = u_xlat16;
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_754 * vec3<f32>(x_755.x, x_755.x, x_755.x));
  let x_759 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_759, 0.0001f);
  let x_762 : vec3<f32> = u_xlat16;
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_762 / vec3<f32>(x_763.x, x_763.x, x_763.x));
  let x_768 : vec4<f32> = x_153.x_ScaledScreenParams;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_773 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_769.x, x_769.y));
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat3;
  let x_778 : vec4<f32> = hlslcc_FragCoord;
  let x_780 : vec2<f32> = (vec2<f32>(x_776.x, x_776.y) * vec2<f32>(x_778.x, x_778.y));
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
  let x_785 : f32 = u_xlat3.y;
  let x_788 : f32 = x_153.x_ScaleBiasRt.x;
  let x_791 : f32 = x_153.x_ScaleBiasRt.y;
  u_xlat17.x = ((x_785 * x_788) + x_791);
  let x_795 : f32 = u_xlat17.x;
  u_xlat3.z = (-(x_795) + 1.0f);
  let x_800 : f32 = u_xlat8.x;
  u_xlat8.x = x_800;
  let x_803 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_803, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat0;
  u_xlat0 = x_806;
  let x_807 : f32 = u_xlat0;
  u_xlat0 = clamp(x_807, 0.0f, 1.0f);
  let x_809 : vec4<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_815 : f32 = u_xlat8.x;
  u_xlat17.x = (-(x_815) + 1.0f);
  let x_821 : f32 = u_xlat17.x;
  let x_823 : f32 = u_xlat17.x;
  u_xlat45 = (x_821 * x_823);
  let x_825 : f32 = u_xlat45;
  u_xlat45 = max(x_825, 0.0078125f);
  let x_829 : f32 = u_xlat45;
  let x_830 : f32 = u_xlat45;
  u_xlat46 = (x_829 * x_830);
  let x_834 : f32 = u_xlat8.x;
  u_xlat47 = (x_834 + 0.040000021f);
  let x_837 : f32 = u_xlat47;
  u_xlat47 = min(x_837, 1.0f);
  let x_839 : f32 = u_xlat45;
  u_xlat6.x = ((x_839 * 4.0f) + 2.0f);
  let x_849 : vec4<f32> = u_xlat3;
  let x_852 : f32 = x_153.x_GlobalMipBias.x;
  let x_853 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_849.x, x_849.z), x_852);
  u_xlat3.x = x_853.x;
  let x_858 : f32 = u_xlat3.x;
  u_xlat31 = (x_858 + -1.0f);
  let x_862 : f32 = x_153.x_AmbientOcclusionParam.w;
  let x_863 : f32 = u_xlat31;
  u_xlat31 = ((x_862 * x_863) + 1.0f);
  let x_867 : f32 = u_xlat3.x;
  let x_869 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_867, x_869);
  let x_874 : vec4<f32> = vs_INTERP9;
  let x_875 : vec2<f32> = vec2<f32>(x_874.x, x_874.y);
  let x_877 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_875.x, x_875.y, x_877);
  let x_885 : vec3<f32> = txVec1;
  let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_885.xy, x_885.z);
  u_xlat20.x = x_887;
  let x_890 : f32 = u_xlat20.x;
  let x_892 : f32 = x_359.x_MainLightShadowParams.x;
  let x_894 : f32 = u_xlat43;
  u_xlat43 = ((x_890 * x_892) + x_894);
  let x_898 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_898);
  let x_903 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_903 >= 1.0f);
  let x_905 : bool = u_xlatb34;
  let x_907 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_905 | x_907);
  let x_911 : bool = u_xlatb20.x;
  let x_912 : f32 = u_xlat43;
  u_xlat43 = select(x_912, 1.0f, x_911);
  let x_914 : vec3<f32> = vs_INTERP0;
  let x_916 : vec3<f32> = x_153.x_WorldSpaceCameraPos;
  u_xlat20 = (x_914 + -(x_916));
  let x_919 : vec3<f32> = u_xlat20;
  let x_920 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_919, x_920);
  let x_924 : f32 = u_xlat20.x;
  let x_926 : f32 = x_359.x_MainLightShadowParams.z;
  let x_929 : f32 = x_359.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_924 * x_926) + x_929);
  let x_933 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_933, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat43;
  u_xlat34 = (-(x_937) + 1.0f);
  let x_941 : f32 = u_xlat20.x;
  let x_942 : f32 = u_xlat34;
  let x_944 : f32 = u_xlat43;
  u_xlat43 = ((x_941 * x_942) + x_944);
  let x_952 : f32 = x_950.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_952 == -1.0f));
  let x_956 : bool = u_xlatb20.x;
  if (x_956) {
    let x_959 : vec3<f32> = vs_INTERP0;
    let x_962 : vec4<f32> = x_950.x_MainLightWorldToLight[1i];
    let x_964 : vec2<f32> = (vec2<f32>(x_959.y, x_959.y) * vec2<f32>(x_962.x, x_962.y));
    let x_965 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_964.x, x_964.y, x_965.z);
    let x_968 : vec4<f32> = x_950.x_MainLightWorldToLight[0i];
    let x_970 : vec3<f32> = vs_INTERP0;
    let x_973 : vec3<f32> = u_xlat20;
    let x_975 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.y) * vec2<f32>(x_970.x, x_970.x)) + vec2<f32>(x_973.x, x_973.y));
    let x_976 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_975.x, x_975.y, x_976.z);
    let x_979 : vec4<f32> = x_950.x_MainLightWorldToLight[2i];
    let x_981 : vec3<f32> = vs_INTERP0;
    let x_984 : vec3<f32> = u_xlat20;
    let x_986 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.y) * vec2<f32>(x_981.z, x_981.z)) + vec2<f32>(x_984.x, x_984.y));
    let x_987 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_986.x, x_986.y, x_987.z);
    let x_989 : vec3<f32> = u_xlat20;
    let x_992 : vec4<f32> = x_950.x_MainLightWorldToLight[3i];
    let x_994 : vec2<f32> = (vec2<f32>(x_989.x, x_989.y) + vec2<f32>(x_992.x, x_992.y));
    let x_995 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_994.x, x_994.y, x_995.z);
    let x_997 : vec3<f32> = u_xlat20;
    let x_1001 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1002 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1001.x, x_1001.y, x_1002.z);
    let x_1009 : vec3<f32> = u_xlat20;
    let x_1012 : f32 = x_153.x_GlobalMipBias.x;
    let x_1013 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1009.x, x_1009.y), x_1012);
    u_xlat7 = x_1013;
    let x_1015 : f32 = x_950.x_MainLightCookieTextureFormat;
    let x_1017 : f32 = x_950.x_MainLightCookieTextureFormat;
    let x_1019 : f32 = x_950.x_MainLightCookieTextureFormat;
    let x_1021 : f32 = x_950.x_MainLightCookieTextureFormat;
    let x_1022 : vec4<f32> = vec4<f32>(x_1015, x_1017, x_1019, x_1021);
    let x_1030 : vec4<bool> = (vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1030.x, x_1030.y);
    let x_1033 : bool = u_xlatb20.y;
    if (x_1033) {
      let x_1038 : f32 = u_xlat7.w;
      x_1034 = x_1038;
    } else {
      let x_1041 : f32 = u_xlat7.x;
      x_1034 = x_1041;
    }
    let x_1042 : f32 = x_1034;
    u_xlat34 = x_1042;
    let x_1044 : bool = u_xlatb20.x;
    if (x_1044) {
      let x_1048 : vec4<f32> = u_xlat7;
      x_1045 = vec3<f32>(x_1048.x, x_1048.y, x_1048.z);
    } else {
      let x_1051 : f32 = u_xlat34;
      x_1045 = vec3<f32>(x_1051, x_1051, x_1051);
    }
    let x_1053 : vec3<f32> = x_1045;
    u_xlat20 = x_1053;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1058 : vec3<f32> = u_xlat20;
  let x_1060 : vec4<f32> = x_153.x_MainLightColor;
  u_xlat20 = (x_1058 * vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : f32 = u_xlat31;
  let x_1065 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1063, x_1063, x_1063) * x_1065);
  let x_1067 : vec3<f32> = u_xlat5;
  let x_1069 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(x_1067), x_1069);
  let x_1073 : f32 = u_xlat7.x;
  let x_1075 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1073 + x_1075);
  let x_1078 : vec3<f32> = u_xlat14;
  let x_1079 : vec4<f32> = u_xlat7;
  let x_1083 : vec3<f32> = u_xlat5;
  let x_1085 : vec3<f32> = ((x_1078 * -(vec3<f32>(x_1079.x, x_1079.x, x_1079.x))) + -(x_1083));
  let x_1086 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1089 : vec3<f32> = u_xlat14;
  let x_1090 : vec3<f32> = u_xlat5;
  u_xlat49 = dot(x_1089, x_1090);
  let x_1092 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1092, 0.0f, 1.0f);
  let x_1094 : f32 = u_xlat49;
  u_xlat49 = (-(x_1094) + 1.0f);
  let x_1097 : f32 = u_xlat49;
  let x_1098 : f32 = u_xlat49;
  u_xlat49 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat49;
  let x_1101 : f32 = u_xlat49;
  u_xlat49 = (x_1100 * x_1101);
  let x_1104 : f32 = u_xlat17.x;
  u_xlat8.x = ((-(x_1104) * 0.699999988f) + 1.700000048f);
  let x_1112 : f32 = u_xlat17.x;
  let x_1114 : f32 = u_xlat8.x;
  u_xlat17.x = (x_1112 * x_1114);
  let x_1118 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1118 * 6.0f);
  let x_1130 : vec4<f32> = u_xlat7;
  let x_1133 : f32 = u_xlat17.x;
  let x_1134 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1130.x, x_1130.y, x_1130.z), x_1133);
  u_xlat8 = x_1134;
  let x_1136 : f32 = u_xlat8.w;
  u_xlat17.x = (x_1136 + -1.0f);
  let x_1140 : f32 = x_89.unity_SpecCube0_HDR.w;
  let x_1142 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_1140 * x_1142) + 1.0f);
  let x_1147 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_1147, 0.0f);
  let x_1151 : f32 = u_xlat17.x;
  u_xlat17.x = log2(x_1151);
  let x_1155 : f32 = u_xlat17.x;
  let x_1157 : f32 = x_89.unity_SpecCube0_HDR.y;
  u_xlat17.x = (x_1155 * x_1157);
  let x_1161 : f32 = u_xlat17.x;
  u_xlat17.x = exp2(x_1161);
  let x_1165 : f32 = u_xlat17.x;
  let x_1167 : f32 = x_89.unity_SpecCube0_HDR.x;
  u_xlat17.x = (x_1165 * x_1167);
  let x_1170 : vec4<f32> = u_xlat8;
  let x_1172 : vec3<f32> = u_xlat17;
  let x_1174 : vec3<f32> = (vec3<f32>(x_1170.x, x_1170.y, x_1170.z) * vec3<f32>(x_1172.x, x_1172.x, x_1172.x));
  let x_1175 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1177 : f32 = u_xlat45;
  let x_1179 : f32 = u_xlat45;
  let x_1183 : vec2<f32> = ((vec2<f32>(x_1177, x_1177) * vec2<f32>(x_1179, x_1179)) + vec2<f32>(-1.0f, 1.0f));
  let x_1184 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_1183.x, x_1184.y, x_1183.y);
  let x_1187 : f32 = u_xlat17.z;
  u_xlat45 = (1.0f / x_1187);
  let x_1189 : f32 = u_xlat47;
  u_xlat47 = (x_1189 + -0.039999999f);
  let x_1192 : f32 = u_xlat49;
  let x_1193 : f32 = u_xlat47;
  u_xlat47 = ((x_1192 * x_1193) + 0.039999999f);
  let x_1197 : f32 = u_xlat45;
  let x_1198 : f32 = u_xlat47;
  u_xlat45 = (x_1197 * x_1198);
  let x_1200 : f32 = u_xlat45;
  let x_1202 : vec4<f32> = u_xlat7;
  let x_1204 : vec3<f32> = (vec3<f32>(x_1200, x_1200, x_1200) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec3<f32> = u_xlat16;
  let x_1208 : vec3<f32> = u_xlat4;
  let x_1210 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1207 * x_1208) + vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : f32 = u_xlat43;
  let x_1215 : f32 = x_89.unity_LightData.z;
  u_xlat43 = (x_1213 * x_1215);
  let x_1217 : vec3<f32> = u_xlat14;
  let x_1219 : vec4<f32> = x_153.x_MainLightPosition;
  u_xlat45 = dot(x_1217, vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1222, 0.0f, 1.0f);
  let x_1224 : f32 = u_xlat43;
  let x_1225 : f32 = u_xlat45;
  u_xlat43 = (x_1224 * x_1225);
  let x_1227 : f32 = u_xlat43;
  let x_1229 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1227, x_1227, x_1227) * x_1229);
  let x_1231 : vec3<f32> = u_xlat5;
  let x_1233 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1235 : vec3<f32> = (x_1231 + vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat7;
  let x_1240 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : f32 = u_xlat43;
  u_xlat43 = max(x_1243, 1.17549435e-37f);
  let x_1245 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1245);
  let x_1247 : f32 = u_xlat43;
  let x_1249 : vec4<f32> = u_xlat7;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec3<f32> = u_xlat14;
  let x_1255 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_1254, vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1258, 0.0f, 1.0f);
  let x_1261 : vec4<f32> = x_153.x_MainLightPosition;
  let x_1263 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1266, 0.0f, 1.0f);
  let x_1268 : f32 = u_xlat43;
  let x_1269 : f32 = u_xlat43;
  u_xlat43 = (x_1268 * x_1269);
  let x_1271 : f32 = u_xlat43;
  let x_1273 : f32 = u_xlat17.x;
  u_xlat43 = ((x_1271 * x_1273) + 1.000010014f);
  let x_1277 : f32 = u_xlat45;
  let x_1278 : f32 = u_xlat45;
  u_xlat45 = (x_1277 * x_1278);
  let x_1280 : f32 = u_xlat43;
  let x_1281 : f32 = u_xlat43;
  u_xlat43 = (x_1280 * x_1281);
  let x_1283 : f32 = u_xlat45;
  u_xlat45 = max(x_1283, 0.100000001f);
  let x_1286 : f32 = u_xlat43;
  let x_1287 : f32 = u_xlat45;
  u_xlat43 = (x_1286 * x_1287);
  let x_1290 : f32 = u_xlat6.x;
  let x_1291 : f32 = u_xlat43;
  u_xlat43 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat46;
  let x_1294 : f32 = u_xlat43;
  u_xlat43 = (x_1293 / x_1294);
  let x_1296 : f32 = u_xlat43;
  let x_1300 : vec3<f32> = u_xlat4;
  let x_1301 : vec3<f32> = ((vec3<f32>(x_1296, x_1296, x_1296) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1300);
  let x_1302 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec3<f32> = u_xlat20;
  let x_1305 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1304 * vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1310 : f32 = x_153.x_AdditionalLightsCount.x;
  let x_1312 : f32 = x_89.unity_LightData.y;
  u_xlat43 = min(x_1310, x_1312);
  let x_1315 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1315));
  let x_1320 : f32 = x_950.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1322 : f32 = x_950.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1324 : f32 = x_950.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1326 : f32 = x_950.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1327 : vec4<f32> = vec4<f32>(x_1320, x_1322, x_1324, x_1326);
  let x_1333 : vec4<bool> = (vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1327.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1333.x, x_1333.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1344 : u32 = u_xlatu_loop_1;
    let x_1345 : u32 = u_xlatu43;
    if ((x_1344 < x_1345)) {
    } else {
      break;
    }
    let x_1348 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1348 >> 2u);
    let x_1351 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1351 & 3u));
    let x_1354 : u32 = u_xlatu47;
    let x_1357 : vec4<f32> = x_89.unity_LightIndices[bitcast<i32>(x_1354)];
    let x_1367 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1372 : vec4<u32> = indexable[x_1367];
    u_xlat47 = dot(x_1357, bitcast<vec4<f32>>(x_1372));
    let x_1375 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1375));
    let x_1378 : vec3<f32> = vs_INTERP0;
    let x_1390 : u32 = u_xlatu47;
    let x_1393 : vec4<f32> = x_1389.x_AdditionalLightsPosition[bitcast<i32>(x_1390)];
    let x_1396 : u32 = u_xlatu47;
    let x_1399 : vec4<f32> = x_1389.x_AdditionalLightsPosition[bitcast<i32>(x_1396)];
    let x_1401 : vec3<f32> = ((-(x_1378) * vec3<f32>(x_1393.w, x_1393.w, x_1393.w)) + vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
    let x_1402 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
    let x_1405 : vec4<f32> = u_xlat9;
    let x_1407 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1405.x, x_1405.y, x_1405.z), vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
    let x_1410 : f32 = u_xlat35;
    u_xlat35 = max(x_1410, 6.10351562e-05f);
    let x_1413 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1413);
    let x_1416 : f32 = u_xlat49;
    let x_1418 : vec4<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1416, x_1416, x_1416) * vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
    let x_1422 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1422);
    let x_1424 : f32 = u_xlat35;
    let x_1425 : u32 = u_xlatu47;
    let x_1428 : f32 = x_1389.x_AdditionalLightsAttenuation[bitcast<i32>(x_1425)].x;
    u_xlat35 = (x_1424 * x_1428);
    let x_1430 : f32 = u_xlat35;
    let x_1432 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1430) * x_1432) + 1.0f);
    let x_1435 : f32 = u_xlat35;
    u_xlat35 = max(x_1435, 0.0f);
    let x_1437 : f32 = u_xlat35;
    let x_1438 : f32 = u_xlat35;
    u_xlat35 = (x_1437 * x_1438);
    let x_1440 : f32 = u_xlat35;
    let x_1441 : f32 = u_xlat50;
    u_xlat35 = (x_1440 * x_1441);
    let x_1443 : u32 = u_xlatu47;
    let x_1446 : vec4<f32> = x_1389.x_AdditionalLightsSpotDir[bitcast<i32>(x_1443)];
    let x_1448 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1446.x, x_1446.y, x_1446.z), x_1448);
    let x_1450 : f32 = u_xlat50;
    let x_1451 : u32 = u_xlatu47;
    let x_1454 : f32 = x_1389.x_AdditionalLightsAttenuation[bitcast<i32>(x_1451)].z;
    let x_1456 : u32 = u_xlatu47;
    let x_1459 : f32 = x_1389.x_AdditionalLightsAttenuation[bitcast<i32>(x_1456)].w;
    u_xlat50 = ((x_1450 * x_1454) + x_1459);
    let x_1461 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1461, 0.0f, 1.0f);
    let x_1463 : f32 = u_xlat50;
    let x_1464 : f32 = u_xlat50;
    u_xlat50 = (x_1463 * x_1464);
    let x_1466 : f32 = u_xlat35;
    let x_1467 : f32 = u_xlat50;
    u_xlat35 = (x_1466 * x_1467);
    let x_1470 : u32 = u_xlatu47;
    u_xlatu50 = (x_1470 >> 5u);
    let x_1473 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1473) & 31i)));
    let x_1479 : i32 = u_xlati51;
    let x_1481 : u32 = u_xlatu50;
    let x_1484 : f32 = x_950.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1481)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1479) & bitcast<u32>(x_1484)));
    let x_1488 : i32 = u_xlati50;
    if ((x_1488 != 0i)) {
      let x_1498 : u32 = u_xlatu47;
      let x_1501 : f32 = x_1497.x_AdditionalLightsLightTypes[bitcast<i32>(x_1498)].el;
      u_xlati50 = i32(x_1501);
      let x_1503 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1503 != 0i));
      let x_1507 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1507) << bitcast<u32>(2i));
      let x_1510 : i32 = u_xlati51;
      if ((x_1510 != 0i)) {
        let x_1515 : vec3<f32> = vs_INTERP0;
        let x_1517 : i32 = u_xlati52;
        let x_1520 : i32 = u_xlati52;
        let x_1524 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1517 + 1i) / 4i)][((x_1520 + 1i) % 4i)];
        let x_1526 : vec3<f32> = (vec3<f32>(x_1515.y, x_1515.y, x_1515.y) * vec3<f32>(x_1524.x, x_1524.y, x_1524.w));
        let x_1527 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
        let x_1529 : i32 = u_xlati52;
        let x_1531 : i32 = u_xlati52;
        let x_1534 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[(x_1529 / 4i)][(x_1531 % 4i)];
        let x_1536 : vec3<f32> = vs_INTERP0;
        let x_1539 : vec4<f32> = u_xlat11;
        let x_1541 : vec3<f32> = ((vec3<f32>(x_1534.x, x_1534.y, x_1534.w) * vec3<f32>(x_1536.x, x_1536.x, x_1536.x)) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
        let x_1542 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
        let x_1544 : i32 = u_xlati52;
        let x_1547 : i32 = u_xlati52;
        let x_1551 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1544 + 2i) / 4i)][((x_1547 + 2i) % 4i)];
        let x_1553 : vec3<f32> = vs_INTERP0;
        let x_1556 : vec4<f32> = u_xlat11;
        let x_1558 : vec3<f32> = ((vec3<f32>(x_1551.x, x_1551.y, x_1551.w) * vec3<f32>(x_1553.z, x_1553.z, x_1553.z)) + vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
        let x_1559 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1563 : i32 = u_xlati52;
        let x_1566 : i32 = u_xlati52;
        let x_1570 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1563 + 3i) / 4i)][((x_1566 + 3i) % 4i)];
        let x_1572 : vec3<f32> = (vec3<f32>(x_1561.x, x_1561.y, x_1561.z) + vec3<f32>(x_1570.x, x_1570.y, x_1570.w));
        let x_1573 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1572.x, x_1572.y, x_1572.z, x_1573.w);
        let x_1575 : vec4<f32> = u_xlat11;
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1579 : vec2<f32> = (vec2<f32>(x_1575.x, x_1575.y) / vec2<f32>(x_1577.z, x_1577.z));
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
        let x_1582 : vec4<f32> = u_xlat11;
        let x_1585 : vec2<f32> = ((vec2<f32>(x_1582.x, x_1582.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
        let x_1588 : vec4<f32> = u_xlat11;
        let x_1592 : vec2<f32> = clamp(vec2<f32>(x_1588.x, x_1588.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1593 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1595 : u32 = u_xlatu47;
        let x_1598 : vec4<f32> = x_1497.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1595)];
        let x_1600 : vec4<f32> = u_xlat11;
        let x_1603 : u32 = u_xlatu47;
        let x_1606 : vec4<f32> = x_1497.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1603)];
        let x_1608 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1600.x, x_1600.y)) + vec2<f32>(x_1606.z, x_1606.w));
        let x_1609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1608.x, x_1608.y, x_1609.z, x_1609.w);
      } else {
        let x_1613 : i32 = u_xlati50;
        u_xlatb50 = (x_1613 == 1i);
        let x_1615 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1615);
        let x_1617 : i32 = u_xlati50;
        if ((x_1617 != 0i)) {
          let x_1623 : vec3<f32> = vs_INTERP0;
          let x_1625 : i32 = u_xlati52;
          let x_1628 : i32 = u_xlati52;
          let x_1632 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1625 + 1i) / 4i)][((x_1628 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1623.y, x_1623.y) * vec2<f32>(x_1632.x, x_1632.y));
          let x_1635 : i32 = u_xlati52;
          let x_1637 : i32 = u_xlati52;
          let x_1640 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[(x_1635 / 4i)][(x_1637 % 4i)];
          let x_1642 : vec3<f32> = vs_INTERP0;
          let x_1645 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.x)) + x_1645);
          let x_1647 : i32 = u_xlati52;
          let x_1650 : i32 = u_xlati52;
          let x_1654 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1647 + 2i) / 4i)][((x_1650 + 2i) % 4i)];
          let x_1656 : vec3<f32> = vs_INTERP0;
          let x_1659 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1654.x, x_1654.y) * vec2<f32>(x_1656.z, x_1656.z)) + x_1659);
          let x_1661 : vec2<f32> = u_xlat39;
          let x_1662 : i32 = u_xlati52;
          let x_1665 : i32 = u_xlati52;
          let x_1669 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1662 + 3i) / 4i)][((x_1665 + 3i) % 4i)];
          u_xlat39 = (x_1661 + vec2<f32>(x_1669.x, x_1669.y));
          let x_1672 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1672 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1675 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1675);
          let x_1677 : u32 = u_xlatu47;
          let x_1680 : vec4<f32> = x_1497.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1677)];
          let x_1682 : vec2<f32> = u_xlat39;
          let x_1684 : u32 = u_xlatu47;
          let x_1687 : vec4<f32> = x_1497.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1684)];
          let x_1689 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.y) * x_1682) + vec2<f32>(x_1687.z, x_1687.w));
          let x_1690 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1689.x, x_1689.y, x_1690.z, x_1690.w);
        } else {
          let x_1694 : vec3<f32> = vs_INTERP0;
          let x_1696 : i32 = u_xlati52;
          let x_1699 : i32 = u_xlati52;
          let x_1703 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1696 + 1i) / 4i)][((x_1699 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1694.y, x_1694.y, x_1694.y, x_1694.y) * x_1703);
          let x_1705 : i32 = u_xlati52;
          let x_1707 : i32 = u_xlati52;
          let x_1710 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[(x_1705 / 4i)][(x_1707 % 4i)];
          let x_1711 : vec3<f32> = vs_INTERP0;
          let x_1714 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1710 * vec4<f32>(x_1711.x, x_1711.x, x_1711.x, x_1711.x)) + x_1714);
          let x_1716 : i32 = u_xlati52;
          let x_1719 : i32 = u_xlati52;
          let x_1723 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1716 + 2i) / 4i)][((x_1719 + 2i) % 4i)];
          let x_1724 : vec3<f32> = vs_INTERP0;
          let x_1727 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1723 * vec4<f32>(x_1724.z, x_1724.z, x_1724.z, x_1724.z)) + x_1727);
          let x_1729 : vec4<f32> = u_xlat12;
          let x_1730 : i32 = u_xlati52;
          let x_1733 : i32 = u_xlati52;
          let x_1737 : vec4<f32> = x_1497.x_AdditionalLightsWorldToLights[((x_1730 + 3i) / 4i)][((x_1733 + 3i) % 4i)];
          u_xlat12 = (x_1729 + x_1737);
          let x_1739 : vec4<f32> = u_xlat12;
          let x_1741 : vec4<f32> = u_xlat12;
          let x_1743 : vec3<f32> = (vec3<f32>(x_1739.x, x_1739.y, x_1739.z) / vec3<f32>(x_1741.w, x_1741.w, x_1741.w));
          let x_1744 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
          let x_1746 : vec4<f32> = u_xlat12;
          let x_1748 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1746.x, x_1746.y, x_1746.z), vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
          let x_1751 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1751);
          let x_1753 : f32 = u_xlat50;
          let x_1755 : vec4<f32> = u_xlat12;
          let x_1757 : vec3<f32> = (vec3<f32>(x_1753, x_1753, x_1753) * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
          let x_1758 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
          let x_1760 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1760.x, x_1760.y, x_1760.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1765 : f32 = u_xlat50;
          u_xlat50 = max(x_1765, 0.000001f);
          let x_1768 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1768);
          let x_1771 : f32 = u_xlat50;
          let x_1773 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1771, x_1771, x_1771) * vec3<f32>(x_1773.z, x_1773.x, x_1773.y));
          let x_1777 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1777);
          let x_1781 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1781, 0.0f, 1.0f);
          let x_1785 : vec3<f32> = u_xlat13;
          let x_1788 : vec4<bool> = (vec4<f32>(x_1785.y, x_1785.z, x_1785.y, x_1785.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1788.x, x_1788.y);
          let x_1791 : bool = u_xlatb39.x;
          if (x_1791) {
            let x_1796 : f32 = u_xlat13.x;
            x_1792 = x_1796;
          } else {
            let x_1799 : f32 = u_xlat13.x;
            x_1792 = -(x_1799);
          }
          let x_1801 : f32 = x_1792;
          u_xlat39.x = x_1801;
          let x_1804 : bool = u_xlatb39.y;
          if (x_1804) {
            let x_1809 : f32 = u_xlat13.x;
            x_1805 = x_1809;
          } else {
            let x_1812 : f32 = u_xlat13.x;
            x_1805 = -(x_1812);
          }
          let x_1814 : f32 = x_1805;
          u_xlat39.y = x_1814;
          let x_1816 : vec4<f32> = u_xlat12;
          let x_1818 : f32 = u_xlat50;
          let x_1821 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1816.x, x_1816.y) * vec2<f32>(x_1818, x_1818)) + x_1821);
          let x_1823 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1823 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1826 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1826, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1830 : u32 = u_xlatu47;
          let x_1833 : vec4<f32> = x_1497.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1830)];
          let x_1835 : vec2<f32> = u_xlat39;
          let x_1837 : u32 = u_xlatu47;
          let x_1840 : vec4<f32> = x_1497.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1837)];
          let x_1842 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * x_1835) + vec2<f32>(x_1840.z, x_1840.w));
          let x_1843 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
        }
      }
      let x_1850 : vec4<f32> = u_xlat11;
      let x_1853 : f32 = x_153.x_GlobalMipBias.x;
      let x_1854 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1850.x, x_1850.y), x_1853);
      u_xlat11 = x_1854;
      let x_1856 : bool = u_xlatb7.y;
      if (x_1856) {
        let x_1861 : f32 = u_xlat11.w;
        x_1857 = x_1861;
      } else {
        let x_1864 : f32 = u_xlat11.x;
        x_1857 = x_1864;
      }
      let x_1865 : f32 = x_1857;
      u_xlat50 = x_1865;
      let x_1867 : bool = u_xlatb7.x;
      if (x_1867) {
        let x_1871 : vec4<f32> = u_xlat11;
        x_1868 = vec3<f32>(x_1871.x, x_1871.y, x_1871.z);
      } else {
        let x_1874 : f32 = u_xlat50;
        x_1868 = vec3<f32>(x_1874, x_1874, x_1874);
      }
      let x_1876 : vec3<f32> = x_1868;
      let x_1877 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1883 : vec4<f32> = u_xlat11;
    let x_1885 : u32 = u_xlatu47;
    let x_1888 : vec4<f32> = x_1389.x_AdditionalLightsColor[bitcast<i32>(x_1885)];
    let x_1890 : vec3<f32> = (vec3<f32>(x_1883.x, x_1883.y, x_1883.z) * vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
    let x_1891 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
    let x_1893 : f32 = u_xlat31;
    let x_1895 : vec4<f32> = u_xlat11;
    let x_1897 : vec3<f32> = (vec3<f32>(x_1893, x_1893, x_1893) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
    let x_1898 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
    let x_1900 : vec3<f32> = u_xlat14;
    let x_1901 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1900, x_1901);
    let x_1903 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1903, 0.0f, 1.0f);
    let x_1905 : f32 = u_xlat47;
    let x_1906 : f32 = u_xlat35;
    u_xlat47 = (x_1905 * x_1906);
    let x_1908 : f32 = u_xlat47;
    let x_1910 : vec4<f32> = u_xlat11;
    let x_1912 : vec3<f32> = (vec3<f32>(x_1908, x_1908, x_1908) * vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
    let x_1913 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
    let x_1915 : vec4<f32> = u_xlat9;
    let x_1917 : f32 = u_xlat49;
    let x_1920 : vec3<f32> = u_xlat5;
    let x_1921 : vec3<f32> = ((vec3<f32>(x_1915.x, x_1915.y, x_1915.z) * vec3<f32>(x_1917, x_1917, x_1917)) + x_1920);
    let x_1922 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
    let x_1924 : vec4<f32> = u_xlat9;
    let x_1926 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1924.x, x_1924.y, x_1924.z), vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
    let x_1929 : f32 = u_xlat47;
    u_xlat47 = max(x_1929, 1.17549435e-37f);
    let x_1931 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1931);
    let x_1933 : f32 = u_xlat47;
    let x_1935 : vec4<f32> = u_xlat9;
    let x_1937 : vec3<f32> = (vec3<f32>(x_1933, x_1933, x_1933) * vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
    let x_1938 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
    let x_1940 : vec3<f32> = u_xlat14;
    let x_1941 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(x_1940, vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
    let x_1944 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1944, 0.0f, 1.0f);
    let x_1946 : vec3<f32> = u_xlat10;
    let x_1947 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(x_1946, vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1950, 0.0f, 1.0f);
    let x_1952 : f32 = u_xlat47;
    let x_1953 : f32 = u_xlat47;
    u_xlat47 = (x_1952 * x_1953);
    let x_1955 : f32 = u_xlat47;
    let x_1957 : f32 = u_xlat17.x;
    u_xlat47 = ((x_1955 * x_1957) + 1.000010014f);
    let x_1960 : f32 = u_xlat35;
    let x_1961 : f32 = u_xlat35;
    u_xlat35 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat47;
    let x_1964 : f32 = u_xlat47;
    u_xlat47 = (x_1963 * x_1964);
    let x_1966 : f32 = u_xlat35;
    u_xlat35 = max(x_1966, 0.100000001f);
    let x_1968 : f32 = u_xlat47;
    let x_1969 : f32 = u_xlat35;
    u_xlat47 = (x_1968 * x_1969);
    let x_1972 : f32 = u_xlat6.x;
    let x_1973 : f32 = u_xlat47;
    u_xlat47 = (x_1972 * x_1973);
    let x_1975 : f32 = u_xlat46;
    let x_1976 : f32 = u_xlat47;
    u_xlat47 = (x_1975 / x_1976);
    let x_1978 : f32 = u_xlat47;
    let x_1981 : vec3<f32> = u_xlat4;
    let x_1982 : vec3<f32> = ((vec3<f32>(x_1978, x_1978, x_1978) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1981);
    let x_1983 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
    let x_1985 : vec4<f32> = u_xlat9;
    let x_1987 : vec4<f32> = u_xlat11;
    let x_1990 : vec4<f32> = u_xlat8;
    let x_1992 : vec3<f32> = ((vec3<f32>(x_1985.x, x_1985.y, x_1985.z) * vec3<f32>(x_1987.x, x_1987.y, x_1987.z)) + vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
    let x_1993 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);

    continuing {
      let x_1995 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1995 + bitcast<u32>(1i));
    }
  }
  let x_1997 : vec3<f32> = u_xlat16;
  let x_1998 : vec4<f32> = u_xlat3;
  let x_2001 : vec3<f32> = u_xlat20;
  u_xlat14 = ((x_1997 * vec3<f32>(x_1998.x, x_1998.x, x_1998.x)) + x_2001);
  let x_2003 : vec4<f32> = u_xlat8;
  let x_2005 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_2003.x, x_2003.y, x_2003.z) + x_2005);
  let x_2009 : vec4<f32> = vs_INTERP4;
  let x_2011 : vec3<f32> = u_xlat1;
  let x_2013 : vec3<f32> = u_xlat14;
  let x_2014 : vec3<f32> = ((vec3<f32>(x_2009.w, x_2009.w, x_2009.w) * x_2011) + x_2013);
  let x_2015 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
  let x_2017 : bool = u_xlatb2;
  let x_2018 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_2018, x_2017);
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

