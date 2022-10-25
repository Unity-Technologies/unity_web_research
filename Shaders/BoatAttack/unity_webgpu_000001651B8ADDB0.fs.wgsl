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
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_257 : MainLightShadows;

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

@group(1) @binding(1) var<uniform> x_1360 : AdditionalLights;

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
  var u_xlatb36 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat2 : vec3<f32>;
  var x_133 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var x_519 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu26 : u32;
  var u_xlatu3 : u32;
  var u_xlati26 : i32;
  var u_xlati14 : i32;
  var u_xlatu14 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat14 : vec3<f32>;
  var x_652 : f32;
  var u_xlatb14 : vec2<bool>;
  var x_683 : f32;
  var u_xlat26 : f32;
  var u_xlatb2 : bool;
  var x_730 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat29 : f32;
  var u_xlat41 : f32;
  var u_xlat18 : f32;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati17 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat21 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
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
  u_xlatb36 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat37;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb36;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat36 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat36;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  let x_203 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_212 : vec4<f32> = vs_INTERP3;
  let x_215 : f32 = x_90.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_212.x, x_212.y), x_215);
  u_xlat5 = vec4<f32>(x_216.w, x_216.x, x_216.y, x_216.z);
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_219.y, x_219.z, x_219.w, x_219.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_227 : vec4<f32> = u_xlat6;
  let x_228 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_230);
  let x_233 : f32 = u_xlat36;
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = vs_INTERP4.y;
  u_xlat36 = (x_240 * 200.0f);
  let x_243 : f32 = u_xlat36;
  u_xlat36 = min(x_243, 1.0f);
  let x_245 : f32 = u_xlat36;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_259 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres0;
  let x_262 : vec3<f32> = (x_252 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_268 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres1;
  let x_271 : vec3<f32> = (x_266 + -(vec3<f32>(x_268.x, x_268.y, x_268.z)));
  let x_272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : vec3<f32> = vs_INTERP0;
  let x_278 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres2;
  let x_281 : vec3<f32> = (x_275 + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : vec3<f32> = vs_INTERP0;
  let x_288 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_285 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat6;
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec4<f32> = u_xlat7;
  let x_300 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec4<f32> = u_xlat8;
  let x_306 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec3<f32> = u_xlat9;
  let x_311 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_310, x_311);
  let x_317 : vec4<f32> = u_xlat6;
  let x_320 : vec4<f32> = x_257.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_317 < x_320);
  let x_323 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_331);
  let x_335 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_335);
  let x_339 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_339);
  let x_344 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_344);
  let x_348 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_348);
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : vec4<f32> = u_xlat7;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + vec3<f32>(x_353.y, x_353.z, x_353.w));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec3<f32> = max(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_362.x, x_361.x, x_361.y, x_361.z);
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_364, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat36;
  u_xlat36 = (-(x_369) + 4.0f);
  let x_373 : f32 = u_xlat36;
  u_xlatu36 = u32(x_373);
  let x_376 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_376) << bitcast<u32>(2i));
  let x_379 : vec3<f32> = vs_INTERP0;
  let x_381 : i32 = u_xlati36;
  let x_384 : i32 = u_xlati36;
  let x_388 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_381 + 1i) / 4i)][((x_384 + 1i) % 4i)];
  let x_390 : vec3<f32> = (vec3<f32>(x_379.y, x_379.y, x_379.y) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : i32 = u_xlati36;
  let x_395 : i32 = u_xlati36;
  let x_398 : vec4<f32> = x_257.x_MainLightWorldToShadow[(x_393 / 4i)][(x_395 % 4i)];
  let x_400 : vec3<f32> = vs_INTERP0;
  let x_403 : vec4<f32> = u_xlat6;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.x, x_400.x)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : i32 = u_xlati36;
  let x_411 : i32 = u_xlati36;
  let x_415 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_408 + 2i) / 4i)][((x_411 + 2i) % 4i)];
  let x_417 : vec3<f32> = vs_INTERP0;
  let x_420 : vec4<f32> = u_xlat6;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat6;
  let x_427 : i32 = u_xlati36;
  let x_430 : i32 = u_xlati36;
  let x_434 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_427 + 3i) / 4i)][((x_430 + 3i) % 4i)];
  let x_436 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  let x_443 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_441.x, x_441.y, x_443);
  let x_455 : vec3<f32> = txVec0;
  let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_455.xy, x_455.z);
  u_xlat36 = x_457;
  let x_460 : f32 = x_257.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat36;
  let x_465 : f32 = x_257.x_MainLightShadowParams.x;
  let x_467 : f32 = u_xlat37;
  u_xlat36 = ((x_463 * x_465) + x_467);
  let x_471 : f32 = u_xlat6.z;
  u_xlatb37 = (0.0f >= x_471);
  let x_475 : f32 = u_xlat6.z;
  u_xlatb38 = (x_475 >= 1.0f);
  let x_477 : bool = u_xlatb37;
  let x_478 : bool = u_xlatb38;
  u_xlatb37 = (x_477 | x_478);
  let x_480 : bool = u_xlatb37;
  let x_481 : f32 = u_xlat36;
  u_xlat36 = select(x_481, 1.0f, x_480);
  let x_483 : vec3<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_483, -(vec3<f32>(x_485.x, x_485.y, x_485.z)));
  let x_491 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_491, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat36;
  let x_497 : vec4<f32> = x_90.x_MainLightColor;
  let x_499 : vec3<f32> = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec3<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_502.x, x_502.x, x_502.x) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_507 * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_512 : f32 = x_145.unity_LODFade.x;
  u_xlatb37 = (x_512 < 0.0f);
  let x_516 : f32 = x_145.unity_LODFade.x;
  u_xlat38 = (x_516 + 1.0f);
  let x_518 : bool = u_xlatb37;
  if (x_518) {
    let x_522 : f32 = u_xlat38;
    x_519 = x_522;
  } else {
    let x_525 : f32 = x_145.unity_LODFade.x;
    x_519 = x_525;
  }
  let x_526 : f32 = x_519;
  u_xlat37 = x_526;
  let x_528 : f32 = u_xlat37;
  u_xlatb38 = (0.5f >= x_528);
  let x_530 : vec3<f32> = u_xlat2;
  let x_534 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_530) * vec3<f32>(x_534.x, x_534.y, x_534.x));
  let x_540 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_540);
  let x_544 : u32 = u_xlatu2.z;
  u_xlatu26 = (x_544 * 1025u);
  let x_548 : u32 = u_xlatu26;
  u_xlatu3 = (x_548 >> 6u);
  let x_552 : u32 = u_xlatu26;
  let x_553 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_552 ^ x_553));
  let x_556 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_556) * 9u);
  let x_560 : u32 = u_xlatu26;
  u_xlatu3 = (x_560 >> 11u);
  let x_563 : u32 = u_xlatu26;
  let x_564 : u32 = u_xlatu3;
  u_xlati26 = bitcast<i32>((x_563 ^ x_564));
  let x_567 : i32 = u_xlati26;
  u_xlati26 = (x_567 * 32769i);
  let x_571 : i32 = u_xlati26;
  let x_574 : u32 = u_xlatu2.y;
  u_xlati14 = bitcast<i32>((bitcast<u32>(x_571) ^ x_574));
  let x_578 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_578) * 1025u);
  let x_581 : u32 = u_xlatu14;
  u_xlatu26 = (x_581 >> 6u);
  let x_583 : u32 = u_xlatu26;
  let x_584 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_583 ^ x_584));
  let x_587 : i32 = u_xlati14;
  u_xlatu14 = (bitcast<u32>(x_587) * 9u);
  let x_590 : u32 = u_xlatu14;
  u_xlatu26 = (x_590 >> 11u);
  let x_592 : u32 = u_xlatu26;
  let x_593 : u32 = u_xlatu14;
  u_xlati14 = bitcast<i32>((x_592 ^ x_593));
  let x_596 : i32 = u_xlati14;
  u_xlati14 = (x_596 * 32769i);
  let x_599 : i32 = u_xlati14;
  let x_602 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_599) ^ x_602));
  let x_605 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_605) * 1025u);
  let x_610 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_610 >> 6u);
  let x_612 : u32 = u_xlatu14;
  let x_614 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_612 ^ x_614));
  let x_617 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_617) * 9u);
  let x_622 : u32 = u_xlatu2.x;
  u_xlatu14 = (x_622 >> 11u);
  let x_624 : u32 = u_xlatu14;
  let x_626 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_624 ^ x_626));
  let x_629 : i32 = u_xlati2;
  u_xlati2 = (x_629 * 32769i);
  param = 1065353216i;
  let x_635 : i32 = u_xlati2;
  param_1 = x_635;
  param_2 = 0i;
  param_3 = 23i;
  let x_638 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_638);
  let x_642 : f32 = u_xlat2.x;
  u_xlat2.x = (x_642 + -1.0f);
  let x_647 : f32 = u_xlat2.x;
  u_xlat14.x = (-(x_647) + 1.0f);
  let x_651 : bool = u_xlatb38;
  if (x_651) {
    let x_656 : f32 = u_xlat2.x;
    x_652 = x_656;
  } else {
    let x_659 : f32 = u_xlat14.x;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat2.x = x_660;
  let x_662 : f32 = u_xlat37;
  let x_665 : f32 = u_xlat2.x;
  u_xlat37 = ((x_662 * 2.0f) + -(x_665));
  let x_668 : f32 = u_xlat37;
  let x_670 : f32 = u_xlat3.w;
  u_xlat2.x = (x_668 * x_670);
  let x_677 : f32 = u_xlat2.x;
  u_xlatb14.x = (x_677 >= 0.400000006f);
  let x_682 : bool = u_xlatb14.x;
  if (x_682) {
    let x_687 : f32 = u_xlat2.x;
    x_683 = x_687;
  } else {
    x_683 = 0.0f;
  }
  let x_689 : f32 = x_683;
  u_xlat14.x = x_689;
  let x_692 : f32 = u_xlat3.w;
  let x_693 : f32 = u_xlat37;
  u_xlat37 = ((x_692 * x_693) + -0.400000006f);
  let x_699 : f32 = u_xlat2.x;
  u_xlat26 = dpdxCoarse(x_699);
  let x_702 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_702);
  let x_706 : f32 = u_xlat2.x;
  let x_708 : f32 = u_xlat26;
  u_xlat2.x = (abs(x_706) + abs(x_708));
  let x_713 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_713, 0.0001f);
  let x_717 : f32 = u_xlat37;
  let x_719 : f32 = u_xlat2.x;
  u_xlat37 = (x_717 / x_719);
  let x_721 : f32 = u_xlat37;
  u_xlat37 = (x_721 + 0.5f);
  let x_723 : f32 = u_xlat37;
  u_xlat37 = clamp(x_723, 0.0f, 1.0f);
  let x_727 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_727 == 0.0f));
  let x_729 : bool = u_xlatb2;
  if (x_729) {
    let x_733 : f32 = u_xlat37;
    x_730 = x_733;
  } else {
    let x_736 : f32 = u_xlat14.x;
    x_730 = x_736;
  }
  let x_737 : f32 = x_730;
  u_xlat37 = x_737;
  let x_738 : f32 = u_xlat37;
  u_xlat14.x = (x_738 + -0.0001f);
  let x_743 : f32 = u_xlat14.x;
  u_xlatb14.x = (x_743 < 0.0f);
  let x_747 : bool = u_xlatb14.x;
  if (((select(0i, 1i, x_747) * -1i) != 0i)) {
    discard;
  }
  let x_757 : f32 = vs_INTERP2.w;
  u_xlatb14.x = (0.0f < x_757);
  let x_761 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_761 >= 0.0f);
  let x_765 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_765);
  let x_769 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_769);
  let x_773 : f32 = u_xlat14.y;
  let x_775 : f32 = u_xlat14.x;
  u_xlat14.x = (x_773 * x_775);
  let x_778 : vec3<f32> = vs_INTERP1;
  let x_780 : vec4<f32> = vs_INTERP2;
  let x_782 : vec3<f32> = (vec3<f32>(x_778.z, x_778.x, x_778.y) * vec3<f32>(x_780.y, x_780.z, x_780.x));
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = vs_INTERP1;
  let x_787 : vec4<f32> = vs_INTERP2;
  let x_790 : vec4<f32> = u_xlat3;
  let x_793 : vec3<f32> = ((vec3<f32>(x_785.y, x_785.z, x_785.x) * vec3<f32>(x_787.z, x_787.x, x_787.y)) + -(vec3<f32>(x_790.x, x_790.y, x_790.z)));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat14;
  let x_798 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec3<f32>(x_796.x, x_796.x, x_796.x) * vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec3<f32> = u_xlat14;
  let x_802 : vec3<f32> = u_xlat17;
  u_xlat14 = (x_801 * vec3<f32>(x_802.y, x_802.y, x_802.y));
  let x_805 : vec3<f32> = u_xlat17;
  let x_807 : vec4<f32> = vs_INTERP2;
  let x_810 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_805.x, x_805.x, x_805.x) * vec3<f32>(x_807.x, x_807.y, x_807.z)) + x_810);
  let x_812 : vec3<f32> = u_xlat17;
  let x_814 : vec3<f32> = vs_INTERP1;
  let x_816 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_812.z, x_812.z, x_812.z) * x_814) + x_816);
  let x_818 : vec3<f32> = u_xlat14;
  let x_819 : vec3<f32> = u_xlat14;
  u_xlat3.x = dot(x_818, x_819);
  let x_823 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_823);
  let x_826 : vec3<f32> = u_xlat14;
  let x_827 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_826 * vec3<f32>(x_827.x, x_827.x, x_827.x));
  let x_831 : f32 = vs_INTERP0.y;
  let x_833 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat3.x = (x_831 * x_833);
  let x_837 : f32 = x_90.unity_MatrixV[0i].z;
  let x_839 : f32 = vs_INTERP0.x;
  let x_842 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_837 * x_839) + x_842);
  let x_846 : f32 = x_90.unity_MatrixV[2i].z;
  let x_848 : f32 = vs_INTERP0.z;
  let x_851 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_846 * x_848) + x_851);
  let x_855 : f32 = u_xlat3.x;
  let x_857 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat3.x = (x_855 + x_857);
  let x_861 : f32 = u_xlat3.x;
  let x_865 : f32 = x_90.x_ProjectionParams.y;
  u_xlat3.x = (-(x_861) + -(x_865));
  let x_870 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_870, 0.0f);
  let x_874 : f32 = u_xlat3.x;
  let x_877 : f32 = x_90.unity_FogParams.x;
  u_xlat3.x = (x_874 * x_877);
  let x_887 : vec2<f32> = vs_INTERP5;
  let x_889 : f32 = x_90.x_GlobalMipBias.x;
  let x_890 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_887, x_889);
  u_xlat6 = x_890;
  let x_896 : vec2<f32> = vs_INTERP5;
  let x_898 : f32 = x_90.x_GlobalMipBias.x;
  let x_899 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_896, x_898);
  u_xlat15 = vec3<f32>(x_899.x, x_899.y, x_899.z);
  let x_901 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_901.x, x_901.y, x_901.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_907 : vec3<f32> = u_xlat14;
  let x_908 : vec3<f32> = u_xlat17;
  u_xlat40 = dot(x_907, x_908);
  let x_910 : f32 = u_xlat40;
  u_xlat40 = (x_910 + 0.5f);
  let x_912 : vec3<f32> = u_xlat15;
  let x_913 : f32 = u_xlat40;
  u_xlat15 = (x_912 * vec3<f32>(x_913, x_913, x_913));
  let x_917 : f32 = u_xlat6.w;
  u_xlat40 = max(x_917, 0.0001f);
  let x_919 : vec3<f32> = u_xlat15;
  let x_920 : f32 = u_xlat40;
  u_xlat15 = (x_919 / vec3<f32>(x_920, x_920, x_920));
  let x_925 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_926 : vec2<f32> = vec2<f32>(x_925.x, x_925.y);
  let x_930 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_926.x, x_926.y));
  let x_931 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_930.x, x_930.y, x_931.z);
  let x_933 : vec3<f32> = u_xlat17;
  let x_935 : vec4<f32> = hlslcc_FragCoord;
  let x_937 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) * vec2<f32>(x_935.x, x_935.y));
  let x_938 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
  let x_941 : f32 = u_xlat6.y;
  let x_944 : f32 = x_90.x_ScaleBiasRt.x;
  let x_947 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat40 = ((x_941 * x_944) + x_947);
  let x_949 : f32 = u_xlat40;
  u_xlat6.z = (-(x_949) + 1.0f);
  let x_954 : f32 = u_xlat5.x;
  u_xlat5.x = x_954;
  let x_957 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_957, 0.0f, 1.0f);
  let x_960 : f32 = u_xlat37;
  u_xlat37 = x_960;
  let x_961 : f32 = u_xlat37;
  u_xlat37 = clamp(x_961, 0.0f, 1.0f);
  let x_964 : f32 = u_xlat5.x;
  u_xlat40 = (-(x_964) + 1.0f);
  let x_967 : f32 = u_xlat40;
  let x_968 : f32 = u_xlat40;
  u_xlat17.x = (x_967 * x_968);
  let x_972 : f32 = u_xlat17.x;
  u_xlat17.x = max(x_972, 0.0078125f);
  let x_978 : f32 = u_xlat17.x;
  let x_980 : f32 = u_xlat17.x;
  u_xlat29 = (x_978 * x_980);
  let x_983 : f32 = u_xlat5.x;
  u_xlat5.x = (x_983 + 0.040000021f);
  let x_988 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_988, 1.0f);
  let x_993 : f32 = u_xlat17.x;
  u_xlat41 = ((x_993 * 4.0f) + 2.0f);
  let x_1001 : vec4<f32> = u_xlat6;
  let x_1004 : f32 = x_90.x_GlobalMipBias.x;
  let x_1005 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1001.x, x_1001.z), x_1004);
  u_xlat6.x = x_1005.x;
  let x_1010 : f32 = u_xlat6.x;
  u_xlat18 = (x_1010 + -1.0f);
  let x_1013 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1014 : f32 = u_xlat18;
  u_xlat18 = ((x_1013 * x_1014) + 1.0f);
  let x_1018 : f32 = u_xlat6.x;
  let x_1020 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1018, x_1020);
  let x_1023 : vec3<f32> = vs_INTERP0;
  let x_1025 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1027 : vec3<f32> = (x_1023 + -(x_1025));
  let x_1028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : f32 = u_xlat30;
  let x_1038 : f32 = x_257.x_MainLightShadowParams.z;
  let x_1041 : f32 = x_257.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1036 * x_1038) + x_1041);
  let x_1043 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1043, 0.0f, 1.0f);
  let x_1046 : f32 = u_xlat36;
  u_xlat42 = (-(x_1046) + 1.0f);
  let x_1049 : f32 = u_xlat30;
  let x_1050 : f32 = u_xlat42;
  let x_1052 : f32 = u_xlat36;
  u_xlat36 = ((x_1049 * x_1050) + x_1052);
  let x_1054 : f32 = u_xlat18;
  let x_1057 : vec4<f32> = x_90.x_MainLightColor;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat1;
  let x_1064 : vec3<f32> = u_xlat14;
  u_xlat30 = dot(-(x_1062), x_1064);
  let x_1066 : f32 = u_xlat30;
  let x_1067 : f32 = u_xlat30;
  u_xlat30 = (x_1066 + x_1067);
  let x_1069 : vec3<f32> = u_xlat14;
  let x_1070 : f32 = u_xlat30;
  let x_1074 : vec3<f32> = u_xlat1;
  let x_1076 : vec3<f32> = ((x_1069 * -(vec3<f32>(x_1070, x_1070, x_1070))) + -(x_1074));
  let x_1077 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec3<f32> = u_xlat14;
  let x_1080 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1079, x_1080);
  let x_1082 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1082, 0.0f, 1.0f);
  let x_1084 : f32 = u_xlat30;
  u_xlat30 = (-(x_1084) + 1.0f);
  let x_1087 : f32 = u_xlat30;
  let x_1088 : f32 = u_xlat30;
  u_xlat30 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat30;
  let x_1091 : f32 = u_xlat30;
  u_xlat30 = (x_1090 * x_1091);
  let x_1093 : f32 = u_xlat40;
  u_xlat42 = ((-(x_1093) * 0.699999988f) + 1.700000048f);
  let x_1099 : f32 = u_xlat40;
  let x_1100 : f32 = u_xlat42;
  u_xlat4.w = (x_1099 * x_1100);
  let x_1103 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1103 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_1116 : vec4<f32> = u_xlat8;
  let x_1119 : f32 = u_xlat4.w;
  let x_1120 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1116.x, x_1116.y, x_1116.z), x_1119);
  u_xlat8 = x_1120;
  let x_1122 : f32 = u_xlat8.w;
  u_xlat40 = (x_1122 + -1.0f);
  let x_1125 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1126 : f32 = u_xlat40;
  u_xlat40 = ((x_1125 * x_1126) + 1.0f);
  let x_1129 : f32 = u_xlat40;
  u_xlat40 = max(x_1129, 0.0f);
  let x_1131 : f32 = u_xlat40;
  u_xlat40 = log2(x_1131);
  let x_1133 : f32 = u_xlat40;
  let x_1135 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1133 * x_1135);
  let x_1137 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1137);
  let x_1139 : f32 = u_xlat40;
  let x_1141 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1139 * x_1141);
  let x_1143 : vec4<f32> = u_xlat8;
  let x_1145 : f32 = u_xlat40;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1143.x, x_1143.y, x_1143.z) * vec3<f32>(x_1145, x_1145, x_1145));
  let x_1148 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec3<f32> = u_xlat17;
  let x_1152 : vec3<f32> = u_xlat17;
  let x_1156 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.x) * vec2<f32>(x_1152.x, x_1152.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1157 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_1156.x, x_1156.y, x_1157.z);
  let x_1160 : f32 = u_xlat9.y;
  u_xlat40 = (1.0f / x_1160);
  let x_1163 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1163 + -0.039999999f);
  let x_1167 : f32 = u_xlat30;
  let x_1169 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1167 * x_1169) + 0.039999999f);
  let x_1174 : f32 = u_xlat40;
  let x_1176 : f32 = u_xlat5.x;
  u_xlat40 = (x_1174 * x_1176);
  let x_1178 : f32 = u_xlat40;
  let x_1180 : vec4<f32> = u_xlat8;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1185 : vec3<f32> = u_xlat15;
  let x_1186 : vec4<f32> = u_xlat4;
  let x_1189 : vec4<f32> = u_xlat8;
  u_xlat15 = ((x_1185 * vec3<f32>(x_1186.x, x_1186.y, x_1186.z)) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : f32 = u_xlat36;
  let x_1194 : f32 = x_145.unity_LightData.z;
  u_xlat36 = (x_1192 * x_1194);
  let x_1196 : vec3<f32> = u_xlat14;
  let x_1198 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat40 = dot(x_1196, vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1201, 0.0f, 1.0f);
  let x_1203 : f32 = u_xlat36;
  let x_1204 : f32 = u_xlat40;
  u_xlat36 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat36;
  let x_1208 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec3<f32> = u_xlat1;
  let x_1215 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1217 : vec3<f32> = (x_1213 + vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec4<f32> = u_xlat8;
  let x_1222 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(vec3<f32>(x_1220.x, x_1220.y, x_1220.z), vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : f32 = u_xlat36;
  u_xlat36 = max(x_1225, 1.17549435e-37f);
  let x_1228 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1228);
  let x_1230 : f32 = u_xlat36;
  let x_1232 : vec4<f32> = u_xlat8;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1230, x_1230, x_1230) * vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec3<f32> = u_xlat14;
  let x_1238 : vec4<f32> = u_xlat8;
  u_xlat36 = dot(x_1237, vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1241, 0.0f, 1.0f);
  let x_1244 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1246 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_1244.x, x_1244.y, x_1244.z), vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1249, 0.0f, 1.0f);
  let x_1251 : f32 = u_xlat36;
  let x_1252 : f32 = u_xlat36;
  u_xlat36 = (x_1251 * x_1252);
  let x_1254 : f32 = u_xlat36;
  let x_1256 : f32 = u_xlat9.x;
  u_xlat36 = ((x_1254 * x_1256) + 1.000010014f);
  let x_1260 : f32 = u_xlat40;
  let x_1261 : f32 = u_xlat40;
  u_xlat40 = (x_1260 * x_1261);
  let x_1263 : f32 = u_xlat36;
  let x_1264 : f32 = u_xlat36;
  u_xlat36 = (x_1263 * x_1264);
  let x_1266 : f32 = u_xlat40;
  u_xlat40 = max(x_1266, 0.100000001f);
  let x_1269 : f32 = u_xlat36;
  let x_1270 : f32 = u_xlat40;
  u_xlat36 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat41;
  let x_1273 : f32 = u_xlat36;
  u_xlat36 = (x_1272 * x_1273);
  let x_1275 : f32 = u_xlat29;
  let x_1276 : f32 = u_xlat36;
  u_xlat36 = (x_1275 / x_1276);
  let x_1278 : f32 = u_xlat36;
  let x_1282 : vec4<f32> = u_xlat4;
  let x_1284 : vec3<f32> = ((vec3<f32>(x_1278, x_1278, x_1278) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : vec4<f32> = u_xlat7;
  let x_1289 : vec4<f32> = u_xlat8;
  let x_1291 : vec3<f32> = (vec3<f32>(x_1287.x, x_1287.y, x_1287.z) * vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1296 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1298 : f32 = x_145.unity_LightData.y;
  u_xlat36 = min(x_1296, x_1298);
  let x_1300 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1300));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1312 : u32 = u_xlatu_loop_1;
    let x_1313 : u32 = u_xlatu36;
    if ((x_1312 < x_1313)) {
    } else {
      break;
    }
    let x_1316 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1316 >> 2u);
    let x_1319 : u32 = u_xlatu_loop_1;
    u_xlati17 = bitcast<i32>((x_1319 & 3u));
    let x_1322 : u32 = u_xlatu5;
    let x_1325 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1322)];
    let x_1335 : i32 = u_xlati17;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1340 : vec4<u32> = indexable[x_1335];
    u_xlat5.x = dot(x_1325, bitcast<vec4<f32>>(x_1340));
    let x_1346 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1346);
    let x_1349 : vec3<f32> = vs_INTERP0;
    let x_1361 : i32 = u_xlati5;
    let x_1363 : vec4<f32> = x_1360.x_AdditionalLightsPosition[x_1361];
    let x_1366 : i32 = u_xlati5;
    let x_1368 : vec4<f32> = x_1360.x_AdditionalLightsPosition[x_1366];
    u_xlat21 = ((-(x_1349) * vec3<f32>(x_1363.w, x_1363.w, x_1363.w)) + vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec3<f32> = u_xlat21;
    let x_1372 : vec3<f32> = u_xlat21;
    u_xlat17.x = dot(x_1371, x_1372);
    let x_1376 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1376, 6.10351562e-05f);
    let x_1381 : f32 = u_xlat17.x;
    u_xlat30 = inverseSqrt(x_1381);
    let x_1384 : f32 = u_xlat30;
    let x_1386 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1384, x_1384, x_1384) * x_1386);
    let x_1389 : f32 = u_xlat17.x;
    u_xlat42 = (1.0f / x_1389);
    let x_1392 : f32 = u_xlat17.x;
    let x_1393 : i32 = u_xlati5;
    let x_1395 : f32 = x_1360.x_AdditionalLightsAttenuation[x_1393].x;
    u_xlat17.x = (x_1392 * x_1395);
    let x_1399 : f32 = u_xlat17.x;
    let x_1402 : f32 = u_xlat17.x;
    u_xlat17.x = ((-(x_1399) * x_1402) + 1.0f);
    let x_1407 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1407, 0.0f);
    let x_1411 : f32 = u_xlat17.x;
    let x_1413 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1411 * x_1413);
    let x_1417 : f32 = u_xlat17.x;
    let x_1418 : f32 = u_xlat42;
    u_xlat17.x = (x_1417 * x_1418);
    let x_1421 : i32 = u_xlati5;
    let x_1423 : vec4<f32> = x_1360.x_AdditionalLightsSpotDir[x_1421];
    let x_1425 : vec3<f32> = u_xlat10;
    u_xlat42 = dot(vec3<f32>(x_1423.x, x_1423.y, x_1423.z), x_1425);
    let x_1427 : f32 = u_xlat42;
    let x_1428 : i32 = u_xlati5;
    let x_1430 : f32 = x_1360.x_AdditionalLightsAttenuation[x_1428].z;
    let x_1432 : i32 = u_xlati5;
    let x_1434 : f32 = x_1360.x_AdditionalLightsAttenuation[x_1432].w;
    u_xlat42 = ((x_1427 * x_1430) + x_1434);
    let x_1436 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1436, 0.0f, 1.0f);
    let x_1438 : f32 = u_xlat42;
    let x_1439 : f32 = u_xlat42;
    u_xlat42 = (x_1438 * x_1439);
    let x_1442 : f32 = u_xlat17.x;
    let x_1443 : f32 = u_xlat42;
    u_xlat17.x = (x_1442 * x_1443);
    let x_1447 : f32 = u_xlat18;
    let x_1449 : i32 = u_xlati5;
    let x_1451 : vec4<f32> = x_1360.x_AdditionalLightsColor[x_1449];
    u_xlat11 = (vec3<f32>(x_1447, x_1447, x_1447) * vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
    let x_1454 : vec3<f32> = u_xlat14;
    let x_1455 : vec3<f32> = u_xlat10;
    u_xlat5.x = dot(x_1454, x_1455);
    let x_1459 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1459, 0.0f, 1.0f);
    let x_1463 : f32 = u_xlat5.x;
    let x_1465 : f32 = u_xlat17.x;
    u_xlat5.x = (x_1463 * x_1465);
    let x_1468 : vec4<f32> = u_xlat5;
    let x_1470 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1468.x, x_1468.x, x_1468.x) * x_1470);
    let x_1472 : vec3<f32> = u_xlat21;
    let x_1473 : f32 = u_xlat30;
    let x_1476 : vec3<f32> = u_xlat1;
    u_xlat21 = ((x_1472 * vec3<f32>(x_1473, x_1473, x_1473)) + x_1476);
    let x_1478 : vec3<f32> = u_xlat21;
    let x_1479 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1478, x_1479);
    let x_1483 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1483, 1.17549435e-37f);
    let x_1487 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1487);
    let x_1490 : vec4<f32> = u_xlat5;
    let x_1492 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1490.x, x_1490.x, x_1490.x) * x_1492);
    let x_1494 : vec3<f32> = u_xlat14;
    let x_1495 : vec3<f32> = u_xlat21;
    u_xlat5.x = dot(x_1494, x_1495);
    let x_1499 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1499, 0.0f, 1.0f);
    let x_1502 : vec3<f32> = u_xlat10;
    let x_1503 : vec3<f32> = u_xlat21;
    u_xlat5.y = dot(x_1502, x_1503);
    let x_1507 : f32 = u_xlat5.y;
    u_xlat5.y = clamp(x_1507, 0.0f, 1.0f);
    let x_1510 : vec4<f32> = u_xlat5;
    let x_1512 : vec4<f32> = u_xlat5;
    let x_1514 : vec2<f32> = (vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1512.x, x_1512.y));
    let x_1515 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1514.x, x_1514.y, x_1515.z, x_1515.w);
    let x_1518 : f32 = u_xlat5.x;
    let x_1520 : f32 = u_xlat9.x;
    u_xlat5.x = ((x_1518 * x_1520) + 1.000010014f);
    let x_1525 : f32 = u_xlat5.x;
    let x_1527 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1525 * x_1527);
    let x_1531 : f32 = u_xlat5.y;
    u_xlat17.x = max(x_1531, 0.100000001f);
    let x_1535 : f32 = u_xlat17.x;
    let x_1537 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1535 * x_1537);
    let x_1540 : f32 = u_xlat41;
    let x_1542 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1540 * x_1542);
    let x_1545 : f32 = u_xlat29;
    let x_1547 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1545 / x_1547);
    let x_1550 : vec4<f32> = u_xlat5;
    let x_1553 : vec4<f32> = u_xlat4;
    u_xlat21 = ((vec3<f32>(x_1550.x, x_1550.x, x_1550.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
    let x_1556 : vec3<f32> = u_xlat21;
    let x_1557 : vec3<f32> = u_xlat11;
    let x_1559 : vec4<f32> = u_xlat8;
    let x_1561 : vec3<f32> = ((x_1556 * x_1557) + vec3<f32>(x_1559.x, x_1559.y, x_1559.z));
    let x_1562 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);

    continuing {
      let x_1564 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1564 + bitcast<u32>(1i));
    }
  }
  let x_1566 : vec3<f32> = u_xlat15;
  let x_1567 : vec4<f32> = u_xlat6;
  let x_1570 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_1566 * vec3<f32>(x_1567.x, x_1567.x, x_1567.x)) + vec3<f32>(x_1570.x, x_1570.y, x_1570.z));
  let x_1573 : vec4<f32> = u_xlat8;
  let x_1575 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1573.x, x_1573.y, x_1573.z) + x_1575);
  let x_1577 : vec4<f32> = vs_INTERP4;
  let x_1579 : vec3<f32> = u_xlat0;
  let x_1581 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1577.w, x_1577.w, x_1577.w) * x_1579) + x_1581);
  let x_1584 : f32 = u_xlat3.x;
  let x_1586 : f32 = u_xlat3.x;
  u_xlat36 = (x_1584 * -(x_1586));
  let x_1589 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1589);
  let x_1591 : vec3<f32> = u_xlat0;
  let x_1594 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_1591 + -(vec3<f32>(x_1594.x, x_1594.y, x_1594.z)));
  let x_1600 : f32 = u_xlat36;
  let x_1602 : vec3<f32> = u_xlat0;
  let x_1605 : vec4<f32> = x_90.unity_FogColor;
  let x_1607 : vec3<f32> = ((vec3<f32>(x_1600, x_1600, x_1600) * x_1602) + vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1608 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1610 : bool = u_xlatb2;
  let x_1611 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1611, x_1610);
  let x_1619 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_1621 : f32 = x_145.unity_RenderingLayer.x;
  u_xlatu0 = (x_1619 & bitcast<u32>(x_1621));
  let x_1624 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1624);
  let x_1629 : f32 = u_xlat0.x;
  let x_1631 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1629 * x_1631);
  let x_1635 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1635, 0.0f, 1.0f);
  let x_1638 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1638.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

