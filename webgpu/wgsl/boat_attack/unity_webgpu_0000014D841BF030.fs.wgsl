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

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(4) var<uniform> x_977 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu18 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati18 : i32;

@group(1) @binding(1) var<uniform> x_1447 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_928 : f32;
  var x_1046 : f32;
  var x_1057 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1579 : f32;
  var x_1589 : f32;
  var txVec1 : vec3<f32>;
  var x_2011 : f32;
  var x_2024 : f32;
  var x_2072 : f32;
  var x_2083 : vec3<f32>;
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
    let x_484 : vec4<f32> = u_xlat4;
    x_478 = vec3<f32>(x_484.x, x_484.y, x_484.z);
  }
  let x_486 : vec3<f32> = x_478;
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = vs_INTERP7;
  let x_500 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres0;
  let x_503 : vec3<f32> = (x_489 + -(vec3<f32>(x_500.x, x_500.y, x_500.z)));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : vec3<f32> = vs_INTERP7;
  let x_509 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres1;
  let x_512 : vec3<f32> = (x_507 + -(vec3<f32>(x_509.x, x_509.y, x_509.z)));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec3<f32> = vs_INTERP7;
  let x_518 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres2;
  let x_521 : vec3<f32> = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_522 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec3<f32> = vs_INTERP7;
  let x_527 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_530 : vec3<f32> = (x_525 + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_539 : vec4<f32> = u_xlat5;
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_539.x, x_539.y, x_539.z), vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_551 : vec4<f32> = u_xlat7;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_560 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_560 < x_563);
  let x_566 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_578);
  let x_582 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_582);
  let x_587 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_587);
  let x_591 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_591);
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec4<f32> = u_xlat5;
  let x_598 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) + vec3<f32>(x_596.y, x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_604 : vec3<f32> = max(vec3<f32>(x_601.x, x_601.y, x_601.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_605.x, x_604.x, x_604.y, x_604.z);
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_607, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_612 : f32 = u_xlat42;
  u_xlat42 = (-(x_612) + 4.0f);
  let x_617 : f32 = u_xlat42;
  u_xlatu42 = u32(x_617);
  let x_621 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_621) << bitcast<u32>(2i));
  let x_624 : vec3<f32> = vs_INTERP7;
  let x_626 : i32 = u_xlati42;
  let x_629 : i32 = u_xlati42;
  let x_633 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_626 + 1i) / 4i)][((x_629 + 1i) % 4i)];
  let x_635 : vec3<f32> = (vec3<f32>(x_624.y, x_624.y, x_624.y) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : i32 = u_xlati42;
  let x_640 : i32 = u_xlati42;
  let x_643 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_638 / 4i)][(x_640 % 4i)];
  let x_645 : vec3<f32> = vs_INTERP7;
  let x_648 : vec4<f32> = u_xlat4;
  let x_650 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645.x, x_645.x, x_645.x)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati42;
  let x_656 : i32 = u_xlati42;
  let x_660 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_653 + 2i) / 4i)][((x_656 + 2i) % 4i)];
  let x_662 : vec3<f32> = vs_INTERP7;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662.z, x_662.z, x_662.z)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat4;
  let x_672 : i32 = u_xlati42;
  let x_675 : i32 = u_xlati42;
  let x_679 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_672 + 3i) / 4i)][((x_675 + 3i) % 4i)];
  let x_681 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = vs_INTERP7.y;
  let x_687 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat42 = (x_685 * x_687);
  let x_690 : f32 = x_29.unity_MatrixV[0i].z;
  let x_692 : f32 = vs_INTERP7.x;
  let x_694 : f32 = u_xlat42;
  u_xlat42 = ((x_690 * x_692) + x_694);
  let x_697 : f32 = x_29.unity_MatrixV[2i].z;
  let x_699 : f32 = vs_INTERP7.z;
  let x_701 : f32 = u_xlat42;
  u_xlat42 = ((x_697 * x_699) + x_701);
  let x_703 : f32 = u_xlat42;
  let x_705 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat42 = (x_703 + x_705);
  let x_707 : f32 = u_xlat42;
  let x_710 : f32 = x_29.x_ProjectionParams.y;
  u_xlat42 = (-(x_707) + -(x_710));
  let x_713 : f32 = u_xlat42;
  u_xlat42 = max(x_713, 0.0f);
  let x_715 : f32 = u_xlat42;
  let x_718 : f32 = x_29.unity_FogParams.x;
  u_xlat42 = (x_715 * x_718);
  u_xlat1.w = 1.0f;
  let x_723 : vec4<f32> = x_349.unity_SHAr;
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_723, x_724);
  let x_729 : vec4<f32> = x_349.unity_SHAg;
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_729, x_730);
  let x_735 : vec4<f32> = x_349.unity_SHAb;
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_735, x_736);
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_739.y, x_739.z, x_739.z, x_739.x) * vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.z));
  let x_746 : vec4<f32> = x_349.unity_SHBr;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_746, x_747);
  let x_752 : vec4<f32> = x_349.unity_SHBg;
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_752, x_753);
  let x_758 : vec4<f32> = x_349.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_758, x_759);
  let x_764 : f32 = u_xlat1.y;
  let x_766 : f32 = u_xlat1.y;
  u_xlat43 = (x_764 * x_766);
  let x_769 : f32 = u_xlat1.x;
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat43;
  u_xlat43 = ((x_769 * x_771) + -(x_773));
  let x_778 : vec4<f32> = x_349.unity_SHC;
  let x_780 : f32 = u_xlat43;
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_780, x_780, x_780)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat5;
  let x_790 : vec4<f32> = u_xlat6;
  let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat5;
  let x_797 : vec3<f32> = max(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_798 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat2;
  let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_808 : vec2<f32> = clamp(vec2<f32>(x_804.x, x_804.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_812 : f32 = u_xlat2.x;
  u_xlat43 = ((-(x_812) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_817 : f32 = u_xlat43;
  u_xlat44 = (-(x_817) + 1.0f);
  let x_820 : vec4<f32> = u_xlat0;
  let x_822 : f32 = u_xlat43;
  let x_824 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_822, x_822, x_822));
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat2;
  let x_836 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = ((vec3<f32>(x_834.x, x_834.x, x_834.x) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_845 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat43;
  let x_849 : f32 = u_xlat43;
  u_xlat2.x = (x_848 * x_849);
  let x_853 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_853, 0.0078125f);
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat2.x;
  u_xlat45 = (x_859 * x_861);
  let x_864 : f32 = u_xlat44;
  let x_866 : f32 = u_xlat2.y;
  u_xlat16 = (x_864 + x_866);
  let x_868 : f32 = u_xlat16;
  u_xlat16 = min(x_868, 1.0f);
  let x_871 : f32 = u_xlat2.x;
  u_xlat44 = ((x_871 * 4.0f) + 2.0f);
  let x_876 : f32 = u_xlat2.z;
  u_xlat30 = min(x_876, 1.0f);
  let x_879 : vec4<f32> = u_xlat4;
  let x_880 : vec2<f32> = vec2<f32>(x_879.x, x_879.y);
  let x_882 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_880.x, x_880.y, x_882);
  let x_894 : vec3<f32> = txVec0;
  let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
  u_xlat4.x = x_896;
  let x_901 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_901) + 1.0f);
  let x_906 : f32 = u_xlat4.x;
  let x_908 : f32 = x_497.x_MainLightShadowParams.x;
  let x_911 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_906 * x_908) + x_911);
  let x_916 : f32 = u_xlat4.z;
  u_xlatb18 = (0.0f >= x_916);
  let x_920 : f32 = u_xlat4.z;
  u_xlatb32.x = (x_920 >= 1.0f);
  let x_924 : bool = u_xlatb32.x;
  let x_925 : bool = u_xlatb18;
  u_xlatb18 = (x_924 | x_925);
  let x_927 : bool = u_xlatb18;
  if (x_927) {
    x_928 = 1.0f;
  } else {
    let x_933 : f32 = u_xlat4.x;
    x_928 = x_933;
  }
  let x_934 : f32 = x_928;
  u_xlat4.x = x_934;
  let x_936 : vec3<f32> = vs_INTERP7;
  let x_938 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat18 = (x_936 + -(x_938));
  let x_941 : vec3<f32> = u_xlat18;
  let x_942 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_941, x_942);
  let x_947 : f32 = u_xlat18.x;
  let x_949 : f32 = x_497.x_MainLightShadowParams.z;
  let x_952 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_947 * x_949) + x_952);
  let x_956 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_956, 0.0f, 1.0f);
  let x_961 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_961) + 1.0f);
  let x_965 : f32 = u_xlat32.x;
  let x_966 : f32 = u_xlat46;
  let x_969 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_965 * x_966) + x_969);
  let x_979 : f32 = x_977.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_979 == -1.0f));
  let x_983 : bool = u_xlatb32.x;
  if (x_983) {
    let x_986 : vec3<f32> = vs_INTERP7;
    let x_989 : vec4<f32> = x_977.x_MainLightWorldToLight[1i];
    u_xlat32 = (vec2<f32>(x_986.y, x_986.y) * vec2<f32>(x_989.x, x_989.y));
    let x_993 : vec4<f32> = x_977.x_MainLightWorldToLight[0i];
    let x_995 : vec3<f32> = vs_INTERP7;
    let x_998 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_995.x, x_995.x)) + x_998);
    let x_1001 : vec4<f32> = x_977.x_MainLightWorldToLight[2i];
    let x_1003 : vec3<f32> = vs_INTERP7;
    let x_1006 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1003.z, x_1003.z)) + x_1006);
    let x_1008 : vec2<f32> = u_xlat32;
    let x_1010 : vec4<f32> = x_977.x_MainLightWorldToLight[3i];
    u_xlat32 = (x_1008 + vec2<f32>(x_1010.x, x_1010.y));
    let x_1013 : vec2<f32> = u_xlat32;
    u_xlat32 = ((x_1013 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1023 : vec2<f32> = u_xlat32;
    let x_1025 : f32 = x_29.x_GlobalMipBias.x;
    let x_1026 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1023, x_1025);
    u_xlat7 = x_1026;
    let x_1028 : f32 = x_977.x_MainLightCookieTextureFormat;
    let x_1030 : f32 = x_977.x_MainLightCookieTextureFormat;
    let x_1032 : f32 = x_977.x_MainLightCookieTextureFormat;
    let x_1034 : f32 = x_977.x_MainLightCookieTextureFormat;
    let x_1035 : vec4<f32> = vec4<f32>(x_1028, x_1030, x_1032, x_1034);
    let x_1042 : vec4<bool> = (vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1035.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb32 = vec2<bool>(x_1042.x, x_1042.y);
    let x_1045 : bool = u_xlatb32.y;
    if (x_1045) {
      let x_1050 : f32 = u_xlat7.w;
      x_1046 = x_1050;
    } else {
      let x_1053 : f32 = u_xlat7.x;
      x_1046 = x_1053;
    }
    let x_1054 : f32 = x_1046;
    u_xlat46 = x_1054;
    let x_1056 : bool = u_xlatb32.x;
    if (x_1056) {
      let x_1060 : vec4<f32> = u_xlat7;
      x_1057 = vec3<f32>(x_1060.x, x_1060.y, x_1060.z);
    } else {
      let x_1063 : f32 = u_xlat46;
      x_1057 = vec3<f32>(x_1063, x_1063, x_1063);
    }
    let x_1065 : vec3<f32> = x_1057;
    let x_1066 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1072 : vec4<f32> = u_xlat7;
  let x_1075 : vec4<f32> = x_29.x_MainLightColor;
  let x_1077 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : vec4<f32> = u_xlat3;
  let x_1083 : vec4<f32> = u_xlat1;
  u_xlat32.x = dot(-(vec3<f32>(x_1080.x, x_1080.y, x_1080.z)), vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1088 : f32 = u_xlat32.x;
  let x_1090 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1088 + x_1090);
  let x_1094 : vec4<f32> = u_xlat1;
  let x_1096 : vec2<f32> = u_xlat32;
  let x_1100 : vec4<f32> = u_xlat3;
  let x_1103 : vec3<f32> = ((vec3<f32>(x_1094.x, x_1094.y, x_1094.z) * -(vec3<f32>(x_1096.x, x_1096.x, x_1096.x))) + -(vec3<f32>(x_1100.x, x_1100.y, x_1100.z)));
  let x_1104 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec4<f32> = u_xlat1;
  let x_1108 : vec4<f32> = u_xlat3;
  u_xlat32.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1113 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_1113, 0.0f, 1.0f);
  let x_1117 : f32 = u_xlat32.x;
  u_xlat32.x = (-(x_1117) + 1.0f);
  let x_1122 : f32 = u_xlat32.x;
  let x_1124 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1122 * x_1124);
  let x_1128 : f32 = u_xlat32.x;
  let x_1130 : f32 = u_xlat32.x;
  u_xlat32.x = (x_1128 * x_1130);
  let x_1133 : f32 = u_xlat43;
  u_xlat46 = ((-(x_1133) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1139 : f32 = u_xlat43;
  let x_1140 : f32 = u_xlat46;
  u_xlat43 = (x_1139 * x_1140);
  let x_1142 : f32 = u_xlat43;
  u_xlat43 = (x_1142 * 6.0f);
  let x_1152 : vec4<f32> = u_xlat8;
  let x_1154 : f32 = u_xlat43;
  let x_1155 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1154);
  u_xlat8 = x_1155;
  let x_1157 : f32 = u_xlat8.w;
  u_xlat43 = (x_1157 + -1.0f);
  let x_1160 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1161 : f32 = u_xlat43;
  u_xlat43 = ((x_1160 * x_1161) + 1.0f);
  let x_1164 : f32 = u_xlat43;
  u_xlat43 = max(x_1164, 0.0f);
  let x_1166 : f32 = u_xlat43;
  u_xlat43 = log2(x_1166);
  let x_1168 : f32 = u_xlat43;
  let x_1170 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1168 * x_1170);
  let x_1172 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1172);
  let x_1174 : f32 = u_xlat43;
  let x_1176 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1174 * x_1176);
  let x_1178 : vec4<f32> = u_xlat8;
  let x_1180 : f32 = u_xlat43;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * vec3<f32>(x_1180, x_1180, x_1180));
  let x_1183 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  let x_1186 : vec4<f32> = u_xlat2;
  let x_1188 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec2<f32>(x_1186.x, x_1186.x) * vec2<f32>(x_1188.x, x_1188.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1194 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1194);
  let x_1197 : vec4<f32> = u_xlat0;
  let x_1200 : f32 = u_xlat16;
  u_xlat23 = (-(vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + vec3<f32>(x_1200, x_1200, x_1200));
  let x_1203 : vec2<f32> = u_xlat32;
  let x_1205 : vec3<f32> = u_xlat23;
  let x_1207 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_1203.x, x_1203.x, x_1203.x) * x_1205) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : f32 = u_xlat43;
  let x_1212 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1210, x_1210, x_1210) * x_1212);
  let x_1214 : vec4<f32> = u_xlat8;
  let x_1216 : vec3<f32> = u_xlat23;
  let x_1217 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.y, x_1214.z) * x_1216);
  let x_1218 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec4<f32> = u_xlat5;
  let x_1222 : vec4<f32> = u_xlat6;
  let x_1225 : vec4<f32> = u_xlat8;
  let x_1227 : vec3<f32> = ((vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z)) + vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1231 : f32 = u_xlat4.x;
  let x_1233 : f32 = x_349.unity_LightData.z;
  u_xlat43 = (x_1231 * x_1233);
  let x_1235 : vec4<f32> = u_xlat1;
  let x_1238 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1235.x, x_1235.y, x_1235.z), vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1243 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1243, 0.0f, 1.0f);
  let x_1246 : f32 = u_xlat43;
  let x_1248 : f32 = u_xlat2.x;
  u_xlat43 = (x_1246 * x_1248);
  let x_1250 : f32 = u_xlat43;
  let x_1252 : vec4<f32> = u_xlat7;
  let x_1254 : vec3<f32> = (vec3<f32>(x_1250, x_1250, x_1250) * vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
  let x_1255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1254.z);
  let x_1257 : vec4<f32> = u_xlat3;
  let x_1260 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1262 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) + vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec4<f32> = u_xlat7;
  let x_1267 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1265.x, x_1265.y, x_1265.z), vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : f32 = u_xlat43;
  u_xlat43 = max(x_1270, 1.17549435e-38f);
  let x_1273 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_1273);
  let x_1275 : f32 = u_xlat43;
  let x_1277 : vec4<f32> = u_xlat7;
  let x_1279 : vec3<f32> = (vec3<f32>(x_1275, x_1275, x_1275) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat1;
  let x_1284 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1287, 0.0f, 1.0f);
  let x_1290 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1292 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1290.x, x_1290.y, x_1290.z), vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1297 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1297, 0.0f, 1.0f);
  let x_1300 : f32 = u_xlat43;
  let x_1301 : f32 = u_xlat43;
  u_xlat43 = (x_1300 * x_1301);
  let x_1303 : f32 = u_xlat43;
  let x_1305 : f32 = u_xlat9.x;
  u_xlat43 = ((x_1303 * x_1305) + 1.00001001358032226562f);
  let x_1310 : f32 = u_xlat2.x;
  let x_1312 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1310 * x_1312);
  let x_1315 : f32 = u_xlat43;
  let x_1316 : f32 = u_xlat43;
  u_xlat43 = (x_1315 * x_1316);
  let x_1319 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1319, 0.10000000149011611938f);
  let x_1323 : f32 = u_xlat43;
  let x_1325 : f32 = u_xlat2.x;
  u_xlat43 = (x_1323 * x_1325);
  let x_1327 : f32 = u_xlat44;
  let x_1328 : f32 = u_xlat43;
  u_xlat43 = (x_1327 * x_1328);
  let x_1330 : f32 = u_xlat45;
  let x_1331 : f32 = u_xlat43;
  u_xlat43 = (x_1330 / x_1331);
  let x_1333 : vec4<f32> = u_xlat0;
  let x_1335 : f32 = u_xlat43;
  let x_1338 : vec4<f32> = u_xlat6;
  let x_1340 : vec3<f32> = ((vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335, x_1335, x_1335)) + vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
  let x_1343 : vec4<f32> = u_xlat4;
  let x_1345 : vec4<f32> = u_xlat7;
  let x_1347 : vec3<f32> = (vec3<f32>(x_1343.x, x_1343.z, x_1343.w) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1347.x, x_1348.y, x_1347.y, x_1347.z);
  let x_1351 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1353 : f32 = x_349.unity_LightData.y;
  u_xlat43 = min(x_1351, x_1353);
  let x_1356 : f32 = u_xlat43;
  u_xlatu43 = bitcast<u32>(i32(x_1356));
  let x_1360 : f32 = u_xlat18.x;
  let x_1363 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_1366 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1360 * x_1363) + x_1366);
  let x_1370 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1370, 0.0f, 1.0f);
  let x_1375 : f32 = x_977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1377 : f32 = x_977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1379 : f32 = x_977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1381 : f32 = x_977.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1382 : vec4<f32> = vec4<f32>(x_1375, x_1377, x_1379, x_1381);
  let x_1389 : vec4<bool> = (vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1382.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1389.x, x_1389.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1401 : u32 = u_xlatu_loop_1;
    let x_1402 : u32 = u_xlatu43;
    if ((x_1401 < x_1402)) {
    } else {
      break;
    }
    let x_1405 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1405 >> 2u);
    let x_1408 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1408 & 3u));
    let x_1411 : u32 = u_xlatu18;
    let x_1414 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1411)];
    let x_1424 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1429 : vec4<u32> = indexable[x_1424];
    u_xlat18.x = dot(x_1414, bitcast<vec4<f32>>(x_1429));
    let x_1435 : f32 = u_xlat18.x;
    u_xlati18 = i32(x_1435);
    let x_1437 : vec3<f32> = vs_INTERP7;
    let x_1448 : i32 = u_xlati18;
    let x_1450 : vec4<f32> = x_1447.x_AdditionalLightsPosition[x_1448];
    let x_1453 : i32 = u_xlati18;
    let x_1455 : vec4<f32> = x_1447.x_AdditionalLightsPosition[x_1453];
    u_xlat23 = ((-(x_1437) * vec3<f32>(x_1450.w, x_1450.w, x_1450.w)) + vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1459 : vec3<f32> = u_xlat23;
    let x_1460 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1459, x_1460);
    let x_1462 : f32 = u_xlat47;
    u_xlat47 = max(x_1462, 0.00006103515625f);
    let x_1466 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1466);
    let x_1469 : f32 = u_xlat48;
    let x_1471 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1469, x_1469, x_1469) * x_1471);
    let x_1474 : f32 = u_xlat47;
    u_xlat35 = (1.0f / x_1474);
    let x_1476 : f32 = u_xlat47;
    let x_1477 : i32 = u_xlati18;
    let x_1479 : f32 = x_1447.x_AdditionalLightsAttenuation[x_1477].x;
    u_xlat47 = (x_1476 * x_1479);
    let x_1481 : f32 = u_xlat47;
    let x_1483 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1481) * x_1483) + 1.0f);
    let x_1486 : f32 = u_xlat47;
    u_xlat47 = max(x_1486, 0.0f);
    let x_1488 : f32 = u_xlat47;
    let x_1489 : f32 = u_xlat47;
    u_xlat47 = (x_1488 * x_1489);
    let x_1491 : f32 = u_xlat47;
    let x_1492 : f32 = u_xlat35;
    u_xlat47 = (x_1491 * x_1492);
    let x_1494 : i32 = u_xlati18;
    let x_1496 : vec4<f32> = x_1447.x_AdditionalLightsSpotDir[x_1494];
    let x_1498 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1496.x, x_1496.y, x_1496.z), x_1498);
    let x_1500 : f32 = u_xlat35;
    let x_1501 : i32 = u_xlati18;
    let x_1503 : f32 = x_1447.x_AdditionalLightsAttenuation[x_1501].z;
    let x_1505 : i32 = u_xlati18;
    let x_1507 : f32 = x_1447.x_AdditionalLightsAttenuation[x_1505].w;
    u_xlat35 = ((x_1500 * x_1503) + x_1507);
    let x_1509 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1509, 0.0f, 1.0f);
    let x_1511 : f32 = u_xlat35;
    let x_1512 : f32 = u_xlat35;
    u_xlat35 = (x_1511 * x_1512);
    let x_1514 : f32 = u_xlat47;
    let x_1515 : f32 = u_xlat35;
    u_xlat47 = (x_1514 * x_1515);
    let x_1519 : i32 = u_xlati18;
    let x_1521 : f32 = x_497.x_AdditionalShadowParams[x_1519].w;
    u_xlati35 = i32(x_1521);
    let x_1524 : i32 = u_xlati35;
    u_xlatb49 = (x_1524 >= 0i);
    let x_1526 : bool = u_xlatb49;
    if (x_1526) {
      let x_1530 : i32 = u_xlati18;
      let x_1532 : f32 = x_497.x_AdditionalShadowParams[x_1530].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1532, x_1532, x_1532, x_1532))));
      let x_1536 : bool = u_xlatb49;
      if (x_1536) {
        let x_1540 : vec3<f32> = u_xlat10;
        let x_1543 : vec3<f32> = u_xlat10;
        let x_1546 : vec4<bool> = (abs(vec4<f32>(x_1540.z, x_1540.z, x_1540.y, x_1540.z)) >= abs(vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.x)));
        let x_1548 : vec3<bool> = vec3<bool>(x_1546.x, x_1546.y, x_1546.z);
        let x_1549 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
        let x_1552 : bool = u_xlatb11.y;
        let x_1554 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1552 & x_1554);
        let x_1556 : vec3<f32> = u_xlat10;
        let x_1559 : vec4<bool> = (-(vec4<f32>(x_1556.z, x_1556.y, x_1556.z, x_1556.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1560 : vec3<bool> = vec3<bool>(x_1559.x, x_1559.y, x_1559.w);
        let x_1561 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1560.x, x_1560.y, x_1561.z, x_1560.z);
        let x_1565 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1565);
        let x_1570 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1570);
        let x_1575 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1575);
        let x_1578 : bool = u_xlatb11.z;
        if (x_1578) {
          let x_1583 : f32 = u_xlat11.y;
          x_1579 = x_1583;
        } else {
          let x_1585 : f32 = u_xlat50;
          x_1579 = x_1585;
        }
        let x_1586 : f32 = x_1579;
        u_xlat50 = x_1586;
        let x_1588 : bool = u_xlatb49;
        if (x_1588) {
          let x_1593 : f32 = u_xlat11.x;
          x_1589 = x_1593;
        } else {
          let x_1595 : f32 = u_xlat50;
          x_1589 = x_1595;
        }
        let x_1596 : f32 = x_1589;
        u_xlat49 = x_1596;
        let x_1597 : i32 = u_xlati18;
        let x_1599 : f32 = x_497.x_AdditionalShadowParams[x_1597].w;
        u_xlat50 = trunc(x_1599);
        let x_1601 : f32 = u_xlat49;
        let x_1602 : f32 = u_xlat50;
        u_xlat49 = (x_1601 + x_1602);
        let x_1604 : f32 = u_xlat49;
        u_xlati35 = i32(x_1604);
      }
      let x_1606 : i32 = u_xlati35;
      u_xlati35 = (x_1606 << bitcast<u32>(2i));
      let x_1608 : vec3<f32> = vs_INTERP7;
      let x_1611 : i32 = u_xlati35;
      let x_1614 : i32 = u_xlati35;
      let x_1618 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1611 + 1i) / 4i)][((x_1614 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1608.y, x_1608.y, x_1608.y, x_1608.y) * x_1618);
      let x_1620 : i32 = u_xlati35;
      let x_1622 : i32 = u_xlati35;
      let x_1625 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_1620 / 4i)][(x_1622 % 4i)];
      let x_1626 : vec3<f32> = vs_INTERP7;
      let x_1629 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1625 * vec4<f32>(x_1626.x, x_1626.x, x_1626.x, x_1626.x)) + x_1629);
      let x_1631 : i32 = u_xlati35;
      let x_1634 : i32 = u_xlati35;
      let x_1638 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1631 + 2i) / 4i)][((x_1634 + 2i) % 4i)];
      let x_1639 : vec3<f32> = vs_INTERP7;
      let x_1642 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1638 * vec4<f32>(x_1639.z, x_1639.z, x_1639.z, x_1639.z)) + x_1642);
      let x_1644 : vec4<f32> = u_xlat11;
      let x_1645 : i32 = u_xlati35;
      let x_1648 : i32 = u_xlati35;
      let x_1652 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_1645 + 3i) / 4i)][((x_1648 + 3i) % 4i)];
      u_xlat11 = (x_1644 + x_1652);
      let x_1654 : vec4<f32> = u_xlat11;
      let x_1656 : vec4<f32> = u_xlat11;
      let x_1658 : vec3<f32> = (vec3<f32>(x_1654.x, x_1654.y, x_1654.z) / vec3<f32>(x_1656.w, x_1656.w, x_1656.w));
      let x_1659 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
      let x_1662 : vec4<f32> = u_xlat11;
      let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
      let x_1665 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
      let x_1673 : vec3<f32> = txVec1;
      let x_1675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1673.xy, x_1673.z);
      u_xlat35 = x_1675;
      let x_1676 : i32 = u_xlati18;
      let x_1678 : f32 = x_497.x_AdditionalShadowParams[x_1676].x;
      u_xlat49 = (1.0f + -(x_1678));
      let x_1681 : f32 = u_xlat35;
      let x_1682 : i32 = u_xlati18;
      let x_1684 : f32 = x_497.x_AdditionalShadowParams[x_1682].x;
      let x_1686 : f32 = u_xlat49;
      u_xlat35 = ((x_1681 * x_1684) + x_1686);
      let x_1689 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1689);
      let x_1693 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1693 >= 1.0f);
      let x_1695 : bool = u_xlatb49;
      let x_1696 : bool = u_xlatb50;
      u_xlatb49 = (x_1695 | x_1696);
      let x_1698 : bool = u_xlatb49;
      let x_1699 : f32 = u_xlat35;
      u_xlat35 = select(x_1699, 1.0f, x_1698);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1702 : f32 = u_xlat35;
    u_xlat49 = (-(x_1702) + 1.0f);
    let x_1706 : f32 = u_xlat2.x;
    let x_1707 : f32 = u_xlat49;
    let x_1709 : f32 = u_xlat35;
    u_xlat35 = ((x_1706 * x_1707) + x_1709);
    let x_1712 : i32 = u_xlati18;
    u_xlati49 = (1i << bitcast<u32>((x_1712 & 31i)));
    let x_1716 : i32 = u_xlati49;
    let x_1719 : f32 = x_977.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1716) & bitcast<u32>(x_1719)));
    let x_1723 : i32 = u_xlati49;
    if ((x_1723 != 0i)) {
      let x_1727 : i32 = u_xlati18;
      let x_1729 : f32 = x_977.x_AdditionalLightsLightTypes[x_1727].el;
      u_xlati49 = i32(x_1729);
      let x_1732 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1732 != 0i));
      let x_1736 : i32 = u_xlati18;
      u_xlati52 = (x_1736 << bitcast<u32>(2i));
      let x_1738 : i32 = u_xlati50;
      if ((x_1738 != 0i)) {
        let x_1742 : vec3<f32> = vs_INTERP7;
        let x_1744 : i32 = u_xlati52;
        let x_1747 : i32 = u_xlati52;
        let x_1751 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1744 + 1i) / 4i)][((x_1747 + 1i) % 4i)];
        let x_1753 : vec3<f32> = (vec3<f32>(x_1742.y, x_1742.y, x_1742.y) * vec3<f32>(x_1751.x, x_1751.y, x_1751.w));
        let x_1754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
        let x_1756 : i32 = u_xlati52;
        let x_1758 : i32 = u_xlati52;
        let x_1761 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[(x_1756 / 4i)][(x_1758 % 4i)];
        let x_1763 : vec3<f32> = vs_INTERP7;
        let x_1766 : vec4<f32> = u_xlat11;
        let x_1768 : vec3<f32> = ((vec3<f32>(x_1761.x, x_1761.y, x_1761.w) * vec3<f32>(x_1763.x, x_1763.x, x_1763.x)) + vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
        let x_1771 : i32 = u_xlati52;
        let x_1774 : i32 = u_xlati52;
        let x_1778 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1771 + 2i) / 4i)][((x_1774 + 2i) % 4i)];
        let x_1780 : vec3<f32> = vs_INTERP7;
        let x_1783 : vec4<f32> = u_xlat11;
        let x_1785 : vec3<f32> = ((vec3<f32>(x_1778.x, x_1778.y, x_1778.w) * vec3<f32>(x_1780.z, x_1780.z, x_1780.z)) + vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
        let x_1786 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
        let x_1788 : vec4<f32> = u_xlat11;
        let x_1790 : i32 = u_xlati52;
        let x_1793 : i32 = u_xlati52;
        let x_1797 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1790 + 3i) / 4i)][((x_1793 + 3i) % 4i)];
        let x_1799 : vec3<f32> = (vec3<f32>(x_1788.x, x_1788.y, x_1788.z) + vec3<f32>(x_1797.x, x_1797.y, x_1797.w));
        let x_1800 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
        let x_1802 : vec4<f32> = u_xlat11;
        let x_1804 : vec4<f32> = u_xlat11;
        let x_1806 : vec2<f32> = (vec2<f32>(x_1802.x, x_1802.y) / vec2<f32>(x_1804.z, x_1804.z));
        let x_1807 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1806.x, x_1806.y, x_1807.z, x_1807.w);
        let x_1809 : vec4<f32> = u_xlat11;
        let x_1812 : vec2<f32> = ((vec2<f32>(x_1809.x, x_1809.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1813 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1812.x, x_1812.y, x_1813.z, x_1813.w);
        let x_1815 : vec4<f32> = u_xlat11;
        let x_1819 : vec2<f32> = clamp(vec2<f32>(x_1815.x, x_1815.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1820 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1819.x, x_1819.y, x_1820.z, x_1820.w);
        let x_1822 : i32 = u_xlati18;
        let x_1824 : vec4<f32> = x_977.x_AdditionalLightsCookieAtlasUVRects[x_1822];
        let x_1826 : vec4<f32> = u_xlat11;
        let x_1829 : i32 = u_xlati18;
        let x_1831 : vec4<f32> = x_977.x_AdditionalLightsCookieAtlasUVRects[x_1829];
        let x_1833 : vec2<f32> = ((vec2<f32>(x_1824.x, x_1824.y) * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1831.z, x_1831.w));
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
      } else {
        let x_1837 : i32 = u_xlati49;
        u_xlatb49 = (x_1837 == 1i);
        let x_1839 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1839);
        let x_1841 : i32 = u_xlati49;
        if ((x_1841 != 0i)) {
          let x_1846 : vec3<f32> = vs_INTERP7;
          let x_1848 : i32 = u_xlati52;
          let x_1851 : i32 = u_xlati52;
          let x_1855 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1848 + 1i) / 4i)][((x_1851 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1846.y, x_1846.y) * vec2<f32>(x_1855.x, x_1855.y));
          let x_1858 : i32 = u_xlati52;
          let x_1860 : i32 = u_xlati52;
          let x_1863 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[(x_1858 / 4i)][(x_1860 % 4i)];
          let x_1865 : vec3<f32> = vs_INTERP7;
          let x_1868 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1863.x, x_1863.y) * vec2<f32>(x_1865.x, x_1865.x)) + x_1868);
          let x_1870 : i32 = u_xlati52;
          let x_1873 : i32 = u_xlati52;
          let x_1877 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1870 + 2i) / 4i)][((x_1873 + 2i) % 4i)];
          let x_1879 : vec3<f32> = vs_INTERP7;
          let x_1882 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1877.x, x_1877.y) * vec2<f32>(x_1879.z, x_1879.z)) + x_1882);
          let x_1884 : vec2<f32> = u_xlat39;
          let x_1885 : i32 = u_xlati52;
          let x_1888 : i32 = u_xlati52;
          let x_1892 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1885 + 3i) / 4i)][((x_1888 + 3i) % 4i)];
          u_xlat39 = (x_1884 + vec2<f32>(x_1892.x, x_1892.y));
          let x_1895 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1895 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1898 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1898);
          let x_1900 : i32 = u_xlati18;
          let x_1902 : vec4<f32> = x_977.x_AdditionalLightsCookieAtlasUVRects[x_1900];
          let x_1904 : vec2<f32> = u_xlat39;
          let x_1906 : i32 = u_xlati18;
          let x_1908 : vec4<f32> = x_977.x_AdditionalLightsCookieAtlasUVRects[x_1906];
          let x_1910 : vec2<f32> = ((vec2<f32>(x_1902.x, x_1902.y) * x_1904) + vec2<f32>(x_1908.z, x_1908.w));
          let x_1911 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1910.x, x_1910.y, x_1911.z, x_1911.w);
        } else {
          let x_1915 : vec3<f32> = vs_INTERP7;
          let x_1917 : i32 = u_xlati52;
          let x_1920 : i32 = u_xlati52;
          let x_1924 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1917 + 1i) / 4i)][((x_1920 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1915.y, x_1915.y, x_1915.y, x_1915.y) * x_1924);
          let x_1926 : i32 = u_xlati52;
          let x_1928 : i32 = u_xlati52;
          let x_1931 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[(x_1926 / 4i)][(x_1928 % 4i)];
          let x_1932 : vec3<f32> = vs_INTERP7;
          let x_1935 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1931 * vec4<f32>(x_1932.x, x_1932.x, x_1932.x, x_1932.x)) + x_1935);
          let x_1937 : i32 = u_xlati52;
          let x_1940 : i32 = u_xlati52;
          let x_1944 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1937 + 2i) / 4i)][((x_1940 + 2i) % 4i)];
          let x_1945 : vec3<f32> = vs_INTERP7;
          let x_1948 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1944 * vec4<f32>(x_1945.z, x_1945.z, x_1945.z, x_1945.z)) + x_1948);
          let x_1950 : vec4<f32> = u_xlat12;
          let x_1951 : i32 = u_xlati52;
          let x_1954 : i32 = u_xlati52;
          let x_1958 : vec4<f32> = x_977.x_AdditionalLightsWorldToLights[((x_1951 + 3i) / 4i)][((x_1954 + 3i) % 4i)];
          u_xlat12 = (x_1950 + x_1958);
          let x_1960 : vec4<f32> = u_xlat12;
          let x_1962 : vec4<f32> = u_xlat12;
          let x_1964 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) / vec3<f32>(x_1962.w, x_1962.w, x_1962.w));
          let x_1965 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
          let x_1967 : vec4<f32> = u_xlat12;
          let x_1969 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
          let x_1972 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1972);
          let x_1974 : f32 = u_xlat49;
          let x_1976 : vec4<f32> = u_xlat12;
          let x_1978 : vec3<f32> = (vec3<f32>(x_1974, x_1974, x_1974) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
          let x_1979 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
          let x_1981 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1981.x, x_1981.y, x_1981.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1985 : f32 = u_xlat49;
          u_xlat49 = max(x_1985, 0.00000099999999747524f);
          let x_1988 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1988);
          let x_1991 : f32 = u_xlat49;
          let x_1993 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1991, x_1991, x_1991) * vec3<f32>(x_1993.z, x_1993.x, x_1993.y));
          let x_1997 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1997);
          let x_2001 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2001, 0.0f, 1.0f);
          let x_2005 : vec3<f32> = u_xlat13;
          let x_2007 : vec4<bool> = (vec4<f32>(x_2005.y, x_2005.z, x_2005.y, x_2005.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2007.x, x_2007.y);
          let x_2010 : bool = u_xlatb39.x;
          if (x_2010) {
            let x_2015 : f32 = u_xlat13.x;
            x_2011 = x_2015;
          } else {
            let x_2018 : f32 = u_xlat13.x;
            x_2011 = -(x_2018);
          }
          let x_2020 : f32 = x_2011;
          u_xlat39.x = x_2020;
          let x_2023 : bool = u_xlatb39.y;
          if (x_2023) {
            let x_2028 : f32 = u_xlat13.x;
            x_2024 = x_2028;
          } else {
            let x_2031 : f32 = u_xlat13.x;
            x_2024 = -(x_2031);
          }
          let x_2033 : f32 = x_2024;
          u_xlat39.y = x_2033;
          let x_2035 : vec4<f32> = u_xlat12;
          let x_2037 : f32 = u_xlat49;
          let x_2040 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2035.x, x_2035.y) * vec2<f32>(x_2037, x_2037)) + x_2040);
          let x_2042 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2042 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2045 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2045, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2049 : i32 = u_xlati18;
          let x_2051 : vec4<f32> = x_977.x_AdditionalLightsCookieAtlasUVRects[x_2049];
          let x_2053 : vec2<f32> = u_xlat39;
          let x_2055 : i32 = u_xlati18;
          let x_2057 : vec4<f32> = x_977.x_AdditionalLightsCookieAtlasUVRects[x_2055];
          let x_2059 : vec2<f32> = ((vec2<f32>(x_2051.x, x_2051.y) * x_2053) + vec2<f32>(x_2057.z, x_2057.w));
          let x_2060 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
        }
      }
      let x_2067 : vec4<f32> = u_xlat11;
      let x_2069 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2067.x, x_2067.y), 0.0f);
      u_xlat11 = x_2069;
      let x_2071 : bool = u_xlatb7.y;
      if (x_2071) {
        let x_2076 : f32 = u_xlat11.w;
        x_2072 = x_2076;
      } else {
        let x_2079 : f32 = u_xlat11.x;
        x_2072 = x_2079;
      }
      let x_2080 : f32 = x_2072;
      u_xlat49 = x_2080;
      let x_2082 : bool = u_xlatb7.x;
      if (x_2082) {
        let x_2086 : vec4<f32> = u_xlat11;
        x_2083 = vec3<f32>(x_2086.x, x_2086.y, x_2086.z);
      } else {
        let x_2089 : f32 = u_xlat49;
        x_2083 = vec3<f32>(x_2089, x_2089, x_2089);
      }
      let x_2091 : vec3<f32> = x_2083;
      let x_2092 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2098 : vec4<f32> = u_xlat11;
    let x_2100 : i32 = u_xlati18;
    let x_2102 : vec4<f32> = x_1447.x_AdditionalLightsColor[x_2100];
    let x_2104 : vec3<f32> = (vec3<f32>(x_2098.x, x_2098.y, x_2098.z) * vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
    let x_2107 : f32 = u_xlat47;
    let x_2108 : f32 = u_xlat35;
    u_xlat18.x = (x_2107 * x_2108);
    let x_2111 : vec4<f32> = u_xlat1;
    let x_2113 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2111.x, x_2111.y, x_2111.z), x_2113);
    let x_2115 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2115, 0.0f, 1.0f);
    let x_2118 : f32 = u_xlat18.x;
    let x_2119 : f32 = u_xlat47;
    u_xlat18.x = (x_2118 * x_2119);
    let x_2122 : vec3<f32> = u_xlat18;
    let x_2124 : vec4<f32> = u_xlat11;
    let x_2126 : vec3<f32> = (vec3<f32>(x_2122.x, x_2122.x, x_2122.x) * vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
    let x_2127 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
    let x_2129 : vec3<f32> = u_xlat23;
    let x_2130 : f32 = u_xlat48;
    let x_2133 : vec4<f32> = u_xlat3;
    u_xlat23 = ((x_2129 * vec3<f32>(x_2130, x_2130, x_2130)) + vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
    let x_2136 : vec3<f32> = u_xlat23;
    let x_2137 : vec3<f32> = u_xlat23;
    u_xlat18.x = dot(x_2136, x_2137);
    let x_2141 : f32 = u_xlat18.x;
    u_xlat18.x = max(x_2141, 1.17549435e-38f);
    let x_2145 : f32 = u_xlat18.x;
    u_xlat18.x = inverseSqrt(x_2145);
    let x_2148 : vec3<f32> = u_xlat18;
    let x_2150 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2148.x, x_2148.x, x_2148.x) * x_2150);
    let x_2152 : vec4<f32> = u_xlat1;
    let x_2154 : vec3<f32> = u_xlat23;
    u_xlat18.x = dot(vec3<f32>(x_2152.x, x_2152.y, x_2152.z), x_2154);
    let x_2158 : f32 = u_xlat18.x;
    u_xlat18.x = clamp(x_2158, 0.0f, 1.0f);
    let x_2161 : vec3<f32> = u_xlat10;
    let x_2162 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_2161, x_2162);
    let x_2164 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2164, 0.0f, 1.0f);
    let x_2167 : f32 = u_xlat18.x;
    let x_2169 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2167 * x_2169);
    let x_2173 : f32 = u_xlat18.x;
    let x_2175 : f32 = u_xlat9.x;
    u_xlat18.x = ((x_2173 * x_2175) + 1.00001001358032226562f);
    let x_2179 : f32 = u_xlat47;
    let x_2180 : f32 = u_xlat47;
    u_xlat47 = (x_2179 * x_2180);
    let x_2183 : f32 = u_xlat18.x;
    let x_2185 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2183 * x_2185);
    let x_2188 : f32 = u_xlat47;
    u_xlat47 = max(x_2188, 0.10000000149011611938f);
    let x_2191 : f32 = u_xlat18.x;
    let x_2192 : f32 = u_xlat47;
    u_xlat18.x = (x_2191 * x_2192);
    let x_2195 : f32 = u_xlat44;
    let x_2197 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2195 * x_2197);
    let x_2200 : f32 = u_xlat45;
    let x_2202 : f32 = u_xlat18.x;
    u_xlat18.x = (x_2200 / x_2202);
    let x_2205 : vec4<f32> = u_xlat0;
    let x_2207 : vec3<f32> = u_xlat18;
    let x_2210 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * vec3<f32>(x_2207.x, x_2207.x, x_2207.x)) + vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
    let x_2213 : vec3<f32> = u_xlat23;
    let x_2214 : vec4<f32> = u_xlat11;
    let x_2217 : vec4<f32> = u_xlat8;
    let x_2219 : vec3<f32> = ((x_2213 * vec3<f32>(x_2214.x, x_2214.y, x_2214.z)) + vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
    let x_2220 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);

    continuing {
      let x_2222 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2222 + bitcast<u32>(1i));
    }
  }
  let x_2224 : vec4<f32> = u_xlat5;
  let x_2226 : f32 = u_xlat30;
  let x_2229 : vec4<f32> = u_xlat4;
  let x_2231 : vec3<f32> = ((vec3<f32>(x_2224.x, x_2224.y, x_2224.z) * vec3<f32>(x_2226, x_2226, x_2226)) + vec3<f32>(x_2229.x, x_2229.z, x_2229.w));
  let x_2232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
  let x_2234 : vec4<f32> = u_xlat8;
  let x_2236 : vec4<f32> = u_xlat0;
  let x_2238 : vec3<f32> = (vec3<f32>(x_2234.x, x_2234.y, x_2234.z) + vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
  let x_2241 : f32 = u_xlat42;
  let x_2242 : f32 = u_xlat42;
  u_xlat42 = (x_2241 * -(x_2242));
  let x_2245 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2245);
  let x_2247 : vec4<f32> = u_xlat0;
  let x_2250 : vec4<f32> = x_29.unity_FogColor;
  let x_2253 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) + -(vec3<f32>(x_2250.x, x_2250.y, x_2250.z)));
  let x_2254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
  let x_2258 : f32 = u_xlat42;
  let x_2260 : vec4<f32> = u_xlat0;
  let x_2264 : vec4<f32> = x_29.unity_FogColor;
  let x_2266 : vec3<f32> = ((vec3<f32>(x_2258, x_2258, x_2258) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z)) + vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


