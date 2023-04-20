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

@group(1) @binding(1) var<uniform> x_809 : AdditionalLights;

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
  var x_939 : f32;
  var x_949 : f32;
  var txVec1 : vec3<f32>;
  var x_1373 : f32;
  var x_1386 : f32;
  var x_1434 : f32;
  var x_1445 : vec3<f32>;
  var x_1553 : f32;
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
  let x_707 : vec4<f32> = u_xlat0;
  let x_709 : vec4<f32> = u_xlat3;
  let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.x, x_707.x) * vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_715 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_717 : f32 = x_391.unity_LightData.y;
  u_xlat33 = min(x_715, x_717);
  let x_720 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_720));
  let x_724 : f32 = u_xlat1.x;
  let x_727 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_730 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_724 * x_727) + x_730);
  let x_734 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_734, 0.0f, 1.0f);
  let x_738 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_740 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_742 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_744 : f32 = x_556.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_745 : vec4<f32> = vec4<f32>(x_738, x_740, x_742, x_744);
  let x_751 : vec4<bool> = (vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_751.x, x_751.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_763 : u32 = u_xlatu_loop_1;
    let x_764 : u32 = u_xlatu33;
    if ((x_763 < x_764)) {
    } else {
      break;
    }
    let x_767 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_767 >> 2u);
    let x_770 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_770 & 3u));
    let x_774 : u32 = u_xlatu36;
    let x_777 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_774)];
    let x_787 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_792 : vec4<u32> = indexable[x_787];
    u_xlat36 = dot(x_777, bitcast<vec4<f32>>(x_792));
    let x_796 : f32 = u_xlat36;
    u_xlati36 = i32(x_796);
    let x_799 : vec3<f32> = vs_TEXCOORD1;
    let x_810 : i32 = u_xlati36;
    let x_812 : vec4<f32> = x_809.x_AdditionalLightsPosition[x_810];
    let x_815 : i32 = u_xlati36;
    let x_817 : vec4<f32> = x_809.x_AdditionalLightsPosition[x_815];
    u_xlat7 = ((-(x_799) * vec3<f32>(x_812.w, x_812.w, x_812.w)) + vec3<f32>(x_817.x, x_817.y, x_817.z));
    let x_821 : vec3<f32> = u_xlat7;
    let x_822 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_821, x_822);
    let x_824 : f32 = u_xlat37;
    u_xlat37 = max(x_824, 0.00006103515625f);
    let x_828 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_828);
    let x_830 : f32 = u_xlat27;
    let x_832 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_830, x_830, x_830) * x_832);
    let x_834 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_834);
    let x_836 : f32 = u_xlat37;
    let x_837 : i32 = u_xlati36;
    let x_839 : f32 = x_809.x_AdditionalLightsAttenuation[x_837].x;
    u_xlat37 = (x_836 * x_839);
    let x_841 : f32 = u_xlat37;
    let x_843 : f32 = u_xlat37;
    u_xlat37 = ((-(x_841) * x_843) + 1.0f);
    let x_846 : f32 = u_xlat37;
    u_xlat37 = max(x_846, 0.0f);
    let x_848 : f32 = u_xlat37;
    let x_849 : f32 = u_xlat37;
    u_xlat37 = (x_848 * x_849);
    let x_851 : f32 = u_xlat37;
    let x_852 : f32 = u_xlat27;
    u_xlat37 = (x_851 * x_852);
    let x_854 : i32 = u_xlati36;
    let x_856 : vec4<f32> = x_809.x_AdditionalLightsSpotDir[x_854];
    let x_858 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_856.x, x_856.y, x_856.z), x_858);
    let x_860 : f32 = u_xlat27;
    let x_861 : i32 = u_xlati36;
    let x_863 : f32 = x_809.x_AdditionalLightsAttenuation[x_861].z;
    let x_865 : i32 = u_xlati36;
    let x_867 : f32 = x_809.x_AdditionalLightsAttenuation[x_865].w;
    u_xlat27 = ((x_860 * x_863) + x_867);
    let x_869 : f32 = u_xlat27;
    u_xlat27 = clamp(x_869, 0.0f, 1.0f);
    let x_871 : f32 = u_xlat27;
    let x_872 : f32 = u_xlat27;
    u_xlat27 = (x_871 * x_872);
    let x_874 : f32 = u_xlat37;
    let x_875 : f32 = u_xlat27;
    u_xlat37 = (x_874 * x_875);
    let x_879 : i32 = u_xlati36;
    let x_881 : f32 = x_159.x_AdditionalShadowParams[x_879].w;
    u_xlati27 = i32(x_881);
    let x_884 : i32 = u_xlati27;
    u_xlatb38 = (x_884 >= 0i);
    let x_886 : bool = u_xlatb38;
    if (x_886) {
      let x_890 : i32 = u_xlati36;
      let x_892 : f32 = x_159.x_AdditionalShadowParams[x_890].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_892, x_892, x_892, x_892))));
      let x_896 : bool = u_xlatb38;
      if (x_896) {
        let x_900 : vec3<f32> = u_xlat7;
        let x_903 : vec3<f32> = u_xlat7;
        let x_906 : vec4<bool> = (abs(vec4<f32>(x_900.z, x_900.z, x_900.y, x_900.z)) >= abs(vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.x)));
        let x_908 : vec3<bool> = vec3<bool>(x_906.x, x_906.y, x_906.z);
        let x_909 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_908.x, x_908.y, x_908.z, x_909.w);
        let x_912 : bool = u_xlatb8.y;
        let x_914 : bool = u_xlatb8.x;
        u_xlatb38 = (x_912 & x_914);
        let x_916 : vec3<f32> = u_xlat7;
        let x_919 : vec4<bool> = (-(vec4<f32>(x_916.z, x_916.y, x_916.z, x_916.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_920 : vec3<bool> = vec3<bool>(x_919.x, x_919.y, x_919.w);
        let x_921 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_920.x, x_920.y, x_921.z, x_920.z);
        let x_925 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_925);
        let x_930 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_930);
        let x_935 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_935);
        let x_938 : bool = u_xlatb8.z;
        if (x_938) {
          let x_943 : f32 = u_xlat8.y;
          x_939 = x_943;
        } else {
          let x_945 : f32 = u_xlat39;
          x_939 = x_945;
        }
        let x_946 : f32 = x_939;
        u_xlat39 = x_946;
        let x_948 : bool = u_xlatb38;
        if (x_948) {
          let x_953 : f32 = u_xlat8.x;
          x_949 = x_953;
        } else {
          let x_955 : f32 = u_xlat39;
          x_949 = x_955;
        }
        let x_956 : f32 = x_949;
        u_xlat38 = x_956;
        let x_957 : i32 = u_xlati36;
        let x_959 : f32 = x_159.x_AdditionalShadowParams[x_957].w;
        u_xlat39 = trunc(x_959);
        let x_961 : f32 = u_xlat38;
        let x_962 : f32 = u_xlat39;
        u_xlat38 = (x_961 + x_962);
        let x_964 : f32 = u_xlat38;
        u_xlati27 = i32(x_964);
      }
      let x_966 : i32 = u_xlati27;
      u_xlati27 = (x_966 << bitcast<u32>(2i));
      let x_968 : vec3<f32> = vs_TEXCOORD1;
      let x_971 : i32 = u_xlati27;
      let x_974 : i32 = u_xlati27;
      let x_978 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_971 + 1i) / 4i)][((x_974 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_968.y, x_968.y, x_968.y, x_968.y) * x_978);
      let x_980 : i32 = u_xlati27;
      let x_982 : i32 = u_xlati27;
      let x_985 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_980 / 4i)][(x_982 % 4i)];
      let x_986 : vec3<f32> = vs_TEXCOORD1;
      let x_989 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_985 * vec4<f32>(x_986.x, x_986.x, x_986.x, x_986.x)) + x_989);
      let x_991 : i32 = u_xlati27;
      let x_994 : i32 = u_xlati27;
      let x_998 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
      let x_999 : vec3<f32> = vs_TEXCOORD1;
      let x_1002 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_998 * vec4<f32>(x_999.z, x_999.z, x_999.z, x_999.z)) + x_1002);
      let x_1004 : vec4<f32> = u_xlat8;
      let x_1005 : i32 = u_xlati27;
      let x_1008 : i32 = u_xlati27;
      let x_1012 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_1005 + 3i) / 4i)][((x_1008 + 3i) % 4i)];
      u_xlat8 = (x_1004 + x_1012);
      let x_1014 : vec4<f32> = u_xlat8;
      let x_1016 : vec4<f32> = u_xlat8;
      let x_1018 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) / vec3<f32>(x_1016.w, x_1016.w, x_1016.w));
      let x_1019 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
      let x_1022 : vec4<f32> = u_xlat8;
      let x_1023 : vec2<f32> = vec2<f32>(x_1022.x, x_1022.y);
      let x_1025 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
      let x_1033 : vec3<f32> = txVec1;
      let x_1035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
      u_xlat27 = x_1035;
      let x_1036 : i32 = u_xlati36;
      let x_1038 : f32 = x_159.x_AdditionalShadowParams[x_1036].x;
      u_xlat38 = (1.0f + -(x_1038));
      let x_1041 : f32 = u_xlat27;
      let x_1042 : i32 = u_xlati36;
      let x_1044 : f32 = x_159.x_AdditionalShadowParams[x_1042].x;
      let x_1046 : f32 = u_xlat38;
      u_xlat27 = ((x_1041 * x_1044) + x_1046);
      let x_1049 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_1049);
      let x_1053 : f32 = u_xlat8.z;
      u_xlatb39 = (x_1053 >= 1.0f);
      let x_1055 : bool = u_xlatb38;
      let x_1056 : bool = u_xlatb39;
      u_xlatb38 = (x_1055 | x_1056);
      let x_1058 : bool = u_xlatb38;
      let x_1059 : f32 = u_xlat27;
      u_xlat27 = select(x_1059, 1.0f, x_1058);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_1062 : f32 = u_xlat27;
    u_xlat38 = (-(x_1062) + 1.0f);
    let x_1066 : f32 = u_xlat1.x;
    let x_1067 : f32 = u_xlat38;
    let x_1069 : f32 = u_xlat27;
    u_xlat27 = ((x_1066 * x_1067) + x_1069);
    let x_1072 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_1072 & 31i)));
    let x_1076 : i32 = u_xlati38;
    let x_1079 : f32 = x_556.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1076) & bitcast<u32>(x_1079)));
    let x_1083 : i32 = u_xlati38;
    if ((x_1083 != 0i)) {
      let x_1087 : i32 = u_xlati36;
      let x_1089 : f32 = x_556.x_AdditionalLightsLightTypes[x_1087].el;
      u_xlati38 = i32(x_1089);
      let x_1092 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_1092 != 0i));
      let x_1096 : i32 = u_xlati36;
      u_xlati40 = (x_1096 << bitcast<u32>(2i));
      let x_1098 : i32 = u_xlati39;
      if ((x_1098 != 0i)) {
        let x_1102 : vec3<f32> = vs_TEXCOORD1;
        let x_1104 : i32 = u_xlati40;
        let x_1107 : i32 = u_xlati40;
        let x_1111 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1104 + 1i) / 4i)][((x_1107 + 1i) % 4i)];
        let x_1113 : vec3<f32> = (vec3<f32>(x_1102.y, x_1102.y, x_1102.y) * vec3<f32>(x_1111.x, x_1111.y, x_1111.w));
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
        let x_1116 : i32 = u_xlati40;
        let x_1118 : i32 = u_xlati40;
        let x_1121 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[(x_1116 / 4i)][(x_1118 % 4i)];
        let x_1123 : vec3<f32> = vs_TEXCOORD1;
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1128 : vec3<f32> = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.w) * vec3<f32>(x_1123.x, x_1123.x, x_1123.x)) + vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
        let x_1131 : i32 = u_xlati40;
        let x_1134 : i32 = u_xlati40;
        let x_1138 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1131 + 2i) / 4i)][((x_1134 + 2i) % 4i)];
        let x_1140 : vec3<f32> = vs_TEXCOORD1;
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1145 : vec3<f32> = ((vec3<f32>(x_1138.x, x_1138.y, x_1138.w) * vec3<f32>(x_1140.z, x_1140.z, x_1140.z)) + vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1150 : i32 = u_xlati40;
        let x_1153 : i32 = u_xlati40;
        let x_1157 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1150 + 3i) / 4i)][((x_1153 + 3i) % 4i)];
        let x_1159 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.y, x_1148.z) + vec3<f32>(x_1157.x, x_1157.y, x_1157.w));
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1162.x, x_1162.y) / vec2<f32>(x_1164.z, x_1164.z));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1179 : vec2<f32> = clamp(vec2<f32>(x_1175.x, x_1175.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : i32 = u_xlati36;
        let x_1184 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1182];
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1189 : i32 = u_xlati36;
        let x_1191 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1189];
        let x_1193 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1191.z, x_1191.w));
        let x_1194 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
      } else {
        let x_1197 : i32 = u_xlati38;
        u_xlatb38 = (x_1197 == 1i);
        let x_1199 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1199);
        let x_1201 : i32 = u_xlati38;
        if ((x_1201 != 0i)) {
          let x_1207 : vec3<f32> = vs_TEXCOORD1;
          let x_1209 : i32 = u_xlati40;
          let x_1212 : i32 = u_xlati40;
          let x_1216 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1209 + 1i) / 4i)][((x_1212 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1207.y, x_1207.y) * vec2<f32>(x_1216.x, x_1216.y));
          let x_1219 : i32 = u_xlati40;
          let x_1221 : i32 = u_xlati40;
          let x_1224 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[(x_1219 / 4i)][(x_1221 % 4i)];
          let x_1226 : vec3<f32> = vs_TEXCOORD1;
          let x_1229 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1226.x, x_1226.x)) + x_1229);
          let x_1231 : i32 = u_xlati40;
          let x_1234 : i32 = u_xlati40;
          let x_1238 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1231 + 2i) / 4i)][((x_1234 + 2i) % 4i)];
          let x_1240 : vec3<f32> = vs_TEXCOORD1;
          let x_1243 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1240.z, x_1240.z)) + x_1243);
          let x_1245 : vec2<f32> = u_xlat30;
          let x_1246 : i32 = u_xlati40;
          let x_1249 : i32 = u_xlati40;
          let x_1253 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1246 + 3i) / 4i)][((x_1249 + 3i) % 4i)];
          u_xlat30 = (x_1245 + vec2<f32>(x_1253.x, x_1253.y));
          let x_1256 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1256 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1259 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1259);
          let x_1261 : i32 = u_xlati36;
          let x_1263 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1261];
          let x_1265 : vec2<f32> = u_xlat30;
          let x_1267 : i32 = u_xlati36;
          let x_1269 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1267];
          let x_1271 : vec2<f32> = ((vec2<f32>(x_1263.x, x_1263.y) * x_1265) + vec2<f32>(x_1269.z, x_1269.w));
          let x_1272 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        } else {
          let x_1276 : vec3<f32> = vs_TEXCOORD1;
          let x_1278 : i32 = u_xlati40;
          let x_1281 : i32 = u_xlati40;
          let x_1285 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1278 + 1i) / 4i)][((x_1281 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1276.y, x_1276.y, x_1276.y, x_1276.y) * x_1285);
          let x_1287 : i32 = u_xlati40;
          let x_1289 : i32 = u_xlati40;
          let x_1292 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[(x_1287 / 4i)][(x_1289 % 4i)];
          let x_1293 : vec3<f32> = vs_TEXCOORD1;
          let x_1296 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1292 * vec4<f32>(x_1293.x, x_1293.x, x_1293.x, x_1293.x)) + x_1296);
          let x_1298 : i32 = u_xlati40;
          let x_1301 : i32 = u_xlati40;
          let x_1305 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1298 + 2i) / 4i)][((x_1301 + 2i) % 4i)];
          let x_1306 : vec3<f32> = vs_TEXCOORD1;
          let x_1309 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1305 * vec4<f32>(x_1306.z, x_1306.z, x_1306.z, x_1306.z)) + x_1309);
          let x_1311 : vec4<f32> = u_xlat9;
          let x_1312 : i32 = u_xlati40;
          let x_1315 : i32 = u_xlati40;
          let x_1319 : vec4<f32> = x_556.x_AdditionalLightsWorldToLights[((x_1312 + 3i) / 4i)][((x_1315 + 3i) % 4i)];
          u_xlat9 = (x_1311 + x_1319);
          let x_1321 : vec4<f32> = u_xlat9;
          let x_1323 : vec4<f32> = u_xlat9;
          let x_1325 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) / vec3<f32>(x_1323.w, x_1323.w, x_1323.w));
          let x_1326 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
          let x_1328 : vec4<f32> = u_xlat9;
          let x_1330 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1328.x, x_1328.y, x_1328.z), vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
          let x_1333 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1333);
          let x_1335 : f32 = u_xlat38;
          let x_1337 : vec4<f32> = u_xlat9;
          let x_1339 : vec3<f32> = (vec3<f32>(x_1335, x_1335, x_1335) * vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
          let x_1340 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
          let x_1342 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1342.x, x_1342.y, x_1342.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1347 : f32 = u_xlat38;
          u_xlat38 = max(x_1347, 0.00000099999999747524f);
          let x_1350 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1350);
          let x_1353 : f32 = u_xlat38;
          let x_1355 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(x_1355.z, x_1355.x, x_1355.y));
          let x_1359 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1359);
          let x_1363 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1363, 0.0f, 1.0f);
          let x_1367 : vec3<f32> = u_xlat10;
          let x_1369 : vec4<bool> = (vec4<f32>(x_1367.y, x_1367.z, x_1367.y, x_1367.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1369.x, x_1369.y);
          let x_1372 : bool = u_xlatb30.x;
          if (x_1372) {
            let x_1377 : f32 = u_xlat10.x;
            x_1373 = x_1377;
          } else {
            let x_1380 : f32 = u_xlat10.x;
            x_1373 = -(x_1380);
          }
          let x_1382 : f32 = x_1373;
          u_xlat30.x = x_1382;
          let x_1385 : bool = u_xlatb30.y;
          if (x_1385) {
            let x_1390 : f32 = u_xlat10.x;
            x_1386 = x_1390;
          } else {
            let x_1393 : f32 = u_xlat10.x;
            x_1386 = -(x_1393);
          }
          let x_1395 : f32 = x_1386;
          u_xlat30.y = x_1395;
          let x_1397 : vec4<f32> = u_xlat9;
          let x_1399 : f32 = u_xlat38;
          let x_1402 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(x_1399, x_1399)) + x_1402);
          let x_1404 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1404 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1407 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1407, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1411 : i32 = u_xlati36;
          let x_1413 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1411];
          let x_1415 : vec2<f32> = u_xlat30;
          let x_1417 : i32 = u_xlati36;
          let x_1419 : vec4<f32> = x_556.x_AdditionalLightsCookieAtlasUVRects[x_1417];
          let x_1421 : vec2<f32> = ((vec2<f32>(x_1413.x, x_1413.y) * x_1415) + vec2<f32>(x_1419.z, x_1419.w));
          let x_1422 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        }
      }
      let x_1429 : vec4<f32> = u_xlat8;
      let x_1431 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1429.x, x_1429.y), 0.0f);
      u_xlat8 = x_1431;
      let x_1433 : bool = u_xlatb5.y;
      if (x_1433) {
        let x_1438 : f32 = u_xlat8.w;
        x_1434 = x_1438;
      } else {
        let x_1441 : f32 = u_xlat8.x;
        x_1434 = x_1441;
      }
      let x_1442 : f32 = x_1434;
      u_xlat38 = x_1442;
      let x_1444 : bool = u_xlatb5.x;
      if (x_1444) {
        let x_1448 : vec4<f32> = u_xlat8;
        x_1445 = vec3<f32>(x_1448.x, x_1448.y, x_1448.z);
      } else {
        let x_1451 : f32 = u_xlat38;
        x_1445 = vec3<f32>(x_1451, x_1451, x_1451);
      }
      let x_1453 : vec3<f32> = x_1445;
      let x_1454 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1460 : vec4<f32> = u_xlat8;
    let x_1462 : i32 = u_xlati36;
    let x_1464 : vec4<f32> = x_809.x_AdditionalLightsColor[x_1462];
    let x_1466 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
    let x_1467 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
    let x_1469 : f32 = u_xlat37;
    let x_1470 : f32 = u_xlat27;
    u_xlat36 = (x_1469 * x_1470);
    let x_1472 : f32 = u_xlat36;
    let x_1474 : vec4<f32> = u_xlat8;
    let x_1476 : vec3<f32> = (vec3<f32>(x_1472, x_1472, x_1472) * vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
    let x_1477 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
    let x_1479 : vec4<f32> = u_xlat2;
    let x_1481 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1479.x, x_1479.y, x_1479.z), x_1481);
    let x_1483 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1483, 0.0f, 1.0f);
    let x_1485 : f32 = u_xlat36;
    let x_1487 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1485, x_1485, x_1485) * vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : vec4<f32> = u_xlat1;
    let x_1492 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1490.y, x_1490.z, x_1490.w) * x_1492);
    let x_1494 : vec3<f32> = u_xlat7;
    let x_1495 : vec4<f32> = u_xlat0;
    let x_1498 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1494 * vec3<f32>(x_1495.x, x_1495.x, x_1495.x)) + x_1498);

    continuing {
      let x_1500 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1500 + bitcast<u32>(1i));
    }
  }
  let x_1502 : vec4<f32> = u_xlat4;
  let x_1504 : vec4<f32> = u_xlat1;
  let x_1507 : vec4<f32> = u_xlat3;
  let x_1509 : vec3<f32> = ((vec3<f32>(x_1502.x, x_1502.y, x_1502.z) * vec3<f32>(x_1504.y, x_1504.z, x_1504.w)) + vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec3<f32> = u_xlat6;
  let x_1513 : vec4<f32> = u_xlat1;
  let x_1515 : vec3<f32> = (x_1512 + vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : f32 = u_xlat11;
  let x_1519 : f32 = u_xlat11;
  u_xlat11 = (x_1518 * -(x_1519));
  let x_1522 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1522);
  let x_1524 : vec4<f32> = u_xlat1;
  let x_1527 : vec4<f32> = x_28.unity_FogColor;
  let x_1530 : vec3<f32> = (vec3<f32>(x_1524.x, x_1524.y, x_1524.z) + -(vec3<f32>(x_1527.x, x_1527.y, x_1527.z)));
  let x_1531 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
  let x_1535 : f32 = u_xlat11;
  let x_1537 : vec4<f32> = u_xlat1;
  let x_1541 : vec4<f32> = x_28.unity_FogColor;
  let x_1543 : vec3<f32> = ((vec3<f32>(x_1535, x_1535, x_1535) * vec3<f32>(x_1537.x, x_1537.y, x_1537.z)) + vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
  let x_1544 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1547 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1547 == 1.0f);
  let x_1549 : bool = u_xlatb11;
  let x_1550 : bool = u_xlatb22;
  u_xlatb11 = (x_1549 | x_1550);
  let x_1552 : bool = u_xlatb11;
  if (x_1552) {
    let x_1557 : f32 = u_xlat0.x;
    x_1553 = x_1557;
  } else {
    x_1553 = 1.0f;
  }
  let x_1559 : f32 = x_1553;
  SV_Target0.w = x_1559;
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


