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

@group(1) @binding(2) var<uniform> x_54 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

@group(1) @binding(4) var<uniform> x_144 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_238 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1076 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var u_xlatb0 : bool;
  var x_357 : f32;
  var u_xlat13 : f32;
  var u_xlat24 : f32;
  var x_403 : f32;
  var u_xlat22 : f32;
  var x_488 : f32;
  var x_501 : f32;
  var x_513 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var u_xlat38 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu34 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati16 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat19 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_30, x_31);
  let x_33 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_33);
  let x_35 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_35);
  let x_44 : f32 = vs_INTERP2.w;
  u_xlatb11.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat11.y;
  let x_77 : f32 = u_xlat11.x;
  u_xlat11.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat11;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat11;
  let x_112 : f32 = u_xlat0;
  let x_114 : vec3<f32> = (x_111 * vec3<f32>(x_112, x_112, x_112));
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_130 : vec4<f32> = vs_INTERP3;
  let x_137 : f32 = x_134.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_130.x, x_130.y), x_137);
  u_xlat4 = x_138;
  let x_140 : vec4<f32> = u_xlat4;
  let x_147 : vec4<f32> = x_144.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_134.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat6 = vec4<f32>(x_160.w, x_160.x, x_160.y, x_160.z);
  let x_163 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_163.y, x_163.z, x_163.w, x_163.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_170 : vec4<f32> = u_xlat7;
  let x_171 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_170, x_171);
  let x_173 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_173);
  let x_176 : f32 = u_xlat0;
  let x_178 : vec4<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_183 : f32 = vs_INTERP4.y;
  u_xlat0 = (x_183 * 200.0f);
  let x_186 : f32 = u_xlat0;
  u_xlat0 = min(x_186, 1.0f);
  let x_188 : f32 = u_xlat0;
  let x_190 : vec4<f32> = u_xlat4;
  let x_192 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec3<f32> = u_xlat17;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat17;
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat17;
  let x_214 : vec3<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_212.z, x_212.z, x_212.z) * x_214) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec3<f32> = u_xlat1;
  let x_220 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_219, x_220);
  let x_222 : f32 = u_xlat0;
  u_xlat0 = max(x_222, 1.17549435e-37f);
  let x_225 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat0;
  let x_229 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_227, x_227, x_227) * x_229);
  let x_232 : vec3<f32> = vs_INTERP0;
  let x_241 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][1i];
  let x_243 : vec3<f32> = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][0i];
  let x_249 : vec3<f32> = vs_INTERP0;
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_259 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][2i];
  let x_261 : vec3<f32> = vs_INTERP0;
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat2;
  let x_272 : vec4<f32> = x_238.x_MainLightWorldToShadow[0i][3i];
  let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_293 : vec3<f32> = txVec0;
  let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_293.xy, x_293.z);
  u_xlat0 = x_295;
  let x_299 : f32 = x_238.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat0;
  let x_304 : f32 = x_238.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat34;
  u_xlat0 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_310);
  let x_314 : f32 = u_xlat2.z;
  u_xlatb13 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb13;
  let x_317 : bool = u_xlatb2;
  u_xlatb2 = (x_316 | x_317);
  let x_319 : bool = u_xlatb2;
  let x_320 : f32 = u_xlat0;
  u_xlat0 = select(x_320, 1.0f, x_319);
  let x_322 : vec3<f32> = u_xlat1;
  let x_324 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat1.x = dot(x_322, -(vec3<f32>(x_324.x, x_324.y, x_324.z)));
  let x_330 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_330, 0.0f, 1.0f);
  let x_333 : f32 = u_xlat0;
  let x_337 : vec4<f32> = x_134.x_MainLightColor;
  let x_339 : vec3<f32> = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec3<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_347 * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_353 : f32 = u_xlat4.w;
  u_xlatb0 = (x_353 >= 0.400000006f);
  let x_356 : bool = u_xlatb0;
  if (x_356) {
    let x_361 : f32 = u_xlat4.w;
    x_357 = x_361;
  } else {
    x_357 = 0.0f;
  }
  let x_363 : f32 = x_357;
  u_xlat0 = x_363;
  let x_365 : f32 = u_xlat4.w;
  u_xlat2.x = (x_365 + -0.400000006f);
  let x_371 : f32 = u_xlat4.w;
  u_xlat13 = dpdxCoarse(x_371);
  let x_375 : f32 = u_xlat4.w;
  u_xlat24 = dpdyCoarse(x_375);
  let x_377 : f32 = u_xlat24;
  let x_379 : f32 = u_xlat13;
  u_xlat13 = (abs(x_377) + abs(x_379));
  let x_382 : f32 = u_xlat13;
  u_xlat13 = max(x_382, 0.0001f);
  let x_386 : f32 = u_xlat2.x;
  let x_387 : f32 = u_xlat13;
  u_xlat2.x = (x_386 / x_387);
  let x_391 : f32 = u_xlat2.x;
  u_xlat2.x = (x_391 + 0.5f);
  let x_396 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_396, 0.0f, 1.0f);
  let x_400 : f32 = x_134.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_400 == 0.0f));
  let x_402 : bool = u_xlatb13;
  if (x_402) {
    let x_407 : f32 = u_xlat2.x;
    x_403 = x_407;
  } else {
    let x_409 : f32 = u_xlat0;
    x_403 = x_409;
  }
  let x_410 : f32 = x_403;
  u_xlat0 = x_410;
  let x_411 : f32 = u_xlat0;
  u_xlat2.x = (x_411 + -0.0001f);
  let x_416 : f32 = u_xlat2.x;
  u_xlatb2 = (x_416 < 0.0f);
  let x_418 : bool = u_xlatb2;
  if (((select(0i, 1i, x_418) * -1i) != 0i)) {
    discard;
  }
  let x_426 : vec3<f32> = u_xlat11;
  let x_427 : vec3<f32> = u_xlat17;
  u_xlat11 = (x_426 * vec3<f32>(x_427.y, x_427.y, x_427.y));
  let x_430 : vec3<f32> = u_xlat17;
  let x_432 : vec4<f32> = vs_INTERP2;
  let x_435 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_430.x, x_430.x, x_430.x) * vec3<f32>(x_432.x, x_432.y, x_432.z)) + x_435);
  let x_437 : vec3<f32> = u_xlat17;
  let x_439 : vec3<f32> = vs_INTERP1;
  let x_441 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_437.z, x_437.z, x_437.z) * x_439) + x_441);
  let x_443 : vec3<f32> = u_xlat11;
  let x_444 : vec3<f32> = u_xlat11;
  u_xlat2.x = dot(x_443, x_444);
  let x_448 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_448);
  let x_451 : vec3<f32> = u_xlat11;
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec3<f32> = (x_451 * vec3<f32>(x_452.x, x_452.x, x_452.x));
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_459 : f32 = x_134.unity_OrthoParams.w;
  u_xlatb11.x = (x_459 == 0.0f);
  let x_462 : vec3<f32> = vs_INTERP0;
  let x_467 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_468 : vec3<f32> = (-(x_462) + x_467);
  let x_469 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_468.x, x_469.y, x_468.y, x_468.z);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_472.x, x_472.z, x_472.w), vec3<f32>(x_474.x, x_474.z, x_474.w));
  let x_477 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_477);
  let x_479 : f32 = u_xlat22;
  let x_481 : vec4<f32> = u_xlat2;
  let x_483 : vec3<f32> = (vec3<f32>(x_479, x_479, x_479) * vec3<f32>(x_481.x, x_481.z, x_481.w));
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_483.x, x_484.y, x_483.y, x_483.z);
  let x_487 : bool = u_xlatb11.x;
  if (x_487) {
    let x_492 : f32 = u_xlat2.x;
    x_488 = x_492;
  } else {
    let x_496 : f32 = x_134.unity_MatrixV[0i].z;
    x_488 = x_496;
  }
  let x_497 : f32 = x_488;
  u_xlat4.x = x_497;
  let x_500 : bool = u_xlatb11.x;
  if (x_500) {
    let x_505 : f32 = u_xlat2.z;
    x_501 = x_505;
  } else {
    let x_508 : f32 = x_134.unity_MatrixV[1i].z;
    x_501 = x_508;
  }
  let x_509 : f32 = x_501;
  u_xlat4.y = x_509;
  let x_512 : bool = u_xlatb11.x;
  if (x_512) {
    let x_517 : f32 = u_xlat2.w;
    x_513 = x_517;
  } else {
    let x_520 : f32 = x_134.unity_MatrixV[2i].z;
    x_513 = x_520;
  }
  let x_521 : f32 = x_513;
  u_xlat4.z = x_521;
  u_xlat3.w = 1.0f;
  let x_526 : vec4<f32> = x_54.unity_SHAr;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_526, x_527);
  let x_532 : vec4<f32> = x_54.unity_SHAg;
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_532, x_533);
  let x_538 : vec4<f32> = x_54.unity_SHAb;
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_538, x_539);
  let x_543 : vec4<f32> = u_xlat3;
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_543.y, x_543.z, x_543.z, x_543.x) * vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.z));
  let x_551 : vec4<f32> = x_54.unity_SHBr;
  let x_552 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_551, x_552);
  let x_557 : vec4<f32> = x_54.unity_SHBg;
  let x_558 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_557, x_558);
  let x_563 : vec4<f32> = x_54.unity_SHBb;
  let x_564 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_563, x_564);
  let x_568 : f32 = u_xlat3.y;
  let x_570 : f32 = u_xlat3.y;
  u_xlat11.x = (x_568 * x_570);
  let x_574 : f32 = u_xlat3.x;
  let x_576 : f32 = u_xlat3.x;
  let x_579 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_574 * x_576) + -(x_579));
  let x_585 : vec4<f32> = x_54.unity_SHC;
  let x_587 : vec3<f32> = u_xlat11;
  let x_590 : vec3<f32> = u_xlat9;
  u_xlat11 = ((vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(x_587.x, x_587.x, x_587.x)) + x_590);
  let x_592 : vec3<f32> = u_xlat11;
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat11 = (x_592 + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec3<f32> = u_xlat11;
  u_xlat11 = max(x_596, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = x_134.x_ScaledScreenParams;
  let x_602 : vec2<f32> = vec2<f32>(x_601.x, x_601.y);
  let x_606 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_602.x, x_602.y));
  let x_607 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_606.x, x_607.y, x_606.y, x_607.w);
  let x_609 : vec4<f32> = u_xlat2;
  let x_611 : vec4<f32> = hlslcc_FragCoord;
  let x_613 : vec2<f32> = (vec2<f32>(x_609.x, x_609.z) * vec2<f32>(x_611.x, x_611.y));
  let x_614 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_617 : f32 = u_xlat7.y;
  let x_620 : f32 = x_134.x_ScaleBiasRt.x;
  let x_623 : f32 = x_134.x_ScaleBiasRt.y;
  u_xlat2.x = ((x_617 * x_620) + x_623);
  let x_627 : f32 = u_xlat2.x;
  u_xlat7.z = (-(x_627) + 1.0f);
  let x_632 : f32 = u_xlat6.x;
  u_xlat6.x = x_632;
  let x_635 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_635, 0.0f, 1.0f);
  let x_638 : f32 = u_xlat0;
  u_xlat0 = min(x_638, 1.0f);
  let x_640 : vec3<f32> = u_xlat5;
  let x_643 : vec3<f32> = (x_640 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_643.x, x_644.y, x_643.y, x_643.z);
  let x_648 : f32 = u_xlat6.x;
  u_xlat36 = (-(x_648) + 1.0f);
  let x_652 : f32 = u_xlat36;
  let x_653 : f32 = u_xlat36;
  u_xlat37 = (x_652 * x_653);
  let x_655 : f32 = u_xlat37;
  u_xlat37 = max(x_655, 0.0078125f);
  let x_658 : f32 = u_xlat37;
  let x_659 : f32 = u_xlat37;
  u_xlat5.x = (x_658 * x_659);
  let x_664 : f32 = u_xlat6.x;
  u_xlat16 = (x_664 + 0.040000021f);
  let x_667 : f32 = u_xlat16;
  u_xlat16 = min(x_667, 1.0f);
  let x_670 : f32 = u_xlat37;
  u_xlat27 = ((x_670 * 4.0f) + 2.0f);
  let x_680 : vec4<f32> = u_xlat7;
  let x_683 : f32 = x_134.x_GlobalMipBias.x;
  let x_684 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_680.x, x_680.z), x_683);
  u_xlat38 = x_684.x;
  let x_686 : f32 = u_xlat38;
  u_xlat6.x = (x_686 + -1.0f);
  let x_691 : f32 = x_134.x_AmbientOcclusionParam.w;
  let x_693 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_691 * x_693) + 1.0f);
  let x_697 : f32 = u_xlat38;
  let x_699 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_697, x_699);
  let x_703 : vec4<f32> = vs_INTERP9;
  let x_704 : vec2<f32> = vec2<f32>(x_703.x, x_703.y);
  let x_706 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_704.x, x_704.y, x_706);
  let x_713 : vec3<f32> = txVec1;
  let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_713.xy, x_713.z);
  u_xlat17.x = x_715;
  let x_718 : f32 = u_xlat17.x;
  let x_720 : f32 = x_238.x_MainLightShadowParams.x;
  let x_722 : f32 = u_xlat34;
  u_xlat34 = ((x_718 * x_720) + x_722);
  let x_726 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_726);
  let x_730 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_730 >= 1.0f);
  let x_732 : bool = u_xlatb28;
  let x_733 : bool = u_xlatb17;
  u_xlatb17 = (x_732 | x_733);
  let x_735 : bool = u_xlatb17;
  let x_736 : f32 = u_xlat34;
  u_xlat34 = select(x_736, 1.0f, x_735);
  let x_738 : vec3<f32> = vs_INTERP0;
  let x_740 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  u_xlat17 = (x_738 + -(x_740));
  let x_743 : vec3<f32> = u_xlat17;
  let x_744 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat17.x;
  let x_750 : f32 = x_238.x_MainLightShadowParams.z;
  let x_753 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_748 * x_750) + x_753);
  let x_757 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_757, 0.0f, 1.0f);
  let x_761 : f32 = u_xlat34;
  u_xlat28 = (-(x_761) + 1.0f);
  let x_765 : f32 = u_xlat17.x;
  let x_766 : f32 = u_xlat28;
  let x_768 : f32 = u_xlat34;
  u_xlat34 = ((x_765 * x_766) + x_768);
  let x_770 : vec4<f32> = u_xlat6;
  let x_773 : vec4<f32> = x_134.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_770.x, x_770.x, x_770.x) * vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat4;
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(vec3<f32>(x_776.x, x_776.y, x_776.z)), vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_784 : f32 = u_xlat7.x;
  let x_786 : f32 = u_xlat7.x;
  u_xlat7.x = (x_784 + x_786);
  let x_789 : vec4<f32> = u_xlat3;
  let x_791 : vec4<f32> = u_xlat7;
  let x_795 : vec4<f32> = u_xlat4;
  let x_798 : vec3<f32> = ((vec3<f32>(x_789.x, x_789.y, x_789.z) * -(vec3<f32>(x_791.x, x_791.x, x_791.x))) + -(vec3<f32>(x_795.x, x_795.y, x_795.z)));
  let x_799 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_802 : vec4<f32> = u_xlat3;
  let x_804 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(vec3<f32>(x_802.x, x_802.y, x_802.z), vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : f32 = u_xlat40;
  u_xlat40 = clamp(x_807, 0.0f, 1.0f);
  let x_809 : f32 = u_xlat40;
  u_xlat40 = (-(x_809) + 1.0f);
  let x_812 : f32 = u_xlat40;
  let x_813 : f32 = u_xlat40;
  u_xlat40 = (x_812 * x_813);
  let x_815 : f32 = u_xlat40;
  let x_816 : f32 = u_xlat40;
  u_xlat40 = (x_815 * x_816);
  let x_818 : f32 = u_xlat36;
  u_xlat8.x = ((-(x_818) * 0.699999988f) + 1.700000048f);
  let x_825 : f32 = u_xlat36;
  let x_827 : f32 = u_xlat8.x;
  u_xlat36 = (x_825 * x_827);
  let x_829 : f32 = u_xlat36;
  u_xlat36 = (x_829 * 6.0f);
  let x_840 : vec4<f32> = u_xlat7;
  let x_842 : f32 = u_xlat36;
  let x_843 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_840.x, x_840.y, x_840.z), x_842);
  u_xlat8 = x_843;
  let x_845 : f32 = u_xlat8.w;
  u_xlat36 = (x_845 + -1.0f);
  let x_848 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_849 : f32 = u_xlat36;
  u_xlat36 = ((x_848 * x_849) + 1.0f);
  let x_852 : f32 = u_xlat36;
  u_xlat36 = max(x_852, 0.0f);
  let x_854 : f32 = u_xlat36;
  u_xlat36 = log2(x_854);
  let x_856 : f32 = u_xlat36;
  let x_858 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_856 * x_858);
  let x_860 : f32 = u_xlat36;
  u_xlat36 = exp2(x_860);
  let x_862 : f32 = u_xlat36;
  let x_864 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_862 * x_864);
  let x_866 : vec4<f32> = u_xlat8;
  let x_868 : f32 = u_xlat36;
  let x_870 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868));
  let x_871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : f32 = u_xlat37;
  let x_875 : f32 = u_xlat37;
  let x_879 : vec2<f32> = ((vec2<f32>(x_873, x_873) * vec2<f32>(x_875, x_875)) + vec2<f32>(-1.0f, 1.0f));
  let x_880 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
  let x_883 : f32 = u_xlat8.y;
  u_xlat36 = (1.0f / x_883);
  let x_885 : f32 = u_xlat16;
  u_xlat37 = (x_885 + -0.039999999f);
  let x_888 : f32 = u_xlat40;
  let x_889 : f32 = u_xlat37;
  u_xlat37 = ((x_888 * x_889) + 0.039999999f);
  let x_893 : f32 = u_xlat36;
  let x_894 : f32 = u_xlat37;
  u_xlat36 = (x_893 * x_894);
  let x_896 : f32 = u_xlat36;
  let x_898 : vec4<f32> = u_xlat7;
  let x_900 : vec3<f32> = (vec3<f32>(x_896, x_896, x_896) * vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec3<f32> = u_xlat11;
  let x_904 : vec4<f32> = u_xlat2;
  let x_907 : vec4<f32> = u_xlat7;
  u_xlat11 = ((x_903 * vec3<f32>(x_904.x, x_904.z, x_904.w)) + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : f32 = u_xlat34;
  let x_912 : f32 = x_54.unity_LightData.z;
  u_xlat34 = (x_910 * x_912);
  let x_914 : vec4<f32> = u_xlat3;
  let x_917 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_914.x, x_914.y, x_914.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : f32 = u_xlat36;
  u_xlat36 = clamp(x_920, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat34;
  let x_923 : f32 = u_xlat36;
  u_xlat34 = (x_922 * x_923);
  let x_925 : f32 = u_xlat34;
  let x_927 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_925, x_925, x_925) * x_927);
  let x_929 : vec4<f32> = u_xlat4;
  let x_932 : vec4<f32> = x_134.x_MainLightPosition;
  let x_934 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat7;
  let x_939 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_942 : f32 = u_xlat34;
  u_xlat34 = max(x_942, 1.17549435e-37f);
  let x_944 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_944);
  let x_946 : f32 = u_xlat34;
  let x_948 : vec4<f32> = u_xlat7;
  let x_950 : vec3<f32> = (vec3<f32>(x_946, x_946, x_946) * vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat3;
  let x_955 : vec4<f32> = u_xlat7;
  u_xlat34 = dot(vec3<f32>(x_953.x, x_953.y, x_953.z), vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : f32 = u_xlat34;
  u_xlat34 = clamp(x_958, 0.0f, 1.0f);
  let x_961 : vec4<f32> = x_134.x_MainLightPosition;
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : f32 = u_xlat36;
  u_xlat36 = clamp(x_966, 0.0f, 1.0f);
  let x_968 : f32 = u_xlat34;
  let x_969 : f32 = u_xlat34;
  u_xlat34 = (x_968 * x_969);
  let x_971 : f32 = u_xlat34;
  let x_973 : f32 = u_xlat8.x;
  u_xlat34 = ((x_971 * x_973) + 1.000010014f);
  let x_977 : f32 = u_xlat36;
  let x_978 : f32 = u_xlat36;
  u_xlat36 = (x_977 * x_978);
  let x_980 : f32 = u_xlat34;
  let x_981 : f32 = u_xlat34;
  u_xlat34 = (x_980 * x_981);
  let x_983 : f32 = u_xlat36;
  u_xlat36 = max(x_983, 0.100000001f);
  let x_986 : f32 = u_xlat34;
  let x_987 : f32 = u_xlat36;
  u_xlat34 = (x_986 * x_987);
  let x_989 : f32 = u_xlat27;
  let x_990 : f32 = u_xlat34;
  u_xlat34 = (x_989 * x_990);
  let x_993 : f32 = u_xlat5.x;
  let x_994 : f32 = u_xlat34;
  u_xlat34 = (x_993 / x_994);
  let x_996 : f32 = u_xlat34;
  let x_1000 : vec4<f32> = u_xlat2;
  let x_1002 : vec3<f32> = ((vec3<f32>(x_996, x_996, x_996) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1000.x, x_1000.z, x_1000.w));
  let x_1003 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec3<f32> = u_xlat17;
  let x_1006 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1005 * vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1011 : f32 = x_134.x_AdditionalLightsCount.x;
  let x_1013 : f32 = x_54.unity_LightData.y;
  u_xlat34 = min(x_1011, x_1013);
  let x_1017 : f32 = u_xlat34;
  u_xlatu34 = bitcast<u32>(i32(x_1017));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1029 : u32 = u_xlatu_loop_1;
    let x_1030 : u32 = u_xlatu34;
    if ((x_1029 < x_1030)) {
    } else {
      break;
    }
    let x_1033 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1033 >> 2u);
    let x_1037 : u32 = u_xlatu_loop_1;
    u_xlati16 = bitcast<i32>((x_1037 & 3u));
    let x_1040 : u32 = u_xlatu37;
    let x_1043 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1040)];
    let x_1053 : i32 = u_xlati16;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1058 : vec4<u32> = indexable[x_1053];
    u_xlat37 = dot(x_1043, bitcast<vec4<f32>>(x_1058));
    let x_1062 : f32 = u_xlat37;
    u_xlati37 = i32(x_1062);
    let x_1065 : vec3<f32> = vs_INTERP0;
    let x_1077 : i32 = u_xlati37;
    let x_1079 : vec4<f32> = x_1076.x_AdditionalLightsPosition[x_1077];
    let x_1082 : i32 = u_xlati37;
    let x_1084 : vec4<f32> = x_1076.x_AdditionalLightsPosition[x_1082];
    u_xlat19 = ((-(x_1065) * vec3<f32>(x_1079.w, x_1079.w, x_1079.w)) + vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
    let x_1087 : vec3<f32> = u_xlat19;
    let x_1088 : vec3<f32> = u_xlat19;
    u_xlat16 = dot(x_1087, x_1088);
    let x_1090 : f32 = u_xlat16;
    u_xlat16 = max(x_1090, 6.10351562e-05f);
    let x_1093 : f32 = u_xlat16;
    u_xlat40 = inverseSqrt(x_1093);
    let x_1095 : f32 = u_xlat40;
    let x_1097 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1095, x_1095, x_1095) * x_1097);
    let x_1100 : f32 = u_xlat16;
    u_xlat42 = (1.0f / x_1100);
    let x_1102 : f32 = u_xlat16;
    let x_1103 : i32 = u_xlati37;
    let x_1105 : f32 = x_1076.x_AdditionalLightsAttenuation[x_1103].x;
    u_xlat16 = (x_1102 * x_1105);
    let x_1107 : f32 = u_xlat16;
    let x_1109 : f32 = u_xlat16;
    u_xlat16 = ((-(x_1107) * x_1109) + 1.0f);
    let x_1112 : f32 = u_xlat16;
    u_xlat16 = max(x_1112, 0.0f);
    let x_1114 : f32 = u_xlat16;
    let x_1115 : f32 = u_xlat16;
    u_xlat16 = (x_1114 * x_1115);
    let x_1117 : f32 = u_xlat16;
    let x_1118 : f32 = u_xlat42;
    u_xlat16 = (x_1117 * x_1118);
    let x_1120 : i32 = u_xlati37;
    let x_1122 : vec4<f32> = x_1076.x_AdditionalLightsSpotDir[x_1120];
    let x_1124 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), x_1124);
    let x_1126 : f32 = u_xlat42;
    let x_1127 : i32 = u_xlati37;
    let x_1129 : f32 = x_1076.x_AdditionalLightsAttenuation[x_1127].z;
    let x_1131 : i32 = u_xlati37;
    let x_1133 : f32 = x_1076.x_AdditionalLightsAttenuation[x_1131].w;
    u_xlat42 = ((x_1126 * x_1129) + x_1133);
    let x_1135 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1135, 0.0f, 1.0f);
    let x_1137 : f32 = u_xlat42;
    let x_1138 : f32 = u_xlat42;
    u_xlat42 = (x_1137 * x_1138);
    let x_1140 : f32 = u_xlat16;
    let x_1141 : f32 = u_xlat42;
    u_xlat16 = (x_1140 * x_1141);
    let x_1144 : vec4<f32> = u_xlat6;
    let x_1146 : i32 = u_xlati37;
    let x_1148 : vec4<f32> = x_1076.x_AdditionalLightsColor[x_1146];
    u_xlat10 = (vec3<f32>(x_1144.x, x_1144.x, x_1144.x) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
    let x_1151 : vec4<f32> = u_xlat3;
    let x_1153 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1151.x, x_1151.y, x_1151.z), x_1153);
    let x_1155 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1155, 0.0f, 1.0f);
    let x_1157 : f32 = u_xlat37;
    let x_1158 : f32 = u_xlat16;
    u_xlat37 = (x_1157 * x_1158);
    let x_1160 : f32 = u_xlat37;
    let x_1162 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1160, x_1160, x_1160) * x_1162);
    let x_1164 : vec3<f32> = u_xlat19;
    let x_1165 : f32 = u_xlat40;
    let x_1168 : vec4<f32> = u_xlat4;
    u_xlat19 = ((x_1164 * vec3<f32>(x_1165, x_1165, x_1165)) + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
    let x_1171 : vec3<f32> = u_xlat19;
    let x_1172 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1171, x_1172);
    let x_1174 : f32 = u_xlat37;
    u_xlat37 = max(x_1174, 1.17549435e-37f);
    let x_1176 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1176);
    let x_1178 : f32 = u_xlat37;
    let x_1180 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1178, x_1178, x_1178) * x_1180);
    let x_1182 : vec4<f32> = u_xlat3;
    let x_1184 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(vec3<f32>(x_1182.x, x_1182.y, x_1182.z), x_1184);
    let x_1186 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1186, 0.0f, 1.0f);
    let x_1188 : vec3<f32> = u_xlat9;
    let x_1189 : vec3<f32> = u_xlat19;
    u_xlat16 = dot(x_1188, x_1189);
    let x_1191 : f32 = u_xlat16;
    u_xlat16 = clamp(x_1191, 0.0f, 1.0f);
    let x_1193 : f32 = u_xlat37;
    let x_1194 : f32 = u_xlat37;
    u_xlat37 = (x_1193 * x_1194);
    let x_1196 : f32 = u_xlat37;
    let x_1198 : f32 = u_xlat8.x;
    u_xlat37 = ((x_1196 * x_1198) + 1.000010014f);
    let x_1201 : f32 = u_xlat16;
    let x_1202 : f32 = u_xlat16;
    u_xlat16 = (x_1201 * x_1202);
    let x_1204 : f32 = u_xlat37;
    let x_1205 : f32 = u_xlat37;
    u_xlat37 = (x_1204 * x_1205);
    let x_1207 : f32 = u_xlat16;
    u_xlat16 = max(x_1207, 0.100000001f);
    let x_1209 : f32 = u_xlat37;
    let x_1210 : f32 = u_xlat16;
    u_xlat37 = (x_1209 * x_1210);
    let x_1212 : f32 = u_xlat27;
    let x_1213 : f32 = u_xlat37;
    u_xlat37 = (x_1212 * x_1213);
    let x_1216 : f32 = u_xlat5.x;
    let x_1217 : f32 = u_xlat37;
    u_xlat37 = (x_1216 / x_1217);
    let x_1219 : f32 = u_xlat37;
    let x_1222 : vec4<f32> = u_xlat2;
    u_xlat19 = ((vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1222.x, x_1222.z, x_1222.w));
    let x_1225 : vec3<f32> = u_xlat19;
    let x_1226 : vec3<f32> = u_xlat10;
    let x_1228 : vec4<f32> = u_xlat7;
    let x_1230 : vec3<f32> = ((x_1225 * x_1226) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
    let x_1231 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);

    continuing {
      let x_1233 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1233 + bitcast<u32>(1i));
    }
  }
  let x_1235 : vec3<f32> = u_xlat11;
  let x_1236 : f32 = u_xlat38;
  let x_1239 : vec3<f32> = u_xlat17;
  u_xlat11 = ((x_1235 * vec3<f32>(x_1236, x_1236, x_1236)) + x_1239);
  let x_1241 : vec4<f32> = u_xlat7;
  let x_1243 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_1241.x, x_1241.y, x_1241.z) + x_1243);
  let x_1247 : vec4<f32> = vs_INTERP4;
  let x_1249 : vec3<f32> = u_xlat1;
  let x_1251 : vec3<f32> = u_xlat11;
  let x_1252 : vec3<f32> = ((vec3<f32>(x_1247.w, x_1247.w, x_1247.w) * x_1249) + x_1251);
  let x_1253 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : bool = u_xlatb13;
  let x_1256 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1256, x_1255);
  let x_1264 : u32 = x_134.x_RenderingLayerMaxInt;
  let x_1266 : f32 = x_54.unity_RenderingLayer.x;
  u_xlatu0 = (x_1264 & bitcast<u32>(x_1266));
  let x_1269 : u32 = u_xlatu0;
  u_xlat0 = f32(x_1269);
  let x_1272 : f32 = u_xlat0;
  let x_1274 : f32 = x_134.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1272 * x_1274);
  let x_1278 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1278, 0.0f, 1.0f);
  let x_1281 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1281.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

