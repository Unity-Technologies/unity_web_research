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

@group(1) @binding(2) var<uniform> x_54 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

@group(1) @binding(6) var<uniform> x_144 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_238 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_777 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1211 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1313 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb14 : vec2<bool>;
  var u_xlat14 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb2 : bool;
  var u_xlatb16 : bool;
  var u_xlatb0 : bool;
  var x_357 : f32;
  var u_xlat16 : f32;
  var u_xlat30 : f32;
  var x_403 : f32;
  var u_xlat28 : f32;
  var x_487 : f32;
  var x_500 : f32;
  var x_512 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat33 : f32;
  var u_xlat47 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var x_861 : f32;
  var x_872 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu43 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati19 : i32;
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
  var x_1608 : f32;
  var x_1621 : f32;
  var x_1673 : f32;
  var x_1684 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_44);
  let x_59 : f32 = x_54.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_59 >= 0.0f);
  let x_66 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_66);
  let x_71 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_71);
  let x_75 : f32 = u_xlat14.y;
  let x_77 : f32 = u_xlat14.x;
  u_xlat14.x = (x_75 * x_77);
  let x_81 : vec3<f32> = vs_INTERP1;
  let x_83 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_81.z, x_81.x, x_81.y) * vec3<f32>(x_83.y, x_83.z, x_83.x));
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.y, x_86.z, x_86.x) * vec3<f32>(x_88.z, x_88.x, x_88.y)) + -(x_91));
  let x_94 : vec3<f32> = u_xlat14;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_94.x, x_94.x, x_94.x) * x_96);
  let x_98 : f32 = u_xlat0;
  let x_100 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : f32 = u_xlat0;
  let x_105 : vec4<f32> = vs_INTERP2;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat14;
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
  u_xlat20 = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
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
  let x_197 : vec3<f32> = u_xlat20;
  let x_199 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.y, x_197.y, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec3<f32> = u_xlat20;
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat20;
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
  u_xlat43 = (-(x_299) + 1.0f);
  let x_302 : f32 = u_xlat0;
  let x_304 : f32 = x_238.x_MainLightShadowParams.x;
  let x_306 : f32 = u_xlat43;
  u_xlat0 = ((x_302 * x_304) + x_306);
  let x_310 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_310);
  let x_314 : f32 = u_xlat2.z;
  u_xlatb16 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb16;
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
  u_xlat16 = dpdxCoarse(x_371);
  let x_375 : f32 = u_xlat4.w;
  u_xlat30 = dpdyCoarse(x_375);
  let x_377 : f32 = u_xlat30;
  let x_379 : f32 = u_xlat16;
  u_xlat16 = (abs(x_377) + abs(x_379));
  let x_382 : f32 = u_xlat16;
  u_xlat16 = max(x_382, 0.0001f);
  let x_386 : f32 = u_xlat2.x;
  let x_387 : f32 = u_xlat16;
  u_xlat2.x = (x_386 / x_387);
  let x_391 : f32 = u_xlat2.x;
  u_xlat2.x = (x_391 + 0.5f);
  let x_396 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_396, 0.0f, 1.0f);
  let x_400 : f32 = x_134.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_400 == 0.0f));
  let x_402 : bool = u_xlatb16;
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
  let x_426 : vec3<f32> = u_xlat14;
  let x_427 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_426 * vec3<f32>(x_427.y, x_427.y, x_427.y));
  let x_430 : vec3<f32> = u_xlat20;
  let x_432 : vec4<f32> = vs_INTERP2;
  let x_435 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_430.x, x_430.x, x_430.x) * vec3<f32>(x_432.x, x_432.y, x_432.z)) + x_435);
  let x_437 : vec3<f32> = u_xlat20;
  let x_439 : vec3<f32> = vs_INTERP1;
  let x_441 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_437.z, x_437.z, x_437.z) * x_439) + x_441);
  let x_443 : vec3<f32> = u_xlat14;
  let x_444 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_443, x_444);
  let x_448 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_448);
  let x_451 : vec3<f32> = u_xlat14;
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec3<f32> = (x_451 * vec3<f32>(x_452.x, x_452.x, x_452.x));
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_458 : f32 = x_134.unity_OrthoParams.w;
  u_xlatb14.x = (x_458 == 0.0f);
  let x_461 : vec3<f32> = vs_INTERP0;
  let x_466 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  let x_467 : vec3<f32> = (-(x_461) + x_466);
  let x_468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_467.x, x_468.y, x_467.y, x_467.z);
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_471.x, x_471.z, x_471.w), vec3<f32>(x_473.x, x_473.z, x_473.w));
  let x_476 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_476);
  let x_478 : f32 = u_xlat28;
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec3<f32> = (vec3<f32>(x_478, x_478, x_478) * vec3<f32>(x_480.x, x_480.z, x_480.w));
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_482.x, x_483.y, x_482.y, x_482.z);
  let x_486 : bool = u_xlatb14.x;
  if (x_486) {
    let x_491 : f32 = u_xlat2.x;
    x_487 = x_491;
  } else {
    let x_495 : f32 = x_134.unity_MatrixV[0i].z;
    x_487 = x_495;
  }
  let x_496 : f32 = x_487;
  u_xlat4.x = x_496;
  let x_499 : bool = u_xlatb14.x;
  if (x_499) {
    let x_504 : f32 = u_xlat2.z;
    x_500 = x_504;
  } else {
    let x_507 : f32 = x_134.unity_MatrixV[1i].z;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat4.y = x_508;
  let x_511 : bool = u_xlatb14.x;
  if (x_511) {
    let x_516 : f32 = u_xlat2.w;
    x_512 = x_516;
  } else {
    let x_519 : f32 = x_134.unity_MatrixV[2i].z;
    x_512 = x_519;
  }
  let x_520 : f32 = x_512;
  u_xlat4.z = x_520;
  u_xlat3.w = 1.0f;
  let x_525 : vec4<f32> = x_54.unity_SHAr;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_54.unity_SHAg;
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_54.unity_SHAb;
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_537, x_538);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_542.y, x_542.z, x_542.z, x_542.x) * vec4<f32>(x_544.x, x_544.y, x_544.z, x_544.z));
  let x_550 : vec4<f32> = x_54.unity_SHBr;
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_550, x_551);
  let x_556 : vec4<f32> = x_54.unity_SHBg;
  let x_557 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_556, x_557);
  let x_562 : vec4<f32> = x_54.unity_SHBb;
  let x_563 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_562, x_563);
  let x_567 : f32 = u_xlat3.y;
  let x_569 : f32 = u_xlat3.y;
  u_xlat14.x = (x_567 * x_569);
  let x_573 : f32 = u_xlat3.x;
  let x_575 : f32 = u_xlat3.x;
  let x_578 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_573 * x_575) + -(x_578));
  let x_584 : vec4<f32> = x_54.unity_SHC;
  let x_586 : vec3<f32> = u_xlat14;
  let x_589 : vec3<f32> = u_xlat9;
  u_xlat14 = ((vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_586.x, x_586.x, x_586.x)) + x_589);
  let x_591 : vec3<f32> = u_xlat14;
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_591 + vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_595, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_600 : vec4<f32> = x_134.x_ScaledScreenParams;
  let x_601 : vec2<f32> = vec2<f32>(x_600.x, x_600.y);
  let x_605 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_601.x, x_601.y));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_606.y, x_605.y, x_606.w);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec4<f32> = hlslcc_FragCoord;
  let x_612 : vec2<f32> = (vec2<f32>(x_608.x, x_608.z) * vec2<f32>(x_610.x, x_610.y));
  let x_613 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_616 : f32 = u_xlat7.y;
  let x_619 : f32 = x_134.x_ScaleBiasRt.x;
  let x_622 : f32 = x_134.x_ScaleBiasRt.y;
  u_xlat2.x = ((x_616 * x_619) + x_622);
  let x_626 : f32 = u_xlat2.x;
  u_xlat7.z = (-(x_626) + 1.0f);
  let x_631 : f32 = u_xlat6.x;
  u_xlat6.x = x_631;
  let x_634 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_634, 0.0f, 1.0f);
  let x_637 : f32 = u_xlat0;
  u_xlat0 = min(x_637, 1.0f);
  let x_639 : vec3<f32> = u_xlat5;
  let x_642 : vec3<f32> = (x_639 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_642.z);
  let x_647 : f32 = u_xlat6.x;
  u_xlat45 = (-(x_647) + 1.0f);
  let x_651 : f32 = u_xlat45;
  let x_652 : f32 = u_xlat45;
  u_xlat46 = (x_651 * x_652);
  let x_654 : f32 = u_xlat46;
  u_xlat46 = max(x_654, 0.0078125f);
  let x_657 : f32 = u_xlat46;
  let x_658 : f32 = u_xlat46;
  u_xlat5.x = (x_657 * x_658);
  let x_663 : f32 = u_xlat6.x;
  u_xlat19 = (x_663 + 0.040000021f);
  let x_666 : f32 = u_xlat19;
  u_xlat19 = min(x_666, 1.0f);
  let x_669 : f32 = u_xlat46;
  u_xlat33 = ((x_669 * 4.0f) + 2.0f);
  let x_679 : vec4<f32> = u_xlat7;
  let x_682 : f32 = x_134.x_GlobalMipBias.x;
  let x_683 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_679.x, x_679.z), x_682);
  u_xlat47 = x_683.x;
  let x_685 : f32 = u_xlat47;
  u_xlat6.x = (x_685 + -1.0f);
  let x_690 : f32 = x_134.x_AmbientOcclusionParam.w;
  let x_692 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_690 * x_692) + 1.0f);
  let x_696 : f32 = u_xlat47;
  let x_698 : f32 = vs_INTERP4.w;
  u_xlat47 = min(x_696, x_698);
  let x_702 : vec4<f32> = vs_INTERP9;
  let x_703 : vec2<f32> = vec2<f32>(x_702.x, x_702.y);
  let x_705 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_703.x, x_703.y, x_705);
  let x_712 : vec3<f32> = txVec1;
  let x_714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_712.xy, x_712.z);
  u_xlat20.x = x_714;
  let x_717 : f32 = u_xlat20.x;
  let x_719 : f32 = x_238.x_MainLightShadowParams.x;
  let x_721 : f32 = u_xlat43;
  u_xlat43 = ((x_717 * x_719) + x_721);
  let x_725 : f32 = vs_INTERP9.z;
  u_xlatb20.x = (0.0f >= x_725);
  let x_730 : f32 = vs_INTERP9.z;
  u_xlatb34 = (x_730 >= 1.0f);
  let x_732 : bool = u_xlatb34;
  let x_734 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_732 | x_734);
  let x_738 : bool = u_xlatb20.x;
  let x_739 : f32 = u_xlat43;
  u_xlat43 = select(x_739, 1.0f, x_738);
  let x_741 : vec3<f32> = vs_INTERP0;
  let x_743 : vec3<f32> = x_134.x_WorldSpaceCameraPos;
  u_xlat20 = (x_741 + -(x_743));
  let x_746 : vec3<f32> = u_xlat20;
  let x_747 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_746, x_747);
  let x_751 : f32 = u_xlat20.x;
  let x_753 : f32 = x_238.x_MainLightShadowParams.z;
  let x_756 : f32 = x_238.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_751 * x_753) + x_756);
  let x_760 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_760, 0.0f, 1.0f);
  let x_764 : f32 = u_xlat43;
  u_xlat34 = (-(x_764) + 1.0f);
  let x_768 : f32 = u_xlat20.x;
  let x_769 : f32 = u_xlat34;
  let x_771 : f32 = u_xlat43;
  u_xlat43 = ((x_768 * x_769) + x_771);
  let x_779 : f32 = x_777.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_779 == -1.0f));
  let x_783 : bool = u_xlatb20.x;
  if (x_783) {
    let x_786 : vec3<f32> = vs_INTERP0;
    let x_789 : vec4<f32> = x_777.x_MainLightWorldToLight[1i];
    let x_791 : vec2<f32> = (vec2<f32>(x_786.y, x_786.y) * vec2<f32>(x_789.x, x_789.y));
    let x_792 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_791.x, x_791.y, x_792.z);
    let x_795 : vec4<f32> = x_777.x_MainLightWorldToLight[0i];
    let x_797 : vec3<f32> = vs_INTERP0;
    let x_800 : vec3<f32> = u_xlat20;
    let x_802 : vec2<f32> = ((vec2<f32>(x_795.x, x_795.y) * vec2<f32>(x_797.x, x_797.x)) + vec2<f32>(x_800.x, x_800.y));
    let x_803 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_802.x, x_802.y, x_803.z);
    let x_806 : vec4<f32> = x_777.x_MainLightWorldToLight[2i];
    let x_808 : vec3<f32> = vs_INTERP0;
    let x_811 : vec3<f32> = u_xlat20;
    let x_813 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_808.z, x_808.z)) + vec2<f32>(x_811.x, x_811.y));
    let x_814 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_813.x, x_813.y, x_814.z);
    let x_816 : vec3<f32> = u_xlat20;
    let x_819 : vec4<f32> = x_777.x_MainLightWorldToLight[3i];
    let x_821 : vec2<f32> = (vec2<f32>(x_816.x, x_816.y) + vec2<f32>(x_819.x, x_819.y));
    let x_822 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_821.x, x_821.y, x_822.z);
    let x_824 : vec3<f32> = u_xlat20;
    let x_828 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_829 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_828.x, x_828.y, x_829.z);
    let x_836 : vec3<f32> = u_xlat20;
    let x_839 : f32 = x_134.x_GlobalMipBias.x;
    let x_840 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_836.x, x_836.y), x_839);
    u_xlat7 = x_840;
    let x_842 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_844 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_846 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_848 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_849 : vec4<f32> = vec4<f32>(x_842, x_844, x_846, x_848);
    let x_857 : vec4<bool> = (vec4<f32>(x_849.x, x_849.y, x_849.z, x_849.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_857.x, x_857.y);
    let x_860 : bool = u_xlatb20.y;
    if (x_860) {
      let x_865 : f32 = u_xlat7.w;
      x_861 = x_865;
    } else {
      let x_868 : f32 = u_xlat7.x;
      x_861 = x_868;
    }
    let x_869 : f32 = x_861;
    u_xlat34 = x_869;
    let x_871 : bool = u_xlatb20.x;
    if (x_871) {
      let x_875 : vec4<f32> = u_xlat7;
      x_872 = vec3<f32>(x_875.x, x_875.y, x_875.z);
    } else {
      let x_878 : f32 = u_xlat34;
      x_872 = vec3<f32>(x_878, x_878, x_878);
    }
    let x_880 : vec3<f32> = x_872;
    u_xlat20 = x_880;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_885 : vec3<f32> = u_xlat20;
  let x_887 : vec4<f32> = x_134.x_MainLightColor;
  u_xlat20 = (x_885 * vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec4<f32> = u_xlat6;
  let x_892 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_890.x, x_890.x, x_890.x) * x_892);
  let x_894 : vec4<f32> = u_xlat4;
  let x_897 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(vec3<f32>(x_894.x, x_894.y, x_894.z)), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_902 : f32 = u_xlat7.x;
  let x_904 : f32 = u_xlat7.x;
  u_xlat7.x = (x_902 + x_904);
  let x_907 : vec4<f32> = u_xlat3;
  let x_909 : vec4<f32> = u_xlat7;
  let x_913 : vec4<f32> = u_xlat4;
  let x_916 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.y, x_907.z) * -(vec3<f32>(x_909.x, x_909.x, x_909.x))) + -(vec3<f32>(x_913.x, x_913.y, x_913.z)));
  let x_917 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_920 : vec4<f32> = u_xlat3;
  let x_922 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(vec3<f32>(x_920.x, x_920.y, x_920.z), vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : f32 = u_xlat49;
  u_xlat49 = clamp(x_925, 0.0f, 1.0f);
  let x_927 : f32 = u_xlat49;
  u_xlat49 = (-(x_927) + 1.0f);
  let x_930 : f32 = u_xlat49;
  let x_931 : f32 = u_xlat49;
  u_xlat49 = (x_930 * x_931);
  let x_933 : f32 = u_xlat49;
  let x_934 : f32 = u_xlat49;
  u_xlat49 = (x_933 * x_934);
  let x_936 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_936) * 0.699999988f) + 1.700000048f);
  let x_943 : f32 = u_xlat45;
  let x_945 : f32 = u_xlat8.x;
  u_xlat45 = (x_943 * x_945);
  let x_947 : f32 = u_xlat45;
  u_xlat45 = (x_947 * 6.0f);
  let x_958 : vec4<f32> = u_xlat7;
  let x_960 : f32 = u_xlat45;
  let x_961 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_958.x, x_958.y, x_958.z), x_960);
  u_xlat8 = x_961;
  let x_963 : f32 = u_xlat8.w;
  u_xlat45 = (x_963 + -1.0f);
  let x_966 : f32 = x_54.unity_SpecCube0_HDR.w;
  let x_967 : f32 = u_xlat45;
  u_xlat45 = ((x_966 * x_967) + 1.0f);
  let x_970 : f32 = u_xlat45;
  u_xlat45 = max(x_970, 0.0f);
  let x_972 : f32 = u_xlat45;
  u_xlat45 = log2(x_972);
  let x_974 : f32 = u_xlat45;
  let x_976 : f32 = x_54.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_974 * x_976);
  let x_978 : f32 = u_xlat45;
  u_xlat45 = exp2(x_978);
  let x_980 : f32 = u_xlat45;
  let x_982 : f32 = x_54.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_980 * x_982);
  let x_984 : vec4<f32> = u_xlat8;
  let x_986 : f32 = u_xlat45;
  let x_988 : vec3<f32> = (vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986, x_986, x_986));
  let x_989 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : f32 = u_xlat46;
  let x_993 : f32 = u_xlat46;
  let x_997 : vec2<f32> = ((vec2<f32>(x_991, x_991) * vec2<f32>(x_993, x_993)) + vec2<f32>(-1.0f, 1.0f));
  let x_998 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
  let x_1001 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1001);
  let x_1003 : f32 = u_xlat19;
  u_xlat46 = (x_1003 + -0.039999999f);
  let x_1006 : f32 = u_xlat49;
  let x_1007 : f32 = u_xlat46;
  u_xlat46 = ((x_1006 * x_1007) + 0.039999999f);
  let x_1011 : f32 = u_xlat45;
  let x_1012 : f32 = u_xlat46;
  u_xlat45 = (x_1011 * x_1012);
  let x_1014 : f32 = u_xlat45;
  let x_1016 : vec4<f32> = u_xlat7;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1014, x_1014, x_1014) * vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec3<f32> = u_xlat14;
  let x_1022 : vec4<f32> = u_xlat2;
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_1021 * vec3<f32>(x_1022.x, x_1022.z, x_1022.w)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : f32 = u_xlat43;
  let x_1030 : f32 = x_54.unity_LightData.z;
  u_xlat43 = (x_1028 * x_1030);
  let x_1032 : vec4<f32> = u_xlat3;
  let x_1035 : vec4<f32> = x_134.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1038, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat43;
  let x_1041 : f32 = u_xlat45;
  u_xlat43 = (x_1040 * x_1041);
  let x_1043 : f32 = u_xlat43;
  let x_1045 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1043, x_1043, x_1043) * x_1045);
  let x_1047 : vec4<f32> = u_xlat4;
  let x_1050 : vec4<f32> = x_134.x_MainLightPosition;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) + vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat7;
  let x_1057 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : f32 = u_xlat43;
  u_xlat43 = max(x_1060, 1.17549435e-37f);
  let x_1062 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1062);
  let x_1064 : f32 = u_xlat43;
  let x_1066 : vec4<f32> = u_xlat7;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1064, x_1064, x_1064) * vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat3;
  let x_1073 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1076, 0.0f, 1.0f);
  let x_1079 : vec4<f32> = x_134.x_MainLightPosition;
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1084, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat43;
  let x_1087 : f32 = u_xlat43;
  u_xlat43 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat43;
  let x_1091 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1089 * x_1091) + 1.000010014f);
  let x_1095 : f32 = u_xlat45;
  let x_1096 : f32 = u_xlat45;
  u_xlat45 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat43;
  let x_1099 : f32 = u_xlat43;
  u_xlat43 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat45;
  u_xlat45 = max(x_1101, 0.100000001f);
  let x_1104 : f32 = u_xlat43;
  let x_1105 : f32 = u_xlat45;
  u_xlat43 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat33;
  let x_1108 : f32 = u_xlat43;
  u_xlat43 = (x_1107 * x_1108);
  let x_1111 : f32 = u_xlat5.x;
  let x_1112 : f32 = u_xlat43;
  u_xlat43 = (x_1111 / x_1112);
  let x_1114 : f32 = u_xlat43;
  let x_1118 : vec4<f32> = u_xlat2;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1114, x_1114, x_1114) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1118.x, x_1118.z, x_1118.w));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec3<f32> = u_xlat20;
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1123 * vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1129 : f32 = x_134.x_AdditionalLightsCount.x;
  let x_1131 : f32 = x_54.unity_LightData.y;
  u_xlat43 = min(x_1129, x_1131);
  let x_1135 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1135));
  let x_1140 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1142 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1144 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1146 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1147 : vec4<f32> = vec4<f32>(x_1140, x_1142, x_1144, x_1146);
  let x_1153 : vec4<bool> = (vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1147.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1153.x, x_1153.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1165 : u32 = u_xlatu_loop_1;
    let x_1166 : u32 = u_xlatu43;
    if ((x_1165 < x_1166)) {
    } else {
      break;
    }
    let x_1169 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1169 >> 2u);
    let x_1173 : u32 = u_xlatu_loop_1;
    u_xlati19 = bitcast<i32>((x_1173 & 3u));
    let x_1176 : u32 = u_xlatu46;
    let x_1179 : vec4<f32> = x_54.unity_LightIndices[bitcast<i32>(x_1176)];
    let x_1189 : i32 = u_xlati19;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1194 : vec4<u32> = indexable[x_1189];
    u_xlat46 = dot(x_1179, bitcast<vec4<f32>>(x_1194));
    let x_1197 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1197));
    let x_1200 : vec3<f32> = vs_INTERP0;
    let x_1212 : u32 = u_xlatu46;
    let x_1215 : vec4<f32> = x_1211.x_AdditionalLightsPosition[bitcast<i32>(x_1212)];
    let x_1218 : u32 = u_xlatu46;
    let x_1221 : vec4<f32> = x_1211.x_AdditionalLightsPosition[bitcast<i32>(x_1218)];
    u_xlat9 = ((-(x_1200) * vec3<f32>(x_1215.w, x_1215.w, x_1215.w)) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
    let x_1224 : vec3<f32> = u_xlat9;
    let x_1225 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_1224, x_1225);
    let x_1227 : f32 = u_xlat19;
    u_xlat19 = max(x_1227, 6.10351562e-05f);
    let x_1231 : f32 = u_xlat19;
    u_xlat35 = inverseSqrt(x_1231);
    let x_1234 : f32 = u_xlat35;
    let x_1236 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1234, x_1234, x_1234) * x_1236);
    let x_1238 : f32 = u_xlat19;
    u_xlat49 = (1.0f / x_1238);
    let x_1240 : f32 = u_xlat19;
    let x_1241 : u32 = u_xlatu46;
    let x_1244 : f32 = x_1211.x_AdditionalLightsAttenuation[bitcast<i32>(x_1241)].x;
    u_xlat19 = (x_1240 * x_1244);
    let x_1246 : f32 = u_xlat19;
    let x_1248 : f32 = u_xlat19;
    u_xlat19 = ((-(x_1246) * x_1248) + 1.0f);
    let x_1251 : f32 = u_xlat19;
    u_xlat19 = max(x_1251, 0.0f);
    let x_1253 : f32 = u_xlat19;
    let x_1254 : f32 = u_xlat19;
    u_xlat19 = (x_1253 * x_1254);
    let x_1256 : f32 = u_xlat19;
    let x_1257 : f32 = u_xlat49;
    u_xlat19 = (x_1256 * x_1257);
    let x_1259 : u32 = u_xlatu46;
    let x_1262 : vec4<f32> = x_1211.x_AdditionalLightsSpotDir[bitcast<i32>(x_1259)];
    let x_1264 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), x_1264);
    let x_1266 : f32 = u_xlat49;
    let x_1267 : u32 = u_xlatu46;
    let x_1270 : f32 = x_1211.x_AdditionalLightsAttenuation[bitcast<i32>(x_1267)].z;
    let x_1272 : u32 = u_xlatu46;
    let x_1275 : f32 = x_1211.x_AdditionalLightsAttenuation[bitcast<i32>(x_1272)].w;
    u_xlat49 = ((x_1266 * x_1270) + x_1275);
    let x_1277 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1277, 0.0f, 1.0f);
    let x_1279 : f32 = u_xlat49;
    let x_1280 : f32 = u_xlat49;
    u_xlat49 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat19;
    let x_1283 : f32 = u_xlat49;
    u_xlat19 = (x_1282 * x_1283);
    let x_1286 : u32 = u_xlatu46;
    u_xlatu49 = (x_1286 >> 5u);
    let x_1289 : u32 = u_xlatu46;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1289) & 31i)));
    let x_1295 : i32 = u_xlati51;
    let x_1297 : u32 = u_xlatu49;
    let x_1300 : f32 = x_777.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1297)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1295) & bitcast<u32>(x_1300)));
    let x_1304 : i32 = u_xlati49;
    if ((x_1304 != 0i)) {
      let x_1314 : u32 = u_xlatu46;
      let x_1317 : f32 = x_1313.x_AdditionalLightsLightTypes[bitcast<i32>(x_1314)].el;
      u_xlati49 = i32(x_1317);
      let x_1319 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1319 != 0i));
      let x_1323 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_1323) << bitcast<u32>(2i));
      let x_1326 : i32 = u_xlati51;
      if ((x_1326 != 0i)) {
        let x_1331 : vec3<f32> = vs_INTERP0;
        let x_1333 : i32 = u_xlati52;
        let x_1336 : i32 = u_xlati52;
        let x_1340 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1333 + 1i) / 4i)][((x_1336 + 1i) % 4i)];
        let x_1342 : vec3<f32> = (vec3<f32>(x_1331.y, x_1331.y, x_1331.y) * vec3<f32>(x_1340.x, x_1340.y, x_1340.w));
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
        let x_1345 : i32 = u_xlati52;
        let x_1347 : i32 = u_xlati52;
        let x_1350 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[(x_1345 / 4i)][(x_1347 % 4i)];
        let x_1352 : vec3<f32> = vs_INTERP0;
        let x_1355 : vec4<f32> = u_xlat11;
        let x_1357 : vec3<f32> = ((vec3<f32>(x_1350.x, x_1350.y, x_1350.w) * vec3<f32>(x_1352.x, x_1352.x, x_1352.x)) + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
        let x_1360 : i32 = u_xlati52;
        let x_1363 : i32 = u_xlati52;
        let x_1367 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1360 + 2i) / 4i)][((x_1363 + 2i) % 4i)];
        let x_1369 : vec3<f32> = vs_INTERP0;
        let x_1372 : vec4<f32> = u_xlat11;
        let x_1374 : vec3<f32> = ((vec3<f32>(x_1367.x, x_1367.y, x_1367.w) * vec3<f32>(x_1369.z, x_1369.z, x_1369.z)) + vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
        let x_1377 : vec4<f32> = u_xlat11;
        let x_1379 : i32 = u_xlati52;
        let x_1382 : i32 = u_xlati52;
        let x_1386 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1379 + 3i) / 4i)][((x_1382 + 3i) % 4i)];
        let x_1388 : vec3<f32> = (vec3<f32>(x_1377.x, x_1377.y, x_1377.z) + vec3<f32>(x_1386.x, x_1386.y, x_1386.w));
        let x_1389 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
        let x_1391 : vec4<f32> = u_xlat11;
        let x_1393 : vec4<f32> = u_xlat11;
        let x_1395 : vec2<f32> = (vec2<f32>(x_1391.x, x_1391.y) / vec2<f32>(x_1393.z, x_1393.z));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat11;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1404 : vec4<f32> = u_xlat11;
        let x_1408 : vec2<f32> = clamp(vec2<f32>(x_1404.x, x_1404.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1409 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1408.x, x_1408.y, x_1409.z, x_1409.w);
        let x_1411 : u32 = u_xlatu46;
        let x_1414 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1411)];
        let x_1416 : vec4<f32> = u_xlat11;
        let x_1419 : u32 = u_xlatu46;
        let x_1422 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1419)];
        let x_1424 : vec2<f32> = ((vec2<f32>(x_1414.x, x_1414.y) * vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1422.z, x_1422.w));
        let x_1425 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1424.x, x_1424.y, x_1425.z, x_1425.w);
      } else {
        let x_1429 : i32 = u_xlati49;
        u_xlatb49 = (x_1429 == 1i);
        let x_1431 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1431);
        let x_1433 : i32 = u_xlati49;
        if ((x_1433 != 0i)) {
          let x_1439 : vec3<f32> = vs_INTERP0;
          let x_1441 : i32 = u_xlati52;
          let x_1444 : i32 = u_xlati52;
          let x_1448 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1441 + 1i) / 4i)][((x_1444 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(x_1448.x, x_1448.y));
          let x_1451 : i32 = u_xlati52;
          let x_1453 : i32 = u_xlati52;
          let x_1456 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[(x_1451 / 4i)][(x_1453 % 4i)];
          let x_1458 : vec3<f32> = vs_INTERP0;
          let x_1461 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1458.x, x_1458.x)) + x_1461);
          let x_1463 : i32 = u_xlati52;
          let x_1466 : i32 = u_xlati52;
          let x_1470 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1463 + 2i) / 4i)][((x_1466 + 2i) % 4i)];
          let x_1472 : vec3<f32> = vs_INTERP0;
          let x_1475 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1472.z, x_1472.z)) + x_1475);
          let x_1477 : vec2<f32> = u_xlat39;
          let x_1478 : i32 = u_xlati52;
          let x_1481 : i32 = u_xlati52;
          let x_1485 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1478 + 3i) / 4i)][((x_1481 + 3i) % 4i)];
          u_xlat39 = (x_1477 + vec2<f32>(x_1485.x, x_1485.y));
          let x_1488 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1488 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1491 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1491);
          let x_1493 : u32 = u_xlatu46;
          let x_1496 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1493)];
          let x_1498 : vec2<f32> = u_xlat39;
          let x_1500 : u32 = u_xlatu46;
          let x_1503 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1500)];
          let x_1505 : vec2<f32> = ((vec2<f32>(x_1496.x, x_1496.y) * x_1498) + vec2<f32>(x_1503.z, x_1503.w));
          let x_1506 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1505.x, x_1505.y, x_1506.z, x_1506.w);
        } else {
          let x_1510 : vec3<f32> = vs_INTERP0;
          let x_1512 : i32 = u_xlati52;
          let x_1515 : i32 = u_xlati52;
          let x_1519 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1512 + 1i) / 4i)][((x_1515 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1510.y, x_1510.y, x_1510.y, x_1510.y) * x_1519);
          let x_1521 : i32 = u_xlati52;
          let x_1523 : i32 = u_xlati52;
          let x_1526 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[(x_1521 / 4i)][(x_1523 % 4i)];
          let x_1527 : vec3<f32> = vs_INTERP0;
          let x_1530 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1526 * vec4<f32>(x_1527.x, x_1527.x, x_1527.x, x_1527.x)) + x_1530);
          let x_1532 : i32 = u_xlati52;
          let x_1535 : i32 = u_xlati52;
          let x_1539 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1532 + 2i) / 4i)][((x_1535 + 2i) % 4i)];
          let x_1540 : vec3<f32> = vs_INTERP0;
          let x_1543 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1539 * vec4<f32>(x_1540.z, x_1540.z, x_1540.z, x_1540.z)) + x_1543);
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1546 : i32 = u_xlati52;
          let x_1549 : i32 = u_xlati52;
          let x_1553 : vec4<f32> = x_1313.x_AdditionalLightsWorldToLights[((x_1546 + 3i) / 4i)][((x_1549 + 3i) % 4i)];
          u_xlat12 = (x_1545 + x_1553);
          let x_1555 : vec4<f32> = u_xlat12;
          let x_1557 : vec4<f32> = u_xlat12;
          let x_1559 : vec3<f32> = (vec3<f32>(x_1555.x, x_1555.y, x_1555.z) / vec3<f32>(x_1557.w, x_1557.w, x_1557.w));
          let x_1560 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
          let x_1562 : vec4<f32> = u_xlat12;
          let x_1564 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1562.x, x_1562.y, x_1562.z), vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
          let x_1567 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1567);
          let x_1569 : f32 = u_xlat49;
          let x_1571 : vec4<f32> = u_xlat12;
          let x_1573 : vec3<f32> = (vec3<f32>(x_1569, x_1569, x_1569) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
          let x_1574 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
          let x_1576 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1576.x, x_1576.y, x_1576.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1581 : f32 = u_xlat49;
          u_xlat49 = max(x_1581, 0.000001f);
          let x_1584 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1584);
          let x_1587 : f32 = u_xlat49;
          let x_1589 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1587, x_1587, x_1587) * vec3<f32>(x_1589.z, x_1589.x, x_1589.y));
          let x_1593 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1593);
          let x_1597 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1597, 0.0f, 1.0f);
          let x_1601 : vec3<f32> = u_xlat13;
          let x_1604 : vec4<bool> = (vec4<f32>(x_1601.y, x_1601.z, x_1601.y, x_1601.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1604.x, x_1604.y);
          let x_1607 : bool = u_xlatb39.x;
          if (x_1607) {
            let x_1612 : f32 = u_xlat13.x;
            x_1608 = x_1612;
          } else {
            let x_1615 : f32 = u_xlat13.x;
            x_1608 = -(x_1615);
          }
          let x_1617 : f32 = x_1608;
          u_xlat39.x = x_1617;
          let x_1620 : bool = u_xlatb39.y;
          if (x_1620) {
            let x_1625 : f32 = u_xlat13.x;
            x_1621 = x_1625;
          } else {
            let x_1628 : f32 = u_xlat13.x;
            x_1621 = -(x_1628);
          }
          let x_1630 : f32 = x_1621;
          u_xlat39.y = x_1630;
          let x_1632 : vec4<f32> = u_xlat12;
          let x_1634 : f32 = u_xlat49;
          let x_1637 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(x_1634, x_1634)) + x_1637);
          let x_1639 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1639 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1642 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1642, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1646 : u32 = u_xlatu46;
          let x_1649 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1646)];
          let x_1651 : vec2<f32> = u_xlat39;
          let x_1653 : u32 = u_xlatu46;
          let x_1656 : vec4<f32> = x_1313.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1653)];
          let x_1658 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * x_1651) + vec2<f32>(x_1656.z, x_1656.w));
          let x_1659 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1658.x, x_1658.y, x_1659.z, x_1659.w);
        }
      }
      let x_1666 : vec4<f32> = u_xlat11;
      let x_1669 : f32 = x_134.x_GlobalMipBias.x;
      let x_1670 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1666.x, x_1666.y), x_1669);
      u_xlat11 = x_1670;
      let x_1672 : bool = u_xlatb7.y;
      if (x_1672) {
        let x_1677 : f32 = u_xlat11.w;
        x_1673 = x_1677;
      } else {
        let x_1680 : f32 = u_xlat11.x;
        x_1673 = x_1680;
      }
      let x_1681 : f32 = x_1673;
      u_xlat49 = x_1681;
      let x_1683 : bool = u_xlatb7.x;
      if (x_1683) {
        let x_1687 : vec4<f32> = u_xlat11;
        x_1684 = vec3<f32>(x_1687.x, x_1687.y, x_1687.z);
      } else {
        let x_1690 : f32 = u_xlat49;
        x_1684 = vec3<f32>(x_1690, x_1690, x_1690);
      }
      let x_1692 : vec3<f32> = x_1684;
      let x_1693 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1699 : vec4<f32> = u_xlat11;
    let x_1701 : u32 = u_xlatu46;
    let x_1704 : vec4<f32> = x_1211.x_AdditionalLightsColor[bitcast<i32>(x_1701)];
    let x_1706 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.y, x_1699.z) * vec3<f32>(x_1704.x, x_1704.y, x_1704.z));
    let x_1707 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
    let x_1709 : vec4<f32> = u_xlat6;
    let x_1711 : vec4<f32> = u_xlat11;
    let x_1713 : vec3<f32> = (vec3<f32>(x_1709.x, x_1709.x, x_1709.x) * vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1714 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
    let x_1716 : vec4<f32> = u_xlat3;
    let x_1718 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1716.x, x_1716.y, x_1716.z), x_1718);
    let x_1720 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1720, 0.0f, 1.0f);
    let x_1722 : f32 = u_xlat46;
    let x_1723 : f32 = u_xlat19;
    u_xlat46 = (x_1722 * x_1723);
    let x_1725 : f32 = u_xlat46;
    let x_1727 : vec4<f32> = u_xlat11;
    let x_1729 : vec3<f32> = (vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
    let x_1730 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
    let x_1732 : vec3<f32> = u_xlat9;
    let x_1733 : f32 = u_xlat35;
    let x_1736 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_1732 * vec3<f32>(x_1733, x_1733, x_1733)) + vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
    let x_1739 : vec3<f32> = u_xlat9;
    let x_1740 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1739, x_1740);
    let x_1742 : f32 = u_xlat46;
    u_xlat46 = max(x_1742, 1.17549435e-37f);
    let x_1744 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1744);
    let x_1746 : f32 = u_xlat46;
    let x_1748 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1746, x_1746, x_1746) * x_1748);
    let x_1750 : vec4<f32> = u_xlat3;
    let x_1752 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1750.x, x_1750.y, x_1750.z), x_1752);
    let x_1754 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1754, 0.0f, 1.0f);
    let x_1756 : vec3<f32> = u_xlat10;
    let x_1757 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_1756, x_1757);
    let x_1759 : f32 = u_xlat19;
    u_xlat19 = clamp(x_1759, 0.0f, 1.0f);
    let x_1761 : f32 = u_xlat46;
    let x_1762 : f32 = u_xlat46;
    u_xlat46 = (x_1761 * x_1762);
    let x_1764 : f32 = u_xlat46;
    let x_1766 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1764 * x_1766) + 1.000010014f);
    let x_1769 : f32 = u_xlat19;
    let x_1770 : f32 = u_xlat19;
    u_xlat19 = (x_1769 * x_1770);
    let x_1772 : f32 = u_xlat46;
    let x_1773 : f32 = u_xlat46;
    u_xlat46 = (x_1772 * x_1773);
    let x_1775 : f32 = u_xlat19;
    u_xlat19 = max(x_1775, 0.100000001f);
    let x_1777 : f32 = u_xlat46;
    let x_1778 : f32 = u_xlat19;
    u_xlat46 = (x_1777 * x_1778);
    let x_1780 : f32 = u_xlat33;
    let x_1781 : f32 = u_xlat46;
    u_xlat46 = (x_1780 * x_1781);
    let x_1784 : f32 = u_xlat5.x;
    let x_1785 : f32 = u_xlat46;
    u_xlat46 = (x_1784 / x_1785);
    let x_1787 : f32 = u_xlat46;
    let x_1790 : vec4<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_1787, x_1787, x_1787) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1790.x, x_1790.z, x_1790.w));
    let x_1793 : vec3<f32> = u_xlat9;
    let x_1794 : vec4<f32> = u_xlat11;
    let x_1797 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1793 * vec3<f32>(x_1794.x, x_1794.y, x_1794.z)) + x_1797);

    continuing {
      let x_1799 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1799 + bitcast<u32>(1i));
    }
  }
  let x_1801 : vec3<f32> = u_xlat14;
  let x_1802 : f32 = u_xlat47;
  let x_1805 : vec3<f32> = u_xlat20;
  u_xlat14 = ((x_1801 * vec3<f32>(x_1802, x_1802, x_1802)) + x_1805);
  let x_1807 : vec3<f32> = u_xlat22;
  let x_1808 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_1807 + x_1808);
  let x_1812 : vec4<f32> = vs_INTERP4;
  let x_1814 : vec3<f32> = u_xlat1;
  let x_1816 : vec3<f32> = u_xlat14;
  let x_1817 : vec3<f32> = ((vec3<f32>(x_1812.w, x_1812.w, x_1812.w) * x_1814) + x_1816);
  let x_1818 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : bool = u_xlatb16;
  let x_1821 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1821, x_1820);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

