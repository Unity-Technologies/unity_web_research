diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu11 : u32;

var<private> u_xlati11 : i32;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_556 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_802 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var x_640 : f32;
  var x_651 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_932 : f32;
  var x_942 : f32;
  var txVec1 : vec3<f32>;
  var x_1366 : f32;
  var x_1379 : f32;
  var x_1427 : f32;
  var x_1438 : vec3<f32>;
  var x_1542 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat11 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat33;
  let x_91 : f32 = u_xlat22;
  u_xlat22 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat22;
  u_xlat22 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat11;
  let x_98 : f32 = u_xlat22;
  u_xlat11 = (x_97 / x_98);
  let x_100 : f32 = u_xlat11;
  u_xlat11 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat11;
  u_xlat11 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb22;
  if (x_110) {
    let x_114 : f32 = u_xlat11;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat11 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat11;
  u_xlatb11 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb11;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat11;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_151 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_189 : vec3<f32> = vs_TEXCOORD1;
  let x_191 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_189 + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = u_xlat6;
  let x_216 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_215, x_216);
  let x_222 : vec4<f32> = u_xlat3;
  let x_225 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_222 < x_225);
  let x_228 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_244);
  let x_250 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_250);
  let x_254 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_254);
  let x_257 : vec4<f32> = u_xlat3;
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + vec3<f32>(x_259.y, x_259.z, x_259.w));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat3;
  let x_267 : vec3<f32> = max(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_267.x, x_267.y, x_267.z);
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat11 = dot(x_270, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat11;
  u_xlat11 = (-(x_276) + 4.0f);
  let x_281 : f32 = u_xlat11;
  u_xlatu11 = u32(x_281);
  let x_285 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_285) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati11;
  let x_293 : i32 = u_xlati11;
  let x_297 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  let x_299 : vec3<f32> = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : i32 = u_xlati11;
  let x_304 : i32 = u_xlati11;
  let x_307 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_302 / 4i)][(x_304 % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati11;
  let x_320 : i32 = u_xlati11;
  let x_324 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_317 + 2i) / 4i)][((x_320 + 2i) % 4i)];
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : i32 = u_xlati11;
  let x_339 : i32 = u_xlati11;
  let x_343 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_336 + 3i) / 4i)][((x_339 + 3i) % 4i)];
  let x_345 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_350 : f32 = vs_TEXCOORD1.y;
  let x_353 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_350 * x_353);
  let x_356 : f32 = x_28.unity_MatrixV[0i].z;
  let x_358 : f32 = vs_TEXCOORD1.x;
  let x_360 : f32 = u_xlat11;
  u_xlat11 = ((x_356 * x_358) + x_360);
  let x_363 : f32 = x_28.unity_MatrixV[2i].z;
  let x_365 : f32 = vs_TEXCOORD1.z;
  let x_367 : f32 = u_xlat11;
  u_xlat11 = ((x_363 * x_365) + x_367);
  let x_369 : f32 = u_xlat11;
  let x_371 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_369 + x_371);
  let x_373 : f32 = u_xlat11;
  let x_377 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_373) + -(x_377));
  let x_380 : f32 = u_xlat11;
  u_xlat11 = max(x_380, 0.0f);
  let x_382 : f32 = u_xlat11;
  let x_385 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_382 * x_385);
  u_xlat2.w = 1.0f;
  let x_394 : vec4<f32> = x_391.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_394, x_395);
  let x_400 : vec4<f32> = x_391.unity_SHAg;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_391.unity_SHAb;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_406, x_407);
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_410.y, x_410.z, x_410.z, x_410.x) * vec4<f32>(x_412.x, x_412.y, x_412.z, x_412.z));
  let x_417 : vec4<f32> = x_391.unity_SHBr;
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_391.unity_SHBg;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_391.unity_SHBb;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_429, x_430);
  let x_434 : f32 = u_xlat2.y;
  let x_436 : f32 = u_xlat2.y;
  u_xlat33 = (x_434 * x_436);
  let x_439 : f32 = u_xlat2.x;
  let x_441 : f32 = u_xlat2.x;
  let x_443 : f32 = u_xlat33;
  u_xlat33 = ((x_439 * x_441) + -(x_443));
  let x_448 : vec4<f32> = x_391.unity_SHC;
  let x_450 : f32 = u_xlat33;
  let x_453 : vec3<f32> = u_xlat6;
  let x_454 : vec3<f32> = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450, x_450, x_450)) + x_453);
  let x_455 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat5;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec3<f32> = max(vec3<f32>(x_464.x, x_464.y, x_464.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_471 : vec4<f32> = u_xlat3;
  let x_472 : vec2<f32> = vec2<f32>(x_471.x, x_471.y);
  let x_474 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_472.x, x_472.y, x_474);
  let x_486 : vec3<f32> = txVec0;
  let x_488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_486.xy, x_486.z);
  u_xlat33 = x_488;
  let x_491 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_491) + 1.0f);
  let x_495 : f32 = u_xlat33;
  let x_497 : f32 = x_159.x_MainLightShadowParams.x;
  let x_500 : f32 = u_xlat1.x;
  u_xlat33 = ((x_495 * x_497) + x_500);
  let x_504 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_504);
  let x_508 : f32 = u_xlat3.z;
  u_xlatb35 = (x_508 >= 1.0f);
  let x_510 : bool = u_xlatb1;
  let x_511 : bool = u_xlatb35;
  u_xlatb1 = (x_510 | x_511);
  let x_513 : bool = u_xlatb1;
  let x_514 : f32 = u_xlat33;
  u_xlat33 = select(x_514, 1.0f, x_513);
  let x_516 : vec3<f32> = vs_TEXCOORD1;
  let x_519 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_521 : vec3<f32> = (x_516 + -(x_519));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat3;
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_532 : f32 = u_xlat1.x;
  let x_534 : f32 = x_159.x_MainLightShadowParams.z;
  let x_537 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat35 = ((x_532 * x_534) + x_537);
  let x_539 : f32 = u_xlat35;
  u_xlat35 = clamp(x_539, 0.0f, 1.0f);
  let x_541 : f32 = u_xlat33;
  u_xlat3.x = (-(x_541) + 1.0f);
  let x_545 : f32 = u_xlat35;
  let x_547 : f32 = u_xlat3.x;
  let x_549 : f32 = u_xlat33;
  u_xlat33 = ((x_545 * x_547) + x_549);
  let x_558 : f32 = x_556.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_558 == -1.0f));
  let x_560 : bool = u_xlatb35;
  if (x_560) {
    let x_563 : vec3<f32> = vs_TEXCOORD1;
    let x_566 : vec4<f32> = x_556.x_MainLightWorldToLight[1i];
    let x_568 : vec2<f32> = (vec2<f32>(x_563.y, x_563.y) * vec2<f32>(x_566.x, x_566.y));
    let x_569 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
    let x_572 : vec4<f32> = x_556.x_MainLightWorldToLight[0i];
    let x_574 : vec3<f32> = vs_TEXCOORD1;
    let x_577 : vec4<f32> = u_xlat3;
    let x_579 : vec2<f32> = ((vec2<f32>(x_572.x, x_572.y) * vec2<f32>(x_574.x, x_574.x)) + vec2<f32>(x_577.x, x_577.y));
    let x_580 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
    let x_583 : vec4<f32> = x_556.x_MainLightWorldToLight[2i];
    let x_585 : vec3<f32> = vs_TEXCOORD1;
    let x_588 : vec4<f32> = u_xlat3;
    let x_590 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_585.z, x_585.z)) + vec2<f32>(x_588.x, x_588.y));
    let x_591 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
    let x_593 : vec4<f32> = u_xlat3;
    let x_596 : vec4<f32> = x_556.x_MainLightWorldToLight[3i];
    let x_598 : vec2<f32> = (vec2<f32>(x_593.x, x_593.y) + vec2<f32>(x_596.x, x_596.y));
    let x_599 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
    let x_601 : vec4<f32> = u_xlat3;
    let x_605 : vec2<f32> = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_606 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
    let x_613 : vec4<f32> = u_xlat3;
    let x_616 : f32 = x_28.x_GlobalMipBias.x;
    let x_617 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_613.x, x_613.y), x_616);
    u_xlat3 = x_617;
    let x_622 : f32 = x_556.x_MainLightCookieTextureFormat;
    let x_624 : f32 = x_556.x_MainLightCookieTextureFormat;
    let x_626 : f32 = x_556.x_MainLightCookieTextureFormat;
    let x_628 : f32 = x_556.x_MainLightCookieTextureFormat;
    let x_629 : vec4<f32> = vec4<f32>(x_622, x_624, x_626, x_628);
    let x_636 : vec4<bool> = (vec4<f32>(x_629.x, x_629.y, x_629.z, x_629.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_636.x, x_636.y);
    let x_639 : bool = u_xlatb5.y;
    if (x_639) {
      let x_644 : f32 = u_xlat3.w;
      x_640 = x_644;
    } else {
      let x_647 : f32 = u_xlat3.x;
      x_640 = x_647;
    }
    let x_648 : f32 = x_640;
    u_xlat35 = x_648;
    let x_650 : bool = u_xlatb5.x;
    if (x_650) {
      let x_654 : vec4<f32> = u_xlat3;
      x_651 = vec3<f32>(x_654.x, x_654.y, x_654.z);
    } else {
      let x_657 : f32 = u_xlat35;
      x_651 = vec3<f32>(x_657, x_657, x_657);
    }
    let x_659 : vec3<f32> = x_651;
    let x_660 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_666 : vec4<f32> = u_xlat3;
  let x_669 : vec4<f32> = x_28.x_MainLightColor;
  let x_671 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : f32 = u_xlat33;
  let x_676 : f32 = x_391.unity_LightData.z;
  u_xlat33 = (x_674 * x_676);
  let x_678 : f32 = u_xlat33;
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : vec3<f32> = (vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat2;
  let x_688 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : f32 = u_xlat33;
  u_xlat33 = clamp(x_691, 0.0f, 1.0f);
  let x_693 : f32 = u_xlat33;
  let x_695 : vec4<f32> = u_xlat3;
  let x_697 : vec3<f32> = (vec3<f32>(x_693, x_693, x_693) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat1;
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = (vec3<f32>(x_700.y, x_700.z, x_700.w) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_708 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_710 : f32 = x_391.unity_LightData.y;
  u_xlat33 = min(x_708, x_710);
  let x_713 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_713));
  let x_717 : f32 = u_xlat1.x;
  let x_720 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_723 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_717 * x_720) + x_723);
  let x_727 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_727, 0.0f, 1.0f);
  let x_731 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_733 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_735 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_737 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_738 : vec4<f32> = vec4<f32>(x_731, x_733, x_735, x_737);
  let x_744 : vec4<bool> = (vec4<f32>(x_738.x, x_738.y, x_738.z, x_738.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_744.x, x_744.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_756 : u32 = u_xlatu_loop_1;
    let x_757 : u32 = u_xlatu33;
    if ((x_756 < x_757)) {
    } else {
      break;
    }
    let x_760 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_760 >> 2u);
    let x_763 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_763 & 3u));
    let x_767 : u32 = u_xlatu36;
    let x_770 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_767)];
    let x_780 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_785 : vec4<u32> = indexable[x_780];
    u_xlat36 = dot(x_770, bitcast<vec4<f32>>(x_785));
    let x_789 : f32 = u_xlat36;
    u_xlati36 = i32(x_789);
    let x_792 : vec3<f32> = vs_TEXCOORD1;
    let x_803 : i32 = u_xlati36;
    let x_805 : vec4<f32> = x_802.x_AdditionalLightsPosition[x_803];
    let x_808 : i32 = u_xlati36;
    let x_810 : vec4<f32> = x_802.x_AdditionalLightsPosition[x_808];
    u_xlat7 = ((-(x_792) * vec3<f32>(x_805.w, x_805.w, x_805.w)) + vec3<f32>(x_810.x, x_810.y, x_810.z));
    let x_814 : vec3<f32> = u_xlat7;
    let x_815 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_814, x_815);
    let x_817 : f32 = u_xlat37;
    u_xlat37 = max(x_817, 0.00006103515625f);
    let x_821 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_821);
    let x_823 : f32 = u_xlat27;
    let x_825 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_823, x_823, x_823) * x_825);
    let x_827 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_827);
    let x_829 : f32 = u_xlat37;
    let x_830 : i32 = u_xlati36;
    let x_832 : f32 = x_802.x_AdditionalLightsAttenuation[x_830].x;
    u_xlat37 = (x_829 * x_832);
    let x_834 : f32 = u_xlat37;
    let x_836 : f32 = u_xlat37;
    u_xlat37 = ((-(x_834) * x_836) + 1.0f);
    let x_839 : f32 = u_xlat37;
    u_xlat37 = max(x_839, 0.0f);
    let x_841 : f32 = u_xlat37;
    let x_842 : f32 = u_xlat37;
    u_xlat37 = (x_841 * x_842);
    let x_844 : f32 = u_xlat37;
    let x_845 : f32 = u_xlat27;
    u_xlat37 = (x_844 * x_845);
    let x_847 : i32 = u_xlati36;
    let x_849 : vec4<f32> = x_802.x_AdditionalLightsSpotDir[x_847];
    let x_851 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_849.x, x_849.y, x_849.z), x_851);
    let x_853 : f32 = u_xlat27;
    let x_854 : i32 = u_xlati36;
    let x_856 : f32 = x_802.x_AdditionalLightsAttenuation[x_854].z;
    let x_858 : i32 = u_xlati36;
    let x_860 : f32 = x_802.x_AdditionalLightsAttenuation[x_858].w;
    u_xlat27 = ((x_853 * x_856) + x_860);
    let x_862 : f32 = u_xlat27;
    u_xlat27 = clamp(x_862, 0.0f, 1.0f);
    let x_864 : f32 = u_xlat27;
    let x_865 : f32 = u_xlat27;
    u_xlat27 = (x_864 * x_865);
    let x_867 : f32 = u_xlat37;
    let x_868 : f32 = u_xlat27;
    u_xlat37 = (x_867 * x_868);
    let x_872 : i32 = u_xlati36;
    let x_874 : f32 = x_159.x_AdditionalShadowParams[x_872].w;
    u_xlati27 = i32(x_874);
    let x_877 : i32 = u_xlati27;
    u_xlatb38 = (x_877 >= 0i);
    let x_879 : bool = u_xlatb38;
    if (x_879) {
      let x_883 : i32 = u_xlati36;
      let x_885 : f32 = x_159.x_AdditionalShadowParams[x_883].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_885, x_885, x_885, x_885))));
      let x_889 : bool = u_xlatb38;
      if (x_889) {
        let x_893 : vec3<f32> = u_xlat7;
        let x_896 : vec3<f32> = u_xlat7;
        let x_899 : vec4<bool> = (abs(vec4<f32>(x_893.z, x_893.z, x_893.y, x_893.z)) >= abs(vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.x)));
        let x_901 : vec3<bool> = vec3<bool>(x_899.x, x_899.y, x_899.z);
        let x_902 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_905 : bool = u_xlatb8.y;
        let x_907 : bool = u_xlatb8.x;
        u_xlatb38 = (x_905 & x_907);
        let x_909 : vec3<f32> = u_xlat7;
        let x_912 : vec4<bool> = (-(vec4<f32>(x_909.z, x_909.y, x_909.z, x_909.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_913 : vec3<bool> = vec3<bool>(x_912.x, x_912.y, x_912.w);
        let x_914 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_913.x, x_913.y, x_914.z, x_913.z);
        let x_918 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_918);
        let x_923 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_923);
        let x_928 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_928);
        let x_931 : bool = u_xlatb8.z;
        if (x_931) {
          let x_936 : f32 = u_xlat8.y;
          x_932 = x_936;
        } else {
          let x_938 : f32 = u_xlat39;
          x_932 = x_938;
        }
        let x_939 : f32 = x_932;
        u_xlat39 = x_939;
        let x_941 : bool = u_xlatb38;
        if (x_941) {
          let x_946 : f32 = u_xlat8.x;
          x_942 = x_946;
        } else {
          let x_948 : f32 = u_xlat39;
          x_942 = x_948;
        }
        let x_949 : f32 = x_942;
        u_xlat38 = x_949;
        let x_950 : i32 = u_xlati36;
        let x_952 : f32 = x_159.x_AdditionalShadowParams[x_950].w;
        u_xlat39 = trunc(x_952);
        let x_954 : f32 = u_xlat38;
        let x_955 : f32 = u_xlat39;
        u_xlat38 = (x_954 + x_955);
        let x_957 : f32 = u_xlat38;
        u_xlati27 = i32(x_957);
      }
      let x_959 : i32 = u_xlati27;
      u_xlati27 = (x_959 << bitcast<u32>(2i));
      let x_961 : vec3<f32> = vs_TEXCOORD1;
      let x_964 : i32 = u_xlati27;
      let x_967 : i32 = u_xlati27;
      let x_971 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_964 + 1i) / 4i)][((x_967 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_961.y, x_961.y, x_961.y, x_961.y) * x_971);
      let x_973 : i32 = u_xlati27;
      let x_975 : i32 = u_xlati27;
      let x_978 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_973 / 4i)][(x_975 % 4i)];
      let x_979 : vec3<f32> = vs_TEXCOORD1;
      let x_982 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_978 * vec4<f32>(x_979.x, x_979.x, x_979.x, x_979.x)) + x_982);
      let x_984 : i32 = u_xlati27;
      let x_987 : i32 = u_xlati27;
      let x_991 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_984 + 2i) / 4i)][((x_987 + 2i) % 4i)];
      let x_992 : vec3<f32> = vs_TEXCOORD1;
      let x_995 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_991 * vec4<f32>(x_992.z, x_992.z, x_992.z, x_992.z)) + x_995);
      let x_997 : vec4<f32> = u_xlat8;
      let x_998 : i32 = u_xlati27;
      let x_1001 : i32 = u_xlati27;
      let x_1005 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_998 + 3i) / 4i)][((x_1001 + 3i) % 4i)];
      u_xlat8 = (x_997 + x_1005);
      let x_1007 : vec4<f32> = u_xlat8;
      let x_1009 : vec4<f32> = u_xlat8;
      let x_1011 : vec3<f32> = (vec3<f32>(x_1007.x, x_1007.y, x_1007.z) / vec3<f32>(x_1009.w, x_1009.w, x_1009.w));
      let x_1012 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
      let x_1015 : vec4<f32> = u_xlat8;
      let x_1016 : vec2<f32> = vec2<f32>(x_1015.x, x_1015.y);
      let x_1018 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1016.x, x_1016.y, x_1018);
      let x_1026 : vec3<f32> = txVec1;
      let x_1028 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
      u_xlat27 = x_1028;
      let x_1029 : i32 = u_xlati36;
      let x_1031 : f32 = x_159.x_AdditionalShadowParams[x_1029].x;
      u_xlat38 = (1.0f + -(x_1031));
      let x_1034 : f32 = u_xlat27;
      let x_1035 : i32 = u_xlati36;
      let x_1037 : f32 = x_159.x_AdditionalShadowParams[x_1035].x;
      let x_1039 : f32 = u_xlat38;
      u_xlat27 = ((x_1034 * x_1037) + x_1039);
      let x_1042 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1042);
      let x_1046 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1046 >= 1.0f);
      let x_1048 : bool = u_xlatb38;
      let x_1049 : bool = u_xlatb39;
      u_xlatb38 = (x_1048 | x_1049);
      let x_1051 : bool = u_xlatb38;
      let x_1052 : f32 = u_xlat27;
      u_xlat27 = select(x_1052, 1.0f, x_1051);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1055 : f32 = u_xlat27;
    u_xlat38 = (-(x_1055) + 1.0f);
    let x_1059 : f32 = u_xlat1.x;
    let x_1060 : f32 = u_xlat38;
    let x_1062 : f32 = u_xlat27;
    u_xlat27 = ((x_1059 * x_1060) + x_1062);
    let x_1065 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1065 & 31i)));
    let x_1069 : i32 = u_xlati38;
    let x_1072 : f32 = x_556.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1069) & bitcast<u32>(x_1072)));
    let x_1076 : i32 = u_xlati38;
    if ((x_1076 != 0i)) {
      let x_1080 : i32 = u_xlati36;
      let x_1082 : f32 = x_556.x_AdditionalLightsLightTypes[x_1080].el;
      u_xlati38 = i32(x_1082);
      let x_1085 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1085 != 0i));
      let x_1089 : i32 = u_xlati36;
      u_xlati40 = (x_1089 << bitcast<u32>(2i));
      let x_1091 : i32 = u_xlati39;
      if ((x_1091 != 0i)) {
        let x_1095 : vec3<f32> = vs_TEXCOORD1;
        let x_1097 : i32 = u_xlati40;
        let x_1100 : i32 = u_xlati40;
        let x_1104 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1097 + 1i) / 4i)][((x_1100 + 1i) % 4i)];
        let x_1106 : vec3<f32> = (vec3<f32>(x_1095.y, x_1095.y, x_1095.y) * vec3<f32>(x_1104.x, x_1104.y, x_1104.w));
        let x_1107 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : i32 = u_xlati40;
        let x_1111 : i32 = u_xlati40;
        let x_1114 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[(x_1109 / 4i)][(x_1111 % 4i)];
        let x_1116 : vec3<f32> = vs_TEXCOORD1;
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1121 : vec3<f32> = ((vec3<f32>(x_1114.x, x_1114.y, x_1114.w) * vec3<f32>(x_1116.x, x_1116.x, x_1116.x)) + vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : i32 = u_xlati40;
        let x_1127 : i32 = u_xlati40;
        let x_1131 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1124 + 2i) / 4i)][((x_1127 + 2i) % 4i)];
        let x_1133 : vec3<f32> = vs_TEXCOORD1;
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1138 : vec3<f32> = ((vec3<f32>(x_1131.x, x_1131.y, x_1131.w) * vec3<f32>(x_1133.z, x_1133.z, x_1133.z)) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1143 : i32 = u_xlati40;
        let x_1146 : i32 = u_xlati40;
        let x_1150 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1143 + 3i) / 4i)][((x_1146 + 3i) % 4i)];
        let x_1152 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) + vec3<f32>(x_1150.x, x_1150.y, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1159 : vec2<f32> = (vec2<f32>(x_1155.x, x_1155.y) / vec2<f32>(x_1157.z, x_1157.z));
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat8;
        let x_1172 : vec2<f32> = clamp(vec2<f32>(x_1168.x, x_1168.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : i32 = u_xlati36;
        let x_1177 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1175];
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1182 : i32 = u_xlati36;
        let x_1184 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1182];
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1184.z, x_1184.w));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
      } else {
        let x_1190 : i32 = u_xlati38;
        u_xlatb38 = (x_1190 == 1i);
        let x_1192 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1192);
        let x_1194 : i32 = u_xlati38;
        if ((x_1194 != 0i)) {
          let x_1200 : vec3<f32> = vs_TEXCOORD1;
          let x_1202 : i32 = u_xlati40;
          let x_1205 : i32 = u_xlati40;
          let x_1209 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1202 + 1i) / 4i)][((x_1205 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1200.y, x_1200.y) * vec2<f32>(x_1209.x, x_1209.y));
          let x_1212 : i32 = u_xlati40;
          let x_1214 : i32 = u_xlati40;
          let x_1217 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[(x_1212 / 4i)][(x_1214 % 4i)];
          let x_1219 : vec3<f32> = vs_TEXCOORD1;
          let x_1222 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1219.x, x_1219.x)) + x_1222);
          let x_1224 : i32 = u_xlati40;
          let x_1227 : i32 = u_xlati40;
          let x_1231 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1224 + 2i) / 4i)][((x_1227 + 2i) % 4i)];
          let x_1233 : vec3<f32> = vs_TEXCOORD1;
          let x_1236 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1233.z, x_1233.z)) + x_1236);
          let x_1238 : vec2<f32> = u_xlat30;
          let x_1239 : i32 = u_xlati40;
          let x_1242 : i32 = u_xlati40;
          let x_1246 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1239 + 3i) / 4i)][((x_1242 + 3i) % 4i)];
          u_xlat30 = (x_1238 + vec2<f32>(x_1246.x, x_1246.y));
          let x_1249 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1249 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1252 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1252);
          let x_1254 : i32 = u_xlati36;
          let x_1256 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1254];
          let x_1258 : vec2<f32> = u_xlat30;
          let x_1260 : i32 = u_xlati36;
          let x_1262 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1260];
          let x_1264 : vec2<f32> = ((vec2<f32>(x_1256.x, x_1256.y) * x_1258) + vec2<f32>(x_1262.z, x_1262.w));
          let x_1265 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
        } else {
          let x_1269 : vec3<f32> = vs_TEXCOORD1;
          let x_1271 : i32 = u_xlati40;
          let x_1274 : i32 = u_xlati40;
          let x_1278 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1271 + 1i) / 4i)][((x_1274 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1269.y, x_1269.y, x_1269.y, x_1269.y) * x_1278);
          let x_1280 : i32 = u_xlati40;
          let x_1282 : i32 = u_xlati40;
          let x_1285 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[(x_1280 / 4i)][(x_1282 % 4i)];
          let x_1286 : vec3<f32> = vs_TEXCOORD1;
          let x_1289 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1285 * vec4<f32>(x_1286.x, x_1286.x, x_1286.x, x_1286.x)) + x_1289);
          let x_1291 : i32 = u_xlati40;
          let x_1294 : i32 = u_xlati40;
          let x_1298 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1291 + 2i) / 4i)][((x_1294 + 2i) % 4i)];
          let x_1299 : vec3<f32> = vs_TEXCOORD1;
          let x_1302 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1298 * vec4<f32>(x_1299.z, x_1299.z, x_1299.z, x_1299.z)) + x_1302);
          let x_1304 : vec4<f32> = u_xlat9;
          let x_1305 : i32 = u_xlati40;
          let x_1308 : i32 = u_xlati40;
          let x_1312 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1305 + 3i) / 4i)][((x_1308 + 3i) % 4i)];
          u_xlat9 = (x_1304 + x_1312);
          let x_1314 : vec4<f32> = u_xlat9;
          let x_1316 : vec4<f32> = u_xlat9;
          let x_1318 : vec3<f32> = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) / vec3<f32>(x_1316.w, x_1316.w, x_1316.w));
          let x_1319 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
          let x_1321 : vec4<f32> = u_xlat9;
          let x_1323 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
          let x_1326 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1326);
          let x_1328 : f32 = u_xlat38;
          let x_1330 : vec4<f32> = u_xlat9;
          let x_1332 : vec3<f32> = (vec3<f32>(x_1328, x_1328, x_1328) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
          let x_1333 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
          let x_1335 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1335.x, x_1335.y, x_1335.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1340 : f32 = u_xlat38;
          u_xlat38 = max(x_1340, 0.00000099999999747524f);
          let x_1343 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1343);
          let x_1346 : f32 = u_xlat38;
          let x_1348 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1346, x_1346, x_1346) * vec3<f32>(x_1348.z, x_1348.x, x_1348.y));
          let x_1352 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1352);
          let x_1356 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1356, 0.0f, 1.0f);
          let x_1360 : vec3<f32> = u_xlat10;
          let x_1362 : vec4<bool> = (vec4<f32>(x_1360.y, x_1360.z, x_1360.y, x_1360.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1362.x, x_1362.y);
          let x_1365 : bool = u_xlatb30.x;
          if (x_1365) {
            let x_1370 : f32 = u_xlat10.x;
            x_1366 = x_1370;
          } else {
            let x_1373 : f32 = u_xlat10.x;
            x_1366 = -(x_1373);
          }
          let x_1375 : f32 = x_1366;
          u_xlat30.x = x_1375;
          let x_1378 : bool = u_xlatb30.y;
          if (x_1378) {
            let x_1383 : f32 = u_xlat10.x;
            x_1379 = x_1383;
          } else {
            let x_1386 : f32 = u_xlat10.x;
            x_1379 = -(x_1386);
          }
          let x_1388 : f32 = x_1379;
          u_xlat30.y = x_1388;
          let x_1390 : vec4<f32> = u_xlat9;
          let x_1392 : f32 = u_xlat38;
          let x_1395 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(x_1392, x_1392)) + x_1395);
          let x_1397 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1397 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1400 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1400, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1404 : i32 = u_xlati36;
          let x_1406 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1404];
          let x_1408 : vec2<f32> = u_xlat30;
          let x_1410 : i32 = u_xlati36;
          let x_1412 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1410];
          let x_1414 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.y) * x_1408) + vec2<f32>(x_1412.z, x_1412.w));
          let x_1415 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        }
      }
      let x_1422 : vec4<f32> = u_xlat8;
      let x_1424 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1422.x, x_1422.y), 0.0f);
      u_xlat8 = x_1424;
      let x_1426 : bool = u_xlatb5.y;
      if (x_1426) {
        let x_1431 : f32 = u_xlat8.w;
        x_1427 = x_1431;
      } else {
        let x_1434 : f32 = u_xlat8.x;
        x_1427 = x_1434;
      }
      let x_1435 : f32 = x_1427;
      u_xlat38 = x_1435;
      let x_1437 : bool = u_xlatb5.x;
      if (x_1437) {
        let x_1441 : vec4<f32> = u_xlat8;
        x_1438 = vec3<f32>(x_1441.x, x_1441.y, x_1441.z);
      } else {
        let x_1444 : f32 = u_xlat38;
        x_1438 = vec3<f32>(x_1444, x_1444, x_1444);
      }
      let x_1446 : vec3<f32> = x_1438;
      let x_1447 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1453 : vec4<f32> = u_xlat8;
    let x_1455 : i32 = u_xlati36;
    let x_1457 : vec4<f32> = x_802.x_AdditionalLightsColor[x_1455];
    let x_1459 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) * vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
    let x_1460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
    let x_1462 : f32 = u_xlat37;
    let x_1463 : f32 = u_xlat27;
    u_xlat36 = (x_1462 * x_1463);
    let x_1465 : f32 = u_xlat36;
    let x_1467 : vec4<f32> = u_xlat8;
    let x_1469 : vec3<f32> = (vec3<f32>(x_1465, x_1465, x_1465) * vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
    let x_1470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
    let x_1472 : vec4<f32> = u_xlat2;
    let x_1474 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1472.x, x_1472.y, x_1472.z), x_1474);
    let x_1476 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1476, 0.0f, 1.0f);
    let x_1478 : f32 = u_xlat36;
    let x_1480 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1478, x_1478, x_1478) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
    let x_1483 : vec3<f32> = u_xlat7;
    let x_1484 : vec4<f32> = u_xlat1;
    let x_1487 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1483 * vec3<f32>(x_1484.y, x_1484.z, x_1484.w)) + x_1487);

    continuing {
      let x_1489 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1489 + bitcast<u32>(1i));
    }
  }
  let x_1491 : vec4<f32> = u_xlat4;
  let x_1493 : vec4<f32> = u_xlat1;
  let x_1496 : vec4<f32> = u_xlat3;
  let x_1498 : vec3<f32> = ((vec3<f32>(x_1491.x, x_1491.y, x_1491.z) * vec3<f32>(x_1493.y, x_1493.z, x_1493.w)) + vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1499 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : vec3<f32> = u_xlat6;
  let x_1502 : vec4<f32> = u_xlat1;
  let x_1504 : vec3<f32> = (x_1501 + vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
  let x_1505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
  let x_1507 : f32 = u_xlat11;
  let x_1508 : f32 = u_xlat11;
  u_xlat11 = (x_1507 * -(x_1508));
  let x_1511 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1511);
  let x_1513 : vec4<f32> = u_xlat1;
  let x_1516 : vec4<f32> = x_28.unity_FogColor;
  let x_1519 : vec3<f32> = (vec3<f32>(x_1513.x, x_1513.y, x_1513.z) + -(vec3<f32>(x_1516.x, x_1516.y, x_1516.z)));
  let x_1520 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
  let x_1524 : f32 = u_xlat11;
  let x_1526 : vec4<f32> = u_xlat1;
  let x_1530 : vec4<f32> = x_28.unity_FogColor;
  let x_1532 : vec3<f32> = ((vec3<f32>(x_1524, x_1524, x_1524) * vec3<f32>(x_1526.x, x_1526.y, x_1526.z)) + vec3<f32>(x_1530.x, x_1530.y, x_1530.z));
  let x_1533 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
  let x_1536 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1536 == 1.0f);
  let x_1538 : bool = u_xlatb11;
  let x_1539 : bool = u_xlatb22;
  u_xlatb11 = (x_1538 | x_1539);
  let x_1541 : bool = u_xlatb11;
  if (x_1541) {
    let x_1546 : f32 = u_xlat0.x;
    x_1542 = x_1546;
  } else {
    x_1542 = 1.0f;
  }
  let x_1548 : f32 = x_1542;
  SV_Target0.w = x_1548;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


