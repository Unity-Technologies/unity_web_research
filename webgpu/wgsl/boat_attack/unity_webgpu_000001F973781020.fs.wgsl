diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb29 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat29 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat30 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(3) var<uniform> x_711 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(4) var<uniform> x_776 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1242 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_861 : f32;
  var x_872 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1374 : f32;
  var x_1383 : f32;
  var txVec1 : vec3<f32>;
  var x_1805 : f32;
  var x_1818 : f32;
  var x_1866 : f32;
  var x_1877 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb14 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat14;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb14 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat28 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat28;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat14 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat15.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat28;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat28 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat28;
  u_xlatb42 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat28;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat15.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat28;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat28 = x_207;
  let x_208 : bool = u_xlatb42;
  if (x_208) {
    let x_213 : f32 = u_xlat15.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat28;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat28 = x_216;
  let x_217 : f32 = u_xlat28;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat14;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat42;
  u_xlat42 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat42;
  u_xlat42 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_319);
  let x_321 : f32 = u_xlat42;
  u_xlat42 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat29.y;
  let x_367 : f32 = u_xlat29.x;
  u_xlat29.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat15;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat42;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat42;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb42 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat44;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb42;
  if (x_476) {
    let x_481 : vec4<f32> = u_xlat3;
    x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  } else {
    let x_484 : vec3<f32> = u_xlat4;
    x_478 = x_484;
  }
  let x_485 : vec3<f32> = x_478;
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = vs_INTERP7.y;
  let x_491 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat42 = (x_489 * x_491);
  let x_494 : f32 = x_29.unity_MatrixV[0i].z;
  let x_496 : f32 = vs_INTERP7.x;
  let x_498 : f32 = u_xlat42;
  u_xlat42 = ((x_494 * x_496) + x_498);
  let x_501 : f32 = x_29.unity_MatrixV[2i].z;
  let x_503 : f32 = vs_INTERP7.z;
  let x_505 : f32 = u_xlat42;
  u_xlat42 = ((x_501 * x_503) + x_505);
  let x_507 : f32 = u_xlat42;
  let x_509 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat42 = (x_507 + x_509);
  let x_511 : f32 = u_xlat42;
  let x_515 : f32 = x_29.x_ProjectionParams.y;
  u_xlat42 = (-(x_511) + -(x_515));
  let x_518 : f32 = u_xlat42;
  u_xlat42 = max(x_518, 0.0f);
  let x_520 : f32 = u_xlat42;
  let x_523 : f32 = x_29.unity_FogParams.x;
  u_xlat42 = (x_520 * x_523);
  u_xlat1.w = 1.0f;
  let x_529 : vec4<f32> = x_349.unity_SHAr;
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHAg;
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHAb;
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_541, x_542);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_546.y, x_546.z, x_546.z, x_546.x) * vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.z));
  let x_554 : vec4<f32> = x_349.unity_SHBr;
  let x_555 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_554, x_555);
  let x_560 : vec4<f32> = x_349.unity_SHBg;
  let x_561 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_560, x_561);
  let x_566 : vec4<f32> = x_349.unity_SHBb;
  let x_567 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_566, x_567);
  let x_572 : f32 = u_xlat1.y;
  let x_574 : f32 = u_xlat1.y;
  u_xlat43 = (x_572 * x_574);
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat43;
  u_xlat43 = ((x_577 * x_579) + -(x_581));
  let x_586 : vec4<f32> = x_349.unity_SHC;
  let x_588 : f32 = u_xlat43;
  let x_591 : vec4<f32> = u_xlat6;
  let x_593 : vec3<f32> = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588, x_588, x_588)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_596 + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_600, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_603 : vec4<f32> = u_xlat2;
  let x_604 : vec2<f32> = vec2<f32>(x_603.x, x_603.y);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat2;
  let x_611 : vec2<f32> = clamp(vec2<f32>(x_607.x, x_607.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_612 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
  let x_615 : f32 = u_xlat2.x;
  u_xlat43 = ((-(x_615) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_620 : f32 = u_xlat43;
  let x_623 : f32 = u_xlat2.y;
  u_xlat44 = (-(x_620) + x_623);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : f32 = u_xlat43;
  let x_629 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(x_627, x_627, x_627));
  let x_630 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat0;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat2;
  let x_641 : vec4<f32> = u_xlat0;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.x, x_639.x) * vec3<f32>(x_641.x, x_641.y, x_641.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_650 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat43;
  let x_654 : f32 = u_xlat43;
  u_xlat2.x = (x_653 * x_654);
  let x_658 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_658, 0.0078125f);
  let x_664 : f32 = u_xlat2.x;
  let x_666 : f32 = u_xlat2.x;
  u_xlat16 = (x_664 * x_666);
  let x_668 : f32 = u_xlat44;
  u_xlat44 = (x_668 + 1.0f);
  let x_670 : f32 = u_xlat44;
  u_xlat44 = min(x_670, 1.0f);
  let x_674 : f32 = u_xlat2.x;
  u_xlat45 = ((x_674 * 4.0f) + 2.0f);
  let x_680 : f32 = u_xlat2.z;
  u_xlat30 = min(x_680, 1.0f);
  let x_684 : vec4<f32> = vs_INTERP3;
  let x_685 : vec2<f32> = vec2<f32>(x_684.x, x_684.y);
  let x_687 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_685.x, x_685.y, x_687);
  let x_700 : vec3<f32> = txVec0;
  let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
  u_xlat46 = x_702;
  let x_714 : f32 = x_711.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_714) + 1.0f);
  let x_717 : f32 = u_xlat46;
  let x_719 : f32 = x_711.x_MainLightShadowParams.x;
  let x_721 : f32 = u_xlat47;
  u_xlat46 = ((x_717 * x_719) + x_721);
  let x_725 : f32 = vs_INTERP3.z;
  u_xlatb47 = (0.0f >= x_725);
  let x_729 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_729 >= 1.0f);
  let x_731 : bool = u_xlatb47;
  let x_732 : bool = u_xlatb6;
  u_xlatb47 = (x_731 | x_732);
  let x_734 : bool = u_xlatb47;
  let x_735 : f32 = u_xlat46;
  u_xlat46 = select(x_735, 1.0f, x_734);
  let x_737 : vec3<f32> = vs_INTERP7;
  let x_739 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_741 : vec3<f32> = (x_737 + -(x_739));
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat6;
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_744.x, x_744.y, x_744.z), vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : f32 = u_xlat47;
  let x_751 : f32 = x_711.x_MainLightShadowParams.z;
  let x_754 : f32 = x_711.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_749 * x_751) + x_754);
  let x_758 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_758, 0.0f, 1.0f);
  let x_762 : f32 = u_xlat46;
  u_xlat20 = (-(x_762) + 1.0f);
  let x_766 : f32 = u_xlat6.x;
  let x_767 : f32 = u_xlat20;
  let x_769 : f32 = u_xlat46;
  u_xlat46 = ((x_766 * x_767) + x_769);
  let x_778 : f32 = x_776.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_778 == -1.0f));
  let x_780 : bool = u_xlatb6;
  if (x_780) {
    let x_783 : vec3<f32> = vs_INTERP7;
    let x_786 : vec4<f32> = x_776.x_MainLightWorldToLight[1i];
    let x_788 : vec2<f32> = (vec2<f32>(x_783.y, x_783.y) * vec2<f32>(x_786.x, x_786.y));
    let x_789 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
    let x_792 : vec4<f32> = x_776.x_MainLightWorldToLight[0i];
    let x_794 : vec3<f32> = vs_INTERP7;
    let x_797 : vec4<f32> = u_xlat6;
    let x_799 : vec2<f32> = ((vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_794.x, x_794.x)) + vec2<f32>(x_797.x, x_797.y));
    let x_800 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
    let x_803 : vec4<f32> = x_776.x_MainLightWorldToLight[2i];
    let x_805 : vec3<f32> = vs_INTERP7;
    let x_808 : vec4<f32> = u_xlat6;
    let x_810 : vec2<f32> = ((vec2<f32>(x_803.x, x_803.y) * vec2<f32>(x_805.z, x_805.z)) + vec2<f32>(x_808.x, x_808.y));
    let x_811 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
    let x_813 : vec4<f32> = u_xlat6;
    let x_816 : vec4<f32> = x_776.x_MainLightWorldToLight[3i];
    let x_818 : vec2<f32> = (vec2<f32>(x_813.x, x_813.y) + vec2<f32>(x_816.x, x_816.y));
    let x_819 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
    let x_821 : vec4<f32> = u_xlat6;
    let x_826 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_827 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
    let x_834 : vec4<f32> = u_xlat6;
    let x_837 : f32 = x_29.x_GlobalMipBias.x;
    let x_838 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_834.x, x_834.y), x_837);
    u_xlat6 = x_838;
    let x_841 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_843 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_845 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_847 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_848 : vec4<f32> = vec4<f32>(x_841, x_843, x_845, x_847);
    let x_856 : vec4<bool> = (vec4<f32>(x_848.x, x_848.y, x_848.z, x_848.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_856.x, x_856.y);
    let x_860 : bool = u_xlatb7.y;
    if (x_860) {
      let x_865 : f32 = u_xlat6.w;
      x_861 = x_865;
    } else {
      let x_868 : f32 = u_xlat6.x;
      x_861 = x_868;
    }
    let x_869 : f32 = x_861;
    u_xlat48 = x_869;
    let x_871 : bool = u_xlatb7.x;
    if (x_871) {
      let x_875 : vec4<f32> = u_xlat6;
      x_872 = vec3<f32>(x_875.x, x_875.y, x_875.z);
    } else {
      let x_878 : f32 = u_xlat48;
      x_872 = vec3<f32>(x_878, x_878, x_878);
    }
    let x_880 : vec3<f32> = x_872;
    let x_881 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_887 : vec4<f32> = u_xlat6;
  let x_890 : vec4<f32> = x_29.x_MainLightColor;
  let x_892 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat3;
  let x_898 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_895.x, x_895.y, x_895.z)), vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : f32 = u_xlat48;
  let x_902 : f32 = u_xlat48;
  u_xlat48 = (x_901 + x_902);
  let x_905 : vec4<f32> = u_xlat1;
  let x_907 : f32 = u_xlat48;
  let x_911 : vec4<f32> = u_xlat3;
  let x_914 : vec3<f32> = ((vec3<f32>(x_905.x, x_905.y, x_905.z) * -(vec3<f32>(x_907, x_907, x_907))) + -(vec3<f32>(x_911.x, x_911.y, x_911.z)));
  let x_915 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat1;
  let x_919 : vec4<f32> = u_xlat3;
  u_xlat48 = dot(vec3<f32>(x_917.x, x_917.y, x_917.z), vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : f32 = u_xlat48;
  u_xlat48 = clamp(x_922, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat48;
  u_xlat48 = (-(x_924) + 1.0f);
  let x_927 : f32 = u_xlat48;
  let x_928 : f32 = u_xlat48;
  u_xlat48 = (x_927 * x_928);
  let x_930 : f32 = u_xlat48;
  let x_931 : f32 = u_xlat48;
  u_xlat48 = (x_930 * x_931);
  let x_934 : f32 = u_xlat43;
  u_xlat49 = ((-(x_934) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_940 : f32 = u_xlat43;
  let x_941 : f32 = u_xlat49;
  u_xlat43 = (x_940 * x_941);
  let x_943 : f32 = u_xlat43;
  u_xlat43 = (x_943 * 6.0f);
  let x_953 : vec4<f32> = u_xlat7;
  let x_955 : f32 = u_xlat43;
  let x_956 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_953.x, x_953.y, x_953.z), x_955);
  u_xlat7 = x_956;
  let x_958 : f32 = u_xlat7.w;
  u_xlat43 = (x_958 + -1.0f);
  let x_961 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_962 : f32 = u_xlat43;
  u_xlat43 = ((x_961 * x_962) + 1.0f);
  let x_965 : f32 = u_xlat43;
  u_xlat43 = max(x_965, 0.0f);
  let x_967 : f32 = u_xlat43;
  u_xlat43 = log2(x_967);
  let x_969 : f32 = u_xlat43;
  let x_971 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_969 * x_971);
  let x_973 : f32 = u_xlat43;
  u_xlat43 = exp2(x_973);
  let x_975 : f32 = u_xlat43;
  let x_977 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_975 * x_977);
  let x_979 : vec4<f32> = u_xlat7;
  let x_981 : f32 = u_xlat43;
  let x_983 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(x_981, x_981, x_981));
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_987 : vec4<f32> = u_xlat2;
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_987.x, x_987.x) * vec2<f32>(x_989.x, x_989.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_995 : f32 = u_xlat8.y;
  u_xlat43 = (1.0f / x_995);
  let x_998 : vec4<f32> = u_xlat0;
  let x_1001 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_998.x, x_998.y, x_998.z)) + vec3<f32>(x_1001, x_1001, x_1001));
  let x_1004 : f32 = u_xlat48;
  let x_1006 : vec3<f32> = u_xlat22;
  let x_1008 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_1004, x_1004, x_1004) * x_1006) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : f32 = u_xlat43;
  let x_1013 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1011, x_1011, x_1011) * x_1013);
  let x_1015 : vec4<f32> = u_xlat7;
  let x_1017 : vec3<f32> = u_xlat22;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * x_1017);
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec3<f32> = u_xlat4;
  let x_1022 : vec4<f32> = u_xlat5;
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1021 * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : f32 = u_xlat46;
  let x_1030 : f32 = x_349.unity_LightData.z;
  u_xlat43 = (x_1028 * x_1030);
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1035 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1040 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1040, 0.0f, 1.0f);
  let x_1043 : f32 = u_xlat43;
  let x_1045 : f32 = u_xlat2.x;
  u_xlat43 = (x_1043 * x_1045);
  let x_1047 : f32 = u_xlat43;
  let x_1049 : vec4<f32> = u_xlat6;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047, x_1047, x_1047) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat3;
  let x_1057 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec4<f32> = u_xlat7;
  let x_1064 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1062.x, x_1062.y, x_1062.z), vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : f32 = u_xlat43;
  u_xlat43 = max(x_1067, 1.17549435e-38f);
  let x_1070 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1070);
  let x_1072 : f32 = u_xlat43;
  let x_1074 : vec4<f32> = u_xlat7;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1072, x_1072, x_1072) * vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat1;
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1084, 0.0f, 1.0f);
  let x_1087 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1089 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1087.x, x_1087.y, x_1087.z), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1094 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1094, 0.0f, 1.0f);
  let x_1097 : f32 = u_xlat43;
  let x_1098 : f32 = u_xlat43;
  u_xlat43 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat43;
  let x_1102 : f32 = u_xlat8.x;
  u_xlat43 = ((x_1100 * x_1102) + 1.00001001358032226562f);
  let x_1107 : f32 = u_xlat2.x;
  let x_1109 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1107 * x_1109);
  let x_1112 : f32 = u_xlat43;
  let x_1113 : f32 = u_xlat43;
  u_xlat43 = (x_1112 * x_1113);
  let x_1116 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1116, 0.10000000149011611938f);
  let x_1120 : f32 = u_xlat43;
  let x_1122 : f32 = u_xlat2.x;
  u_xlat43 = (x_1120 * x_1122);
  let x_1124 : f32 = u_xlat45;
  let x_1125 : f32 = u_xlat43;
  u_xlat43 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat16;
  let x_1128 : f32 = u_xlat43;
  u_xlat43 = (x_1127 / x_1128);
  let x_1130 : vec4<f32> = u_xlat0;
  let x_1132 : f32 = u_xlat43;
  let x_1135 : vec4<f32> = u_xlat5;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(x_1132, x_1132, x_1132)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat6;
  let x_1142 : vec4<f32> = u_xlat7;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1148 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1150 : f32 = x_349.unity_LightData.y;
  u_xlat43 = min(x_1148, x_1150);
  let x_1154 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1154));
  let x_1157 : f32 = u_xlat47;
  let x_1160 : f32 = x_711.x_AdditionalShadowFadeParams.x;
  let x_1163 : f32 = x_711.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1157 * x_1160) + x_1163);
  let x_1167 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1167, 0.0f, 1.0f);
  let x_1171 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1173 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1175 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1177 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1178 : vec4<f32> = vec4<f32>(x_1171, x_1173, x_1175, x_1177);
  let x_1184 : vec4<bool> = (vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1184.x, x_1184.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1196 : u32 = u_xlatu_loop_1;
    let x_1197 : u32 = u_xlatu43;
    if ((x_1196 < x_1197)) {
    } else {
      break;
    }
    let x_1200 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1200 >> 2u);
    let x_1204 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1204 & 3u));
    let x_1207 : u32 = u_xlatu46;
    let x_1210 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1207)];
    let x_1220 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1225 : vec4<u32> = indexable[x_1220];
    u_xlat46 = dot(x_1210, bitcast<vec4<f32>>(x_1225));
    let x_1229 : f32 = u_xlat46;
    u_xlati46 = i32(x_1229);
    let x_1232 : vec3<f32> = vs_INTERP7;
    let x_1243 : i32 = u_xlati46;
    let x_1245 : vec4<f32> = x_1242.x_AdditionalLightsPosition[x_1243];
    let x_1248 : i32 = u_xlati46;
    let x_1250 : vec4<f32> = x_1242.x_AdditionalLightsPosition[x_1248];
    u_xlat9 = ((-(x_1232) * vec3<f32>(x_1245.w, x_1245.w, x_1245.w)) + vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
    let x_1253 : vec3<f32> = u_xlat9;
    let x_1254 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1253, x_1254);
    let x_1256 : f32 = u_xlat47;
    u_xlat47 = max(x_1256, 0.00006103515625f);
    let x_1259 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1259);
    let x_1262 : f32 = u_xlat48;
    let x_1264 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1262, x_1262, x_1262) * x_1264);
    let x_1267 : f32 = u_xlat47;
    u_xlat35 = (1.0f / x_1267);
    let x_1269 : f32 = u_xlat47;
    let x_1270 : i32 = u_xlati46;
    let x_1272 : f32 = x_1242.x_AdditionalLightsAttenuation[x_1270].x;
    u_xlat47 = (x_1269 * x_1272);
    let x_1274 : f32 = u_xlat47;
    let x_1276 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1274) * x_1276) + 1.0f);
    let x_1279 : f32 = u_xlat47;
    u_xlat47 = max(x_1279, 0.0f);
    let x_1281 : f32 = u_xlat47;
    let x_1282 : f32 = u_xlat47;
    u_xlat47 = (x_1281 * x_1282);
    let x_1284 : f32 = u_xlat47;
    let x_1285 : f32 = u_xlat35;
    u_xlat47 = (x_1284 * x_1285);
    let x_1287 : i32 = u_xlati46;
    let x_1289 : vec4<f32> = x_1242.x_AdditionalLightsSpotDir[x_1287];
    let x_1291 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1289.x, x_1289.y, x_1289.z), x_1291);
    let x_1293 : f32 = u_xlat35;
    let x_1294 : i32 = u_xlati46;
    let x_1296 : f32 = x_1242.x_AdditionalLightsAttenuation[x_1294].z;
    let x_1298 : i32 = u_xlati46;
    let x_1300 : f32 = x_1242.x_AdditionalLightsAttenuation[x_1298].w;
    u_xlat35 = ((x_1293 * x_1296) + x_1300);
    let x_1302 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1302, 0.0f, 1.0f);
    let x_1304 : f32 = u_xlat35;
    let x_1305 : f32 = u_xlat35;
    u_xlat35 = (x_1304 * x_1305);
    let x_1307 : f32 = u_xlat47;
    let x_1308 : f32 = u_xlat35;
    u_xlat47 = (x_1307 * x_1308);
    let x_1312 : i32 = u_xlati46;
    let x_1314 : f32 = x_711.x_AdditionalShadowParams[x_1312].w;
    u_xlati35 = i32(x_1314);
    let x_1317 : i32 = u_xlati35;
    u_xlatb49 = (x_1317 >= 0i);
    let x_1319 : bool = u_xlatb49;
    if (x_1319) {
      let x_1323 : i32 = u_xlati46;
      let x_1325 : f32 = x_711.x_AdditionalShadowParams[x_1323].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1325, x_1325, x_1325, x_1325))));
      let x_1329 : bool = u_xlatb49;
      if (x_1329) {
        let x_1334 : vec3<f32> = u_xlat10;
        let x_1337 : vec3<f32> = u_xlat10;
        let x_1340 : vec4<bool> = (abs(vec4<f32>(x_1334.z, x_1334.z, x_1334.y, x_1334.z)) >= abs(vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.x)));
        let x_1342 : vec3<bool> = vec3<bool>(x_1340.x, x_1340.y, x_1340.z);
        let x_1343 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
        let x_1346 : bool = u_xlatb11.y;
        let x_1348 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1346 & x_1348);
        let x_1350 : vec3<f32> = u_xlat10;
        let x_1353 : vec4<bool> = (-(vec4<f32>(x_1350.z, x_1350.y, x_1350.z, x_1350.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1354 : vec3<bool> = vec3<bool>(x_1353.x, x_1353.y, x_1353.w);
        let x_1355 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1354.x, x_1354.y, x_1355.z, x_1354.z);
        let x_1359 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1359);
        let x_1364 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1364);
        let x_1370 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1370);
        let x_1373 : bool = u_xlatb11.z;
        if (x_1373) {
          let x_1378 : f32 = u_xlat11.y;
          x_1374 = x_1378;
        } else {
          let x_1380 : f32 = u_xlat51;
          x_1374 = x_1380;
        }
        let x_1381 : f32 = x_1374;
        u_xlat51 = x_1381;
        let x_1382 : bool = u_xlatb49;
        if (x_1382) {
          let x_1387 : f32 = u_xlat11.x;
          x_1383 = x_1387;
        } else {
          let x_1389 : f32 = u_xlat51;
          x_1383 = x_1389;
        }
        let x_1390 : f32 = x_1383;
        u_xlat49 = x_1390;
        let x_1391 : i32 = u_xlati46;
        let x_1393 : f32 = x_711.x_AdditionalShadowParams[x_1391].w;
        u_xlat51 = trunc(x_1393);
        let x_1395 : f32 = u_xlat49;
        let x_1396 : f32 = u_xlat51;
        u_xlat49 = (x_1395 + x_1396);
        let x_1398 : f32 = u_xlat49;
        u_xlati35 = i32(x_1398);
      }
      let x_1400 : i32 = u_xlati35;
      u_xlati35 = (x_1400 << bitcast<u32>(2i));
      let x_1402 : vec3<f32> = vs_INTERP7;
      let x_1405 : i32 = u_xlati35;
      let x_1408 : i32 = u_xlati35;
      let x_1412 : vec4<f32> = x_711.x_AdditionalLightsWorldToShadow[((x_1405 + 1i) / 4i)][((x_1408 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1412);
      let x_1414 : i32 = u_xlati35;
      let x_1416 : i32 = u_xlati35;
      let x_1419 : vec4<f32> = x_711.x_AdditionalLightsWorldToShadow[(x_1414 / 4i)][(x_1416 % 4i)];
      let x_1420 : vec3<f32> = vs_INTERP7;
      let x_1423 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1419 * vec4<f32>(x_1420.x, x_1420.x, x_1420.x, x_1420.x)) + x_1423);
      let x_1425 : i32 = u_xlati35;
      let x_1428 : i32 = u_xlati35;
      let x_1432 : vec4<f32> = x_711.x_AdditionalLightsWorldToShadow[((x_1425 + 2i) / 4i)][((x_1428 + 2i) % 4i)];
      let x_1433 : vec3<f32> = vs_INTERP7;
      let x_1436 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1432 * vec4<f32>(x_1433.z, x_1433.z, x_1433.z, x_1433.z)) + x_1436);
      let x_1438 : vec4<f32> = u_xlat11;
      let x_1439 : i32 = u_xlati35;
      let x_1442 : i32 = u_xlati35;
      let x_1446 : vec4<f32> = x_711.x_AdditionalLightsWorldToShadow[((x_1439 + 3i) / 4i)][((x_1442 + 3i) % 4i)];
      u_xlat11 = (x_1438 + x_1446);
      let x_1448 : vec4<f32> = u_xlat11;
      let x_1450 : vec4<f32> = u_xlat11;
      let x_1452 : vec3<f32> = (vec3<f32>(x_1448.x, x_1448.y, x_1448.z) / vec3<f32>(x_1450.w, x_1450.w, x_1450.w));
      let x_1453 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
      let x_1456 : vec4<f32> = u_xlat11;
      let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
      let x_1459 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
      let x_1467 : vec3<f32> = txVec1;
      let x_1469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
      u_xlat35 = x_1469;
      let x_1470 : i32 = u_xlati46;
      let x_1472 : f32 = x_711.x_AdditionalShadowParams[x_1470].x;
      u_xlat49 = (1.0f + -(x_1472));
      let x_1475 : f32 = u_xlat35;
      let x_1476 : i32 = u_xlati46;
      let x_1478 : f32 = x_711.x_AdditionalShadowParams[x_1476].x;
      let x_1480 : f32 = u_xlat49;
      u_xlat35 = ((x_1475 * x_1478) + x_1480);
      let x_1483 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1483);
      let x_1487 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1487 >= 1.0f);
      let x_1489 : bool = u_xlatb49;
      let x_1490 : bool = u_xlatb51;
      u_xlatb49 = (x_1489 | x_1490);
      let x_1492 : bool = u_xlatb49;
      let x_1493 : f32 = u_xlat35;
      u_xlat35 = select(x_1493, 1.0f, x_1492);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1496 : f32 = u_xlat35;
    u_xlat49 = (-(x_1496) + 1.0f);
    let x_1500 : f32 = u_xlat2.x;
    let x_1501 : f32 = u_xlat49;
    let x_1503 : f32 = u_xlat35;
    u_xlat35 = ((x_1500 * x_1501) + x_1503);
    let x_1506 : i32 = u_xlati46;
    u_xlati49 = (1i << bitcast<u32>((x_1506 & 31i)));
    let x_1510 : i32 = u_xlati49;
    let x_1513 : f32 = x_776.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1510) & bitcast<u32>(x_1513)));
    let x_1517 : i32 = u_xlati49;
    if ((x_1517 != 0i)) {
      let x_1521 : i32 = u_xlati46;
      let x_1523 : f32 = x_776.x_AdditionalLightsLightTypes[x_1521].el;
      u_xlati49 = i32(x_1523);
      let x_1526 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1526 != 0i));
      let x_1530 : i32 = u_xlati46;
      u_xlati52 = (x_1530 << bitcast<u32>(2i));
      let x_1532 : i32 = u_xlati51;
      if ((x_1532 != 0i)) {
        let x_1536 : vec3<f32> = vs_INTERP7;
        let x_1538 : i32 = u_xlati52;
        let x_1541 : i32 = u_xlati52;
        let x_1545 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1538 + 1i) / 4i)][((x_1541 + 1i) % 4i)];
        let x_1547 : vec3<f32> = (vec3<f32>(x_1536.y, x_1536.y, x_1536.y) * vec3<f32>(x_1545.x, x_1545.y, x_1545.w));
        let x_1548 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
        let x_1550 : i32 = u_xlati52;
        let x_1552 : i32 = u_xlati52;
        let x_1555 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[(x_1550 / 4i)][(x_1552 % 4i)];
        let x_1557 : vec3<f32> = vs_INTERP7;
        let x_1560 : vec4<f32> = u_xlat11;
        let x_1562 : vec3<f32> = ((vec3<f32>(x_1555.x, x_1555.y, x_1555.w) * vec3<f32>(x_1557.x, x_1557.x, x_1557.x)) + vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
        let x_1565 : i32 = u_xlati52;
        let x_1568 : i32 = u_xlati52;
        let x_1572 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1565 + 2i) / 4i)][((x_1568 + 2i) % 4i)];
        let x_1574 : vec3<f32> = vs_INTERP7;
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1579 : vec3<f32> = ((vec3<f32>(x_1572.x, x_1572.y, x_1572.w) * vec3<f32>(x_1574.z, x_1574.z, x_1574.z)) + vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1580.w);
        let x_1582 : vec4<f32> = u_xlat11;
        let x_1584 : i32 = u_xlati52;
        let x_1587 : i32 = u_xlati52;
        let x_1591 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1584 + 3i) / 4i)][((x_1587 + 3i) % 4i)];
        let x_1593 : vec3<f32> = (vec3<f32>(x_1582.x, x_1582.y, x_1582.z) + vec3<f32>(x_1591.x, x_1591.y, x_1591.w));
        let x_1594 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1598 : vec4<f32> = u_xlat11;
        let x_1600 : vec2<f32> = (vec2<f32>(x_1596.x, x_1596.y) / vec2<f32>(x_1598.z, x_1598.z));
        let x_1601 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1600.x, x_1600.y, x_1601.z, x_1601.w);
        let x_1603 : vec4<f32> = u_xlat11;
        let x_1606 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1607 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
        let x_1609 : vec4<f32> = u_xlat11;
        let x_1613 : vec2<f32> = clamp(vec2<f32>(x_1609.x, x_1609.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1614 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1613.x, x_1613.y, x_1614.z, x_1614.w);
        let x_1616 : i32 = u_xlati46;
        let x_1618 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1616];
        let x_1620 : vec4<f32> = u_xlat11;
        let x_1623 : i32 = u_xlati46;
        let x_1625 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1623];
        let x_1627 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1620.x, x_1620.y)) + vec2<f32>(x_1625.z, x_1625.w));
        let x_1628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1627.x, x_1627.y, x_1628.z, x_1628.w);
      } else {
        let x_1631 : i32 = u_xlati49;
        u_xlatb49 = (x_1631 == 1i);
        let x_1633 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1633);
        let x_1635 : i32 = u_xlati49;
        if ((x_1635 != 0i)) {
          let x_1640 : vec3<f32> = vs_INTERP7;
          let x_1642 : i32 = u_xlati52;
          let x_1645 : i32 = u_xlati52;
          let x_1649 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1642 + 1i) / 4i)][((x_1645 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1640.y, x_1640.y) * vec2<f32>(x_1649.x, x_1649.y));
          let x_1652 : i32 = u_xlati52;
          let x_1654 : i32 = u_xlati52;
          let x_1657 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[(x_1652 / 4i)][(x_1654 % 4i)];
          let x_1659 : vec3<f32> = vs_INTERP7;
          let x_1662 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1659.x, x_1659.x)) + x_1662);
          let x_1664 : i32 = u_xlati52;
          let x_1667 : i32 = u_xlati52;
          let x_1671 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1664 + 2i) / 4i)][((x_1667 + 2i) % 4i)];
          let x_1673 : vec3<f32> = vs_INTERP7;
          let x_1676 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1673.z, x_1673.z)) + x_1676);
          let x_1678 : vec2<f32> = u_xlat39;
          let x_1679 : i32 = u_xlati52;
          let x_1682 : i32 = u_xlati52;
          let x_1686 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1679 + 3i) / 4i)][((x_1682 + 3i) % 4i)];
          u_xlat39 = (x_1678 + vec2<f32>(x_1686.x, x_1686.y));
          let x_1689 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1689 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1692 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1692);
          let x_1694 : i32 = u_xlati46;
          let x_1696 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1694];
          let x_1698 : vec2<f32> = u_xlat39;
          let x_1700 : i32 = u_xlati46;
          let x_1702 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1700];
          let x_1704 : vec2<f32> = ((vec2<f32>(x_1696.x, x_1696.y) * x_1698) + vec2<f32>(x_1702.z, x_1702.w));
          let x_1705 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1704.x, x_1704.y, x_1705.z, x_1705.w);
        } else {
          let x_1709 : vec3<f32> = vs_INTERP7;
          let x_1711 : i32 = u_xlati52;
          let x_1714 : i32 = u_xlati52;
          let x_1718 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1711 + 1i) / 4i)][((x_1714 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1709.y, x_1709.y, x_1709.y, x_1709.y) * x_1718);
          let x_1720 : i32 = u_xlati52;
          let x_1722 : i32 = u_xlati52;
          let x_1725 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[(x_1720 / 4i)][(x_1722 % 4i)];
          let x_1726 : vec3<f32> = vs_INTERP7;
          let x_1729 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1725 * vec4<f32>(x_1726.x, x_1726.x, x_1726.x, x_1726.x)) + x_1729);
          let x_1731 : i32 = u_xlati52;
          let x_1734 : i32 = u_xlati52;
          let x_1738 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1731 + 2i) / 4i)][((x_1734 + 2i) % 4i)];
          let x_1739 : vec3<f32> = vs_INTERP7;
          let x_1742 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1738 * vec4<f32>(x_1739.z, x_1739.z, x_1739.z, x_1739.z)) + x_1742);
          let x_1744 : vec4<f32> = u_xlat12;
          let x_1745 : i32 = u_xlati52;
          let x_1748 : i32 = u_xlati52;
          let x_1752 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1745 + 3i) / 4i)][((x_1748 + 3i) % 4i)];
          u_xlat12 = (x_1744 + x_1752);
          let x_1754 : vec4<f32> = u_xlat12;
          let x_1756 : vec4<f32> = u_xlat12;
          let x_1758 : vec3<f32> = (vec3<f32>(x_1754.x, x_1754.y, x_1754.z) / vec3<f32>(x_1756.w, x_1756.w, x_1756.w));
          let x_1759 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
          let x_1761 : vec4<f32> = u_xlat12;
          let x_1763 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1761.x, x_1761.y, x_1761.z), vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
          let x_1766 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1766);
          let x_1768 : f32 = u_xlat49;
          let x_1770 : vec4<f32> = u_xlat12;
          let x_1772 : vec3<f32> = (vec3<f32>(x_1768, x_1768, x_1768) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
          let x_1773 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
          let x_1775 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1775.x, x_1775.y, x_1775.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1779 : f32 = u_xlat49;
          u_xlat49 = max(x_1779, 0.00000099999999747524f);
          let x_1782 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1782);
          let x_1785 : f32 = u_xlat49;
          let x_1787 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1785, x_1785, x_1785) * vec3<f32>(x_1787.z, x_1787.x, x_1787.y));
          let x_1791 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1791);
          let x_1795 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1795, 0.0f, 1.0f);
          let x_1799 : vec3<f32> = u_xlat13;
          let x_1801 : vec4<bool> = (vec4<f32>(x_1799.y, x_1799.z, x_1799.y, x_1799.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1801.x, x_1801.y);
          let x_1804 : bool = u_xlatb39.x;
          if (x_1804) {
            let x_1809 : f32 = u_xlat13.x;
            x_1805 = x_1809;
          } else {
            let x_1812 : f32 = u_xlat13.x;
            x_1805 = -(x_1812);
          }
          let x_1814 : f32 = x_1805;
          u_xlat39.x = x_1814;
          let x_1817 : bool = u_xlatb39.y;
          if (x_1817) {
            let x_1822 : f32 = u_xlat13.x;
            x_1818 = x_1822;
          } else {
            let x_1825 : f32 = u_xlat13.x;
            x_1818 = -(x_1825);
          }
          let x_1827 : f32 = x_1818;
          u_xlat39.y = x_1827;
          let x_1829 : vec4<f32> = u_xlat12;
          let x_1831 : f32 = u_xlat49;
          let x_1834 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(x_1831, x_1831)) + x_1834);
          let x_1836 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1836 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1839 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1839, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1843 : i32 = u_xlati46;
          let x_1845 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1843];
          let x_1847 : vec2<f32> = u_xlat39;
          let x_1849 : i32 = u_xlati46;
          let x_1851 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1849];
          let x_1853 : vec2<f32> = ((vec2<f32>(x_1845.x, x_1845.y) * x_1847) + vec2<f32>(x_1851.z, x_1851.w));
          let x_1854 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1853.x, x_1853.y, x_1854.z, x_1854.w);
        }
      }
      let x_1861 : vec4<f32> = u_xlat11;
      let x_1863 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1861.x, x_1861.y), 0.0f);
      u_xlat11 = x_1863;
      let x_1865 : bool = u_xlatb7.y;
      if (x_1865) {
        let x_1870 : f32 = u_xlat11.w;
        x_1866 = x_1870;
      } else {
        let x_1873 : f32 = u_xlat11.x;
        x_1866 = x_1873;
      }
      let x_1874 : f32 = x_1866;
      u_xlat49 = x_1874;
      let x_1876 : bool = u_xlatb7.x;
      if (x_1876) {
        let x_1880 : vec4<f32> = u_xlat11;
        x_1877 = vec3<f32>(x_1880.x, x_1880.y, x_1880.z);
      } else {
        let x_1883 : f32 = u_xlat49;
        x_1877 = vec3<f32>(x_1883, x_1883, x_1883);
      }
      let x_1885 : vec3<f32> = x_1877;
      let x_1886 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : i32 = u_xlati46;
    let x_1896 : vec4<f32> = x_1242.x_AdditionalLightsColor[x_1894];
    let x_1898 : vec3<f32> = (vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
    let x_1899 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
    let x_1901 : f32 = u_xlat47;
    let x_1902 : f32 = u_xlat35;
    u_xlat46 = (x_1901 * x_1902);
    let x_1904 : vec4<f32> = u_xlat1;
    let x_1906 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1904.x, x_1904.y, x_1904.z), x_1906);
    let x_1908 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1908, 0.0f, 1.0f);
    let x_1910 : f32 = u_xlat46;
    let x_1911 : f32 = u_xlat47;
    u_xlat46 = (x_1910 * x_1911);
    let x_1913 : f32 = u_xlat46;
    let x_1915 : vec4<f32> = u_xlat11;
    let x_1917 : vec3<f32> = (vec3<f32>(x_1913, x_1913, x_1913) * vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
    let x_1920 : vec3<f32> = u_xlat9;
    let x_1921 : f32 = u_xlat48;
    let x_1924 : vec4<f32> = u_xlat3;
    u_xlat9 = ((x_1920 * vec3<f32>(x_1921, x_1921, x_1921)) + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
    let x_1927 : vec3<f32> = u_xlat9;
    let x_1928 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1927, x_1928);
    let x_1930 : f32 = u_xlat46;
    u_xlat46 = max(x_1930, 1.17549435e-38f);
    let x_1932 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1932);
    let x_1934 : f32 = u_xlat46;
    let x_1936 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1934, x_1934, x_1934) * x_1936);
    let x_1938 : vec4<f32> = u_xlat1;
    let x_1940 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1938.x, x_1938.y, x_1938.z), x_1940);
    let x_1942 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1942, 0.0f, 1.0f);
    let x_1944 : vec3<f32> = u_xlat10;
    let x_1945 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1944, x_1945);
    let x_1947 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1947, 0.0f, 1.0f);
    let x_1949 : f32 = u_xlat46;
    let x_1950 : f32 = u_xlat46;
    u_xlat46 = (x_1949 * x_1950);
    let x_1952 : f32 = u_xlat46;
    let x_1954 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1952 * x_1954) + 1.00001001358032226562f);
    let x_1957 : f32 = u_xlat47;
    let x_1958 : f32 = u_xlat47;
    u_xlat47 = (x_1957 * x_1958);
    let x_1960 : f32 = u_xlat46;
    let x_1961 : f32 = u_xlat46;
    u_xlat46 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat47;
    u_xlat47 = max(x_1963, 0.10000000149011611938f);
    let x_1965 : f32 = u_xlat46;
    let x_1966 : f32 = u_xlat47;
    u_xlat46 = (x_1965 * x_1966);
    let x_1968 : f32 = u_xlat45;
    let x_1969 : f32 = u_xlat46;
    u_xlat46 = (x_1968 * x_1969);
    let x_1971 : f32 = u_xlat16;
    let x_1972 : f32 = u_xlat46;
    u_xlat46 = (x_1971 / x_1972);
    let x_1974 : vec4<f32> = u_xlat0;
    let x_1976 : f32 = u_xlat46;
    let x_1979 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1974.x, x_1974.y, x_1974.z) * vec3<f32>(x_1976, x_1976, x_1976)) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
    let x_1982 : vec3<f32> = u_xlat9;
    let x_1983 : vec4<f32> = u_xlat11;
    let x_1986 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1982 * vec3<f32>(x_1983.x, x_1983.y, x_1983.z)) + x_1986);

    continuing {
      let x_1988 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1988 + bitcast<u32>(1i));
    }
  }
  let x_1990 : vec3<f32> = u_xlat4;
  let x_1991 : f32 = u_xlat30;
  let x_1994 : vec4<f32> = u_xlat6;
  let x_1996 : vec3<f32> = ((x_1990 * vec3<f32>(x_1991, x_1991, x_1991)) + vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
  let x_1997 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
  let x_1999 : vec3<f32> = u_xlat22;
  let x_2000 : vec4<f32> = u_xlat0;
  let x_2002 : vec3<f32> = (x_1999 + vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
  let x_2005 : f32 = u_xlat42;
  let x_2006 : f32 = u_xlat42;
  u_xlat42 = (x_2005 * -(x_2006));
  let x_2009 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2009);
  let x_2011 : vec4<f32> = u_xlat0;
  let x_2014 : vec4<f32> = x_29.unity_FogColor;
  let x_2017 : vec3<f32> = (vec3<f32>(x_2011.x, x_2011.y, x_2011.z) + -(vec3<f32>(x_2014.x, x_2014.y, x_2014.z)));
  let x_2018 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2018.w);
  let x_2022 : f32 = u_xlat42;
  let x_2024 : vec4<f32> = u_xlat0;
  let x_2028 : vec4<f32> = x_29.unity_FogColor;
  let x_2030 : vec3<f32> = ((vec3<f32>(x_2022, x_2022, x_2022) * vec3<f32>(x_2024.x, x_2024.y, x_2024.z)) + vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


