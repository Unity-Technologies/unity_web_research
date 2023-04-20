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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_133 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat71 : f32;

var<private> u_xlatu71 : u32;

var<private> u_xlati71 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb72 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb73 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlatb49 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat49 : f32;

@group(1) @binding(2) var<uniform> x_1758 : UnityPerDraw;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati52 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_1939 : AdditionalLights;

var<private> u_xlat52 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu6 : u32;

var<private> u_xlatb29 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1713 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2076 : f32;
  var x_2086 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3518 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat24;
  let x_70 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat24;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat24 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat24;
    x_98 = x_101;
  } else {
    let x_103 : vec3<f32> = u_xlat2;
    x_98 = x_103;
  }
  let x_104 : vec3<f32> = x_98;
  u_xlat1 = x_104;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat70;
  let x_114 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_116 : vec3<f32> = u_xlat1;
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat70;
  u_xlat70 = max(x_119, 0.00006103515625f);
  let x_122 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_122);
  let x_125 : vec3<f32> = vs_TEXCOORD1;
  let x_135 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres0;
  let x_138 : vec3<f32> = (x_125 + -(vec3<f32>(x_135.x, x_135.y, x_135.z)));
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres1;
  let x_147 : vec3<f32> = (x_142 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres2;
  let x_157 : vec3<f32> = (x_151 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_158 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres3;
  let x_166 : vec3<f32> = (x_161 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat3;
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat6;
  let x_189 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_196 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = x_133.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_196 < x_199);
  let x_202 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_202);
  let x_207 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_211);
  let x_215 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_215);
  let x_219 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_219);
  let x_225 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_225);
  let x_229 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_229);
  let x_232 : vec4<f32> = u_xlat3;
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + vec3<f32>(x_234.y, x_234.z, x_234.w));
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat3;
  let x_242 : vec3<f32> = max(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_242.z);
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_246, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat71;
  u_xlat71 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat71;
  u_xlatu71 = u32(x_257);
  let x_261 : u32 = u_xlatu71;
  u_xlati71 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_TEXCOORD1;
  let x_266 : i32 = u_xlati71;
  let x_269 : i32 = u_xlati71;
  let x_273 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati71;
  let x_280 : i32 = u_xlati71;
  let x_283 : vec4<f32> = x_133.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = u_xlat3;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati71;
  let x_296 : i32 = u_xlati71;
  let x_300 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat3;
  let x_312 : i32 = u_xlati71;
  let x_315 : i32 = u_xlati71;
  let x_319 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_326 : f32 = vs_TEXCOORD1.y;
  let x_328 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat71 = (x_326 * x_328);
  let x_331 : f32 = x_28.unity_MatrixV[0i].z;
  let x_333 : f32 = vs_TEXCOORD1.x;
  let x_335 : f32 = u_xlat71;
  u_xlat71 = ((x_331 * x_333) + x_335);
  let x_338 : f32 = x_28.unity_MatrixV[2i].z;
  let x_340 : f32 = vs_TEXCOORD1.z;
  let x_342 : f32 = u_xlat71;
  u_xlat71 = ((x_338 * x_340) + x_342);
  let x_344 : f32 = u_xlat71;
  let x_346 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat71 = (x_344 + x_346);
  let x_348 : f32 = u_xlat71;
  let x_351 : f32 = x_28.x_ProjectionParams.y;
  u_xlat71 = (-(x_348) + -(x_351));
  let x_354 : f32 = u_xlat71;
  u_xlat71 = max(x_354, 0.0f);
  let x_356 : f32 = u_xlat71;
  let x_359 : f32 = x_28.unity_FogParams.x;
  u_xlat71 = (x_356 * x_359);
  let x_367 : vec2<f32> = vs_TEXCOORD7;
  let x_369 : f32 = x_28.x_GlobalMipBias.x;
  let x_370 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_367, x_369);
  u_xlat4 = x_370;
  let x_375 : vec2<f32> = vs_TEXCOORD7;
  let x_377 : f32 = x_28.x_GlobalMipBias.x;
  let x_378 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_375, x_377);
  let x_379 : vec3<f32> = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat4;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec3<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(x_390, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat72;
  u_xlat72 = (x_394 + 0.5f);
  let x_397 : f32 = u_xlat72;
  let x_399 : vec4<f32> = u_xlat5;
  let x_401 : vec3<f32> = (vec3<f32>(x_397, x_397, x_397) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat4.w;
  u_xlat72 = max(x_405, 0.00009999999747378752f);
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : f32 = u_xlat72;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) / vec3<f32>(x_410, x_410, x_410));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_418 : f32 = x_133.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_418);
  let x_420 : bool = u_xlatb72;
  if (x_420) {
    let x_424 : f32 = x_133.x_MainLightShadowParams.y;
    u_xlatb72 = (x_424 == 1.0f);
    let x_426 : bool = u_xlatb72;
    if (x_426) {
      let x_429 : vec4<f32> = u_xlat3;
      let x_432 : vec4<f32> = x_133.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_429.x, x_429.y, x_429.x, x_429.y) + x_432);
      let x_435 : vec4<f32> = u_xlat5;
      let x_436 : vec2<f32> = vec2<f32>(x_435.x, x_435.y);
      let x_438 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_436.x, x_436.y, x_438);
      let x_450 : vec3<f32> = txVec0;
      let x_452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_450.xy, x_450.z);
      u_xlat6.x = x_452;
      let x_455 : vec4<f32> = u_xlat5;
      let x_456 : vec2<f32> = vec2<f32>(x_455.z, x_455.w);
      let x_458 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_465 : vec3<f32> = txVec1;
      let x_467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_465.xy, x_465.z);
      u_xlat6.y = x_467;
      let x_469 : vec4<f32> = u_xlat3;
      let x_472 : vec4<f32> = x_133.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_469.x, x_469.y, x_469.x, x_469.y) + x_472);
      let x_475 : vec4<f32> = u_xlat5;
      let x_476 : vec2<f32> = vec2<f32>(x_475.x, x_475.y);
      let x_478 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec2;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat6.z = x_487;
      let x_490 : vec4<f32> = u_xlat5;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec3;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat6.w = x_502;
      let x_504 : vec4<f32> = u_xlat6;
      u_xlat72 = dot(x_504, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_511 : f32 = x_133.x_MainLightShadowParams.y;
      u_xlatb73 = (x_511 == 2.0f);
      let x_513 : bool = u_xlatb73;
      if (x_513) {
        let x_516 : vec4<f32> = u_xlat3;
        let x_519 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_523 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_519.z, x_519.w)) + vec2<f32>(0.5f, 0.5f));
        let x_524 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat5;
        let x_528 : vec2<f32> = floor(vec2<f32>(x_526.x, x_526.y));
        let x_529 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_533 : vec4<f32> = u_xlat3;
        let x_536 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_539 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.z, x_536.w)) + -(vec2<f32>(x_539.x, x_539.y)));
        let x_543 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_543.x, x_543.x, x_543.y, x_543.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_548 : vec4<f32> = u_xlat6;
        let x_550 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_548.x, x_548.x, x_548.z, x_548.z) * vec4<f32>(x_550.x, x_550.x, x_550.z, x_550.z));
        let x_553 : vec4<f32> = u_xlat7;
        let x_557 : vec2<f32> = (vec2<f32>(x_553.y, x_553.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_558.w);
        let x_560 : vec4<f32> = u_xlat7;
        let x_563 : vec2<f32> = u_xlat51;
        let x_565 : vec2<f32> = ((vec2<f32>(x_560.x, x_560.z) * vec2<f32>(0.5f, 0.5f)) + -(x_563));
        let x_566 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_569 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_569) + vec2<f32>(1.0f, 1.0f));
        let x_574 : vec2<f32> = u_xlat51;
        let x_576 : vec2<f32> = min(x_574, vec2<f32>(0.0f, 0.0f));
        let x_577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat8;
        let x_582 : vec4<f32> = u_xlat8;
        let x_585 : vec2<f32> = u_xlat53;
        let x_586 : vec2<f32> = ((-(vec2<f32>(x_579.x, x_579.y)) * vec2<f32>(x_582.x, x_582.y)) + x_585);
        let x_587 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
        let x_589 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_589, vec2<f32>(0.0f, 0.0f));
        let x_591 : vec2<f32> = u_xlat51;
        let x_593 : vec2<f32> = u_xlat51;
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_591) * x_593) + vec2<f32>(x_595.y, x_595.w));
        let x_598 : vec4<f32> = u_xlat8;
        let x_600 : vec2<f32> = (vec2<f32>(x_598.x, x_598.y) + vec2<f32>(1.0f, 1.0f));
        let x_601 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
        let x_603 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_603 + vec2<f32>(1.0f, 1.0f));
        let x_606 : vec4<f32> = u_xlat7;
        let x_610 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_611 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
        let x_613 : vec2<f32> = u_xlat53;
        let x_614 : vec2<f32> = (x_613 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat8;
        let x_619 : vec2<f32> = (vec2<f32>(x_617.x, x_617.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_619.x, x_619.y, x_620.z, x_620.w);
        let x_623 : vec2<f32> = u_xlat51;
        let x_624 : vec2<f32> = (x_623 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_627.y, x_627.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_631 : f32 = u_xlat8.x;
        u_xlat9.z = x_631;
        let x_634 : f32 = u_xlat51.x;
        u_xlat9.w = x_634;
        let x_637 : f32 = u_xlat10.x;
        u_xlat7.z = x_637;
        let x_640 : f32 = u_xlat6.x;
        u_xlat7.w = x_640;
        let x_643 : vec4<f32> = u_xlat7;
        let x_645 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_643.z, x_643.w, x_643.x, x_643.z) + vec4<f32>(x_645.z, x_645.w, x_645.x, x_645.z));
        let x_649 : f32 = u_xlat9.y;
        u_xlat8.z = x_649;
        let x_652 : f32 = u_xlat51.y;
        u_xlat8.w = x_652;
        let x_655 : f32 = u_xlat7.y;
        u_xlat10.z = x_655;
        let x_658 : f32 = u_xlat6.z;
        u_xlat10.w = x_658;
        let x_660 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat10;
        let x_664 : vec3<f32> = (vec3<f32>(x_660.z, x_660.y, x_660.w) + vec3<f32>(x_662.z, x_662.y, x_662.w));
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat7;
        let x_669 : vec4<f32> = u_xlat11;
        let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.z, x_667.w) / vec3<f32>(x_669.z, x_669.w, x_669.y));
        let x_672 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat7;
        let x_679 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat10;
        let x_684 : vec4<f32> = u_xlat6;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) / vec3<f32>(x_684.x, x_684.y, x_684.z));
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat8;
        let x_691 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_692 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat7;
        let x_697 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_699 : vec3<f32> = (vec3<f32>(x_694.y, x_694.x, x_694.z) * vec3<f32>(x_697.x, x_697.x, x_697.x));
        let x_700 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat8;
        let x_705 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_707 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_705.y, x_705.y, x_705.y));
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_711 : f32 = u_xlat8.x;
        u_xlat7.w = x_711;
        let x_713 : vec4<f32> = u_xlat5;
        let x_716 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.y, x_719.w, x_719.x, x_719.w));
        let x_722 : vec4<f32> = u_xlat5;
        let x_725 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.z, x_728.w));
        let x_732 : f32 = u_xlat7.y;
        u_xlat8.w = x_732;
        let x_734 : vec4<f32> = u_xlat8;
        let x_735 : vec2<f32> = vec2<f32>(x_734.y, x_734.z);
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_736.x, x_735.x, x_736.z, x_735.y);
        let x_738 : vec4<f32> = u_xlat5;
        let x_741 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.y));
        let x_747 : vec4<f32> = u_xlat5;
        let x_750 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_753 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y)) + vec4<f32>(x_753.w, x_753.y, x_753.w, x_753.z));
        let x_756 : vec4<f32> = u_xlat5;
        let x_759 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y) * vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y)) + vec4<f32>(x_762.x, x_762.w, x_762.z, x_762.w));
        let x_766 : vec4<f32> = u_xlat6;
        let x_768 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.y) * vec4<f32>(x_768.z, x_768.w, x_768.y, x_768.z));
        let x_772 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_772.y, x_772.y, x_772.z, x_772.z) * x_774);
        let x_778 : f32 = u_xlat6.z;
        let x_780 : f32 = u_xlat11.y;
        u_xlat73 = (x_778 * x_780);
        let x_783 : vec4<f32> = u_xlat9;
        let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
        let x_786 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_793 : vec3<f32> = txVec4;
        let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_793.xy, x_793.z);
        u_xlat5.x = x_795;
        let x_798 : vec4<f32> = u_xlat9;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_809 : vec3<f32> = txVec5;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_809.xy, x_809.z);
        u_xlat28.x = x_811;
        let x_814 : f32 = u_xlat28.x;
        let x_816 : f32 = u_xlat12.y;
        u_xlat28.x = (x_814 * x_816);
        let x_820 : f32 = u_xlat12.x;
        let x_822 : f32 = u_xlat5.x;
        let x_825 : f32 = u_xlat28.x;
        u_xlat5.x = ((x_820 * x_822) + x_825);
        let x_829 : vec2<f32> = u_xlat51;
        let x_831 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec6;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_838.xy, x_838.z);
        u_xlat28.x = x_840;
        let x_843 : f32 = u_xlat12.z;
        let x_845 : f32 = u_xlat28.x;
        let x_848 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_843 * x_845) + x_848);
        let x_852 : vec4<f32> = u_xlat8;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec7;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
        u_xlat28.x = x_864;
        let x_867 : f32 = u_xlat12.w;
        let x_869 : f32 = u_xlat28.x;
        let x_872 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_867 * x_869) + x_872);
        let x_876 : vec4<f32> = u_xlat10;
        let x_877 : vec2<f32> = vec2<f32>(x_876.x, x_876.y);
        let x_879 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec8;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
        u_xlat28.x = x_888;
        let x_891 : f32 = u_xlat13.x;
        let x_893 : f32 = u_xlat28.x;
        let x_896 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_891 * x_893) + x_896);
        let x_900 : vec4<f32> = u_xlat10;
        let x_901 : vec2<f32> = vec2<f32>(x_900.z, x_900.w);
        let x_903 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec9;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat28.x = x_912;
        let x_915 : f32 = u_xlat13.y;
        let x_917 : f32 = u_xlat28.x;
        let x_920 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_915 * x_917) + x_920);
        let x_924 : vec4<f32> = u_xlat8;
        let x_925 : vec2<f32> = vec2<f32>(x_924.z, x_924.w);
        let x_927 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec10;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
        u_xlat28.x = x_936;
        let x_939 : f32 = u_xlat13.z;
        let x_941 : f32 = u_xlat28.x;
        let x_944 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_939 * x_941) + x_944);
        let x_948 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = vec2<f32>(x_948.x, x_948.y);
        let x_951 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec11;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_958.xy, x_958.z);
        u_xlat28.x = x_960;
        let x_963 : f32 = u_xlat13.w;
        let x_965 : f32 = u_xlat28.x;
        let x_968 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_963 * x_965) + x_968);
        let x_972 : vec4<f32> = u_xlat7;
        let x_973 : vec2<f32> = vec2<f32>(x_972.z, x_972.w);
        let x_975 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_973.x, x_973.y, x_975);
        let x_982 : vec3<f32> = txVec12;
        let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
        u_xlat28.x = x_984;
        let x_986 : f32 = u_xlat73;
        let x_988 : f32 = u_xlat28.x;
        let x_991 : f32 = u_xlat5.x;
        u_xlat72 = ((x_986 * x_988) + x_991);
      } else {
        let x_994 : vec4<f32> = u_xlat3;
        let x_997 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.y) * vec2<f32>(x_997.z, x_997.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1001 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat5;
        let x_1005 : vec2<f32> = floor(vec2<f32>(x_1003.x, x_1003.y));
        let x_1006 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1006.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + -(vec2<f32>(x_1014.x, x_1014.y)));
        let x_1018 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1018.x, x_1018.x, x_1018.y, x_1018.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1023 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1021.x, x_1021.x, x_1021.z, x_1021.z) * vec4<f32>(x_1023.x, x_1023.x, x_1023.z, x_1023.z));
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1030 : vec2<f32> = (vec2<f32>(x_1026.y, x_1026.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1031.x, x_1030.x, x_1031.z, x_1030.y);
        let x_1033 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = u_xlat51;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1036));
        let x_1039 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1038.x, x_1039.y, x_1038.y, x_1039.w);
        let x_1041 : vec2<f32> = u_xlat51;
        let x_1043 : vec2<f32> = (-(x_1041) + vec2<f32>(1.0f, 1.0f));
        let x_1044 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1046, vec2<f32>(0.0f, 0.0f));
        let x_1048 : vec2<f32> = u_xlat53;
        let x_1050 : vec2<f32> = u_xlat53;
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1054 : vec2<f32> = ((-(x_1048) * x_1050) + vec2<f32>(x_1052.x, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1057 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1057, vec2<f32>(0.0f, 0.0f));
        let x_1060 : vec2<f32> = u_xlat53;
        let x_1062 : vec2<f32> = u_xlat53;
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1066 : vec2<f32> = ((-(x_1060) * x_1062) + vec2<f32>(x_1064.y, x_1064.w));
        let x_1067 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1066.x, x_1067.y, x_1066.y);
        let x_1069 : vec4<f32> = u_xlat7;
        let x_1072 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.y) + vec2<f32>(2.0f, 2.0f));
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec3<f32> = u_xlat29;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.z) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1081 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1081 * 0.08163200318813323975f);
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec3<f32> = (vec3<f32>(x_1085.z, x_1085.x, x_1085.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1089 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1095 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1098 : f32 = u_xlat10.y;
        u_xlat9.x = x_1098;
        let x_1100 : vec2<f32> = u_xlat51;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1107.x, x_1108.z, x_1107.y);
        let x_1110 : vec2<f32> = u_xlat51;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1115.w);
        let x_1118 : f32 = u_xlat6.x;
        u_xlat7.y = x_1118;
        let x_1121 : f32 = u_xlat8.y;
        u_xlat7.w = x_1121;
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1123 + x_1124);
        let x_1126 : vec2<f32> = u_xlat51;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1126.y, x_1126.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1132 : vec2<f32> = u_xlat51;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1132.y, x_1132.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1136.y, x_1135.y, x_1136.w);
        let x_1139 : f32 = u_xlat6.y;
        u_xlat8.y = x_1139;
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1141 + x_1142);
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1144 / x_1145);
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1147 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1153 / x_1154);
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1156 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1158.w, x_1158.x, x_1158.y, x_1158.z) * vec4<f32>(x_1161.x, x_1161.x, x_1161.x, x_1161.x));
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1167 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1164.x, x_1164.w, x_1164.y, x_1164.z) * vec4<f32>(x_1167.y, x_1167.y, x_1167.y, x_1167.y));
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.y, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1175 : f32 = u_xlat8.x;
        u_xlat10.y = x_1175;
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1180 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) * vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y)) + vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1183.y));
        let x_1186 : vec4<f32> = u_xlat5;
        let x_1189 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.w, x_1192.y));
        let x_1196 : f32 = u_xlat10.y;
        u_xlat7.y = x_1196;
        let x_1199 : f32 = u_xlat8.z;
        u_xlat10.y = x_1199;
        let x_1201 : vec4<f32> = u_xlat5;
        let x_1204 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y) * vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y)) + vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1207.y));
        let x_1210 : vec4<f32> = u_xlat5;
        let x_1213 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(x_1213.x, x_1213.y)) + vec2<f32>(x_1216.w, x_1216.y));
        let x_1219 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1222 : f32 = u_xlat10.y;
        u_xlat7.z = x_1222;
        let x_1225 : vec4<f32> = u_xlat5;
        let x_1228 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y) * vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y)) + vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.z));
        let x_1235 : f32 = u_xlat8.w;
        u_xlat10.y = x_1235;
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1244.y));
        let x_1248 : vec4<f32> = u_xlat5;
        let x_1251 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.w, x_1254.y));
        let x_1258 : f32 = u_xlat10.y;
        u_xlat7.w = x_1258;
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.x, x_1267.w));
        let x_1270 : vec4<f32> = u_xlat10;
        let x_1271 : vec3<f32> = vec3<f32>(x_1270.x, x_1270.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1271.x, x_1272.y, x_1271.y, x_1271.z);
        let x_1274 : vec4<f32> = u_xlat5;
        let x_1277 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1280.y));
        let x_1284 : vec4<f32> = u_xlat5;
        let x_1287 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1284.x, x_1284.y) * vec2<f32>(x_1287.x, x_1287.y)) + vec2<f32>(x_1290.w, x_1290.y));
        let x_1294 : f32 = u_xlat7.x;
        u_xlat8.x = x_1294;
        let x_1296 : vec4<f32> = u_xlat5;
        let x_1299 : vec4<f32> = x_133.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1304 : vec2<f32> = ((vec2<f32>(x_1296.x, x_1296.y) * vec2<f32>(x_1299.x, x_1299.y)) + vec2<f32>(x_1302.x, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
        let x_1308 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1308.x, x_1308.x, x_1308.x, x_1308.x) * x_1310);
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1313.y, x_1313.y, x_1313.y, x_1313.y) * x_1315);
        let x_1318 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1318.z, x_1318.z, x_1318.z, x_1318.z) * x_1320);
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1322.w, x_1322.w, x_1322.w, x_1322.w) * x_1324);
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec13;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat73 = x_1339;
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec14;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat7.x = x_1353;
        let x_1356 : f32 = u_xlat7.x;
        let x_1358 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1356 * x_1358);
        let x_1362 : f32 = u_xlat16.x;
        let x_1363 : f32 = u_xlat73;
        let x_1366 : f32 = u_xlat7.x;
        u_xlat73 = ((x_1362 * x_1363) + x_1366);
        let x_1369 : vec2<f32> = u_xlat51;
        let x_1371 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec15;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat51.x = x_1380;
        let x_1383 : f32 = u_xlat16.z;
        let x_1385 : f32 = u_xlat51.x;
        let x_1387 : f32 = u_xlat73;
        u_xlat73 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat14;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec16;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat51.x = x_1402;
        let x_1405 : f32 = u_xlat16.w;
        let x_1407 : f32 = u_xlat51.x;
        let x_1409 : f32 = u_xlat73;
        u_xlat73 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat12;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec17;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
        u_xlat51.x = x_1424;
        let x_1427 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat51.x;
        let x_1431 : f32 = u_xlat73;
        u_xlat73 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat12;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec18;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat51.x = x_1446;
        let x_1449 : f32 = u_xlat17.y;
        let x_1451 : f32 = u_xlat51.x;
        let x_1453 : f32 = u_xlat73;
        u_xlat73 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat13;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec19;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat51.x = x_1468;
        let x_1471 : f32 = u_xlat17.z;
        let x_1473 : f32 = u_xlat51.x;
        let x_1475 : f32 = u_xlat73;
        u_xlat73 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat14;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec20;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat51.x = x_1490;
        let x_1493 : f32 = u_xlat17.w;
        let x_1495 : f32 = u_xlat51.x;
        let x_1497 : f32 = u_xlat73;
        u_xlat73 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat15;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec21;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat51.x = x_1512;
        let x_1515 : f32 = u_xlat18.x;
        let x_1517 : f32 = u_xlat51.x;
        let x_1519 : f32 = u_xlat73;
        u_xlat73 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat15;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.z, x_1522.w);
        let x_1525 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec22;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1532.xy, x_1532.z);
        u_xlat51.x = x_1534;
        let x_1537 : f32 = u_xlat18.y;
        let x_1539 : f32 = u_xlat51.x;
        let x_1541 : f32 = u_xlat73;
        u_xlat73 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec2<f32> = u_xlat30;
        let x_1546 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec23;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat51.x = x_1555;
        let x_1558 : f32 = u_xlat18.z;
        let x_1560 : f32 = u_xlat51.x;
        let x_1562 : f32 = u_xlat73;
        u_xlat73 = ((x_1558 * x_1560) + x_1562);
        let x_1565 : vec2<f32> = u_xlat59;
        let x_1567 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec24;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat51.x = x_1576;
        let x_1579 : f32 = u_xlat18.w;
        let x_1581 : f32 = u_xlat51.x;
        let x_1583 : f32 = u_xlat73;
        u_xlat73 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat10;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec25;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat51.x = x_1598;
        let x_1601 : f32 = u_xlat6.x;
        let x_1603 : f32 = u_xlat51.x;
        let x_1605 : f32 = u_xlat73;
        u_xlat73 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat10;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec26;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat51.x = x_1620;
        let x_1623 : f32 = u_xlat6.y;
        let x_1625 : f32 = u_xlat51.x;
        let x_1627 : f32 = u_xlat73;
        u_xlat73 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec2<f32> = u_xlat54;
        let x_1632 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec27;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat51.x = x_1641;
        let x_1644 : f32 = u_xlat6.z;
        let x_1646 : f32 = u_xlat51.x;
        let x_1648 : f32 = u_xlat73;
        u_xlat73 = ((x_1644 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat5;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec28;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat5.x = x_1663;
        let x_1666 : f32 = u_xlat6.w;
        let x_1668 : f32 = u_xlat5.x;
        let x_1670 : f32 = u_xlat73;
        u_xlat72 = ((x_1666 * x_1668) + x_1670);
      }
    }
  } else {
    let x_1674 : vec4<f32> = u_xlat3;
    let x_1675 : vec2<f32> = vec2<f32>(x_1674.x, x_1674.y);
    let x_1677 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
    let x_1684 : vec3<f32> = txVec29;
    let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
    u_xlat72 = x_1686;
  }
  let x_1688 : f32 = x_133.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1688) + 1.0f);
  let x_1692 : f32 = u_xlat72;
  let x_1694 : f32 = x_133.x_MainLightShadowParams.x;
  let x_1697 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1692 * x_1694) + x_1697);
  let x_1702 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_1702);
  let x_1706 : f32 = u_xlat3.z;
  u_xlatb49 = (x_1706 >= 1.0f);
  let x_1708 : bool = u_xlatb49;
  let x_1709 : bool = u_xlatb26;
  u_xlatb26 = (x_1708 | x_1709);
  let x_1711 : bool = u_xlatb26;
  if (x_1711) {
    x_1713 = 1.0f;
  } else {
    let x_1718 : f32 = u_xlat3.x;
    x_1713 = x_1718;
  }
  let x_1719 : f32 = x_1713;
  u_xlat3.x = x_1719;
  let x_1722 : vec3<f32> = vs_TEXCOORD1;
  let x_1724 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1722 + -(x_1724));
  let x_1727 : vec3<f32> = u_xlat26;
  let x_1728 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1727, x_1728);
  let x_1733 : f32 = u_xlat26.x;
  let x_1735 : f32 = x_133.x_MainLightShadowParams.z;
  let x_1738 : f32 = x_133.x_MainLightShadowParams.w;
  u_xlat49 = ((x_1733 * x_1735) + x_1738);
  let x_1740 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1740, 0.0f, 1.0f);
  let x_1743 : f32 = u_xlat3.x;
  u_xlat72 = (-(x_1743) + 1.0f);
  let x_1746 : f32 = u_xlat49;
  let x_1747 : f32 = u_xlat72;
  let x_1750 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1746 * x_1747) + x_1750);
  let x_1754 : f32 = u_xlat3.x;
  let x_1760 : f32 = x_1758.unity_LightData.z;
  u_xlat3.x = (x_1754 * x_1760);
  let x_1763 : vec4<f32> = u_xlat3;
  let x_1766 : vec4<f32> = x_28.x_MainLightColor;
  let x_1768 : vec3<f32> = (vec3<f32>(x_1763.x, x_1763.x, x_1763.x) * vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1768.x, x_1769.y, x_1768.y, x_1768.z);
  let x_1771 : vec3<f32> = u_xlat2;
  let x_1773 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat73 = dot(x_1771, vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1776, 0.0f, 1.0f);
  let x_1778 : vec4<f32> = u_xlat3;
  let x_1780 : f32 = u_xlat73;
  let x_1782 : vec3<f32> = (vec3<f32>(x_1778.x, x_1778.z, x_1778.w) * vec3<f32>(x_1780, x_1780, x_1780));
  let x_1783 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1786 : f32 = u_xlat0.x;
  u_xlat73 = ((x_1786 * 10.0f) + 1.0f);
  let x_1790 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1790);
  let x_1792 : vec3<f32> = u_xlat1;
  let x_1793 : f32 = u_xlat70;
  let x_1797 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1799 : vec3<f32> = ((x_1792 * vec3<f32>(x_1793, x_1793, x_1793)) + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1800 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
  let x_1803 : vec4<f32> = u_xlat6;
  let x_1805 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1803.x, x_1803.y, x_1803.z), vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
  let x_1808 : f32 = u_xlat74;
  u_xlat74 = max(x_1808, 1.17549435e-38f);
  let x_1811 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1811);
  let x_1813 : f32 = u_xlat74;
  let x_1815 : vec4<f32> = u_xlat6;
  let x_1817 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec3<f32> = u_xlat2;
  let x_1821 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(x_1820, vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1824, 0.0f, 1.0f);
  let x_1826 : f32 = u_xlat74;
  u_xlat74 = log2(x_1826);
  let x_1828 : f32 = u_xlat73;
  let x_1829 : f32 = u_xlat74;
  u_xlat74 = (x_1828 * x_1829);
  let x_1831 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1831);
  let x_1833 : f32 = u_xlat74;
  let x_1836 : vec4<f32> = x_41.x_SpecColor;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1833, x_1833, x_1833) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : vec4<f32> = u_xlat3;
  let x_1843 : vec4<f32> = u_xlat6;
  let x_1845 : vec3<f32> = (vec3<f32>(x_1841.x, x_1841.z, x_1841.w) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1845.x, x_1846.y, x_1845.y, x_1845.z);
  let x_1848 : vec4<f32> = u_xlat5;
  let x_1850 : vec4<f32> = u_xlat0;
  let x_1853 : vec4<f32> = u_xlat3;
  let x_1855 : vec3<f32> = ((vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * vec3<f32>(x_1850.y, x_1850.z, x_1850.w)) + vec3<f32>(x_1853.x, x_1853.z, x_1853.w));
  let x_1856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1855.x, x_1856.y, x_1855.y, x_1855.z);
  let x_1859 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1861 : f32 = x_1758.unity_LightData.y;
  u_xlat5.x = min(x_1859, x_1861);
  let x_1866 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1866));
  let x_1870 : f32 = u_xlat26.x;
  let x_1873 : f32 = x_133.x_AdditionalShadowFadeParams.x;
  let x_1876 : f32 = x_133.x_AdditionalShadowFadeParams.y;
  u_xlat26.x = ((x_1870 * x_1873) + x_1876);
  let x_1880 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1880, 0.0f, 1.0f);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1893 : u32 = u_xlatu_loop_1;
    let x_1894 : u32 = u_xlatu5;
    if ((x_1893 < x_1894)) {
    } else {
      break;
    }
    let x_1897 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_1897 >> 2u);
    let x_1900 : u32 = u_xlatu_loop_1;
    u_xlati52 = bitcast<i32>((x_1900 & 3u));
    let x_1903 : u32 = u_xlatu29;
    let x_1906 : vec4<f32> = x_1758.unity_LightIndices[bitcast<i32>(x_1903)];
    let x_1916 : i32 = u_xlati52;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1921 : vec4<u32> = indexable[x_1916];
    u_xlat29.x = dot(x_1906, bitcast<vec4<f32>>(x_1921));
    let x_1927 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_1927);
    let x_1929 : vec3<f32> = vs_TEXCOORD1;
    let x_1940 : i32 = u_xlati29;
    let x_1942 : vec4<f32> = x_1939.x_AdditionalLightsPosition[x_1940];
    let x_1945 : i32 = u_xlati29;
    let x_1947 : vec4<f32> = x_1939.x_AdditionalLightsPosition[x_1945];
    let x_1949 : vec3<f32> = ((-(x_1929) * vec3<f32>(x_1942.w, x_1942.w, x_1942.w)) + vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
    let x_1953 : vec4<f32> = u_xlat7;
    let x_1955 : vec4<f32> = u_xlat7;
    u_xlat52 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : f32 = u_xlat52;
    u_xlat52 = max(x_1958, 0.00006103515625f);
    let x_1961 : f32 = u_xlat52;
    u_xlat75 = inverseSqrt(x_1961);
    let x_1963 : f32 = u_xlat75;
    let x_1965 : vec4<f32> = u_xlat7;
    let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
    let x_1970 : f32 = u_xlat52;
    u_xlat75 = (1.0f / x_1970);
    let x_1972 : f32 = u_xlat52;
    let x_1973 : i32 = u_xlati29;
    let x_1975 : f32 = x_1939.x_AdditionalLightsAttenuation[x_1973].x;
    u_xlat52 = (x_1972 * x_1975);
    let x_1977 : f32 = u_xlat52;
    let x_1979 : f32 = u_xlat52;
    u_xlat52 = ((-(x_1977) * x_1979) + 1.0f);
    let x_1982 : f32 = u_xlat52;
    u_xlat52 = max(x_1982, 0.0f);
    let x_1984 : f32 = u_xlat52;
    let x_1985 : f32 = u_xlat52;
    u_xlat52 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat52;
    let x_1988 : f32 = u_xlat75;
    u_xlat52 = (x_1987 * x_1988);
    let x_1990 : i32 = u_xlati29;
    let x_1992 : vec4<f32> = x_1939.x_AdditionalLightsSpotDir[x_1990];
    let x_1994 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1992.x, x_1992.y, x_1992.z), vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
    let x_1997 : f32 = u_xlat75;
    let x_1998 : i32 = u_xlati29;
    let x_2000 : f32 = x_1939.x_AdditionalLightsAttenuation[x_1998].z;
    let x_2002 : i32 = u_xlati29;
    let x_2004 : f32 = x_1939.x_AdditionalLightsAttenuation[x_2002].w;
    u_xlat75 = ((x_1997 * x_2000) + x_2004);
    let x_2006 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2006, 0.0f, 1.0f);
    let x_2008 : f32 = u_xlat75;
    let x_2009 : f32 = u_xlat75;
    u_xlat75 = (x_2008 * x_2009);
    let x_2011 : f32 = u_xlat75;
    let x_2012 : f32 = u_xlat52;
    u_xlat52 = (x_2011 * x_2012);
    let x_2016 : i32 = u_xlati29;
    let x_2018 : f32 = x_133.x_AdditionalShadowParams[x_2016].w;
    u_xlati75 = i32(x_2018);
    let x_2021 : i32 = u_xlati75;
    u_xlatb76 = (x_2021 >= 0i);
    let x_2023 : bool = u_xlatb76;
    if (x_2023) {
      let x_2027 : i32 = u_xlati29;
      let x_2029 : f32 = x_133.x_AdditionalShadowParams[x_2027].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2029, x_2029, x_2029, x_2029))));
      let x_2033 : bool = u_xlatb76;
      if (x_2033) {
        let x_2037 : vec4<f32> = u_xlat7;
        let x_2040 : vec4<f32> = u_xlat7;
        let x_2043 : vec4<bool> = (abs(vec4<f32>(x_2037.z, x_2037.z, x_2037.y, x_2037.z)) >= abs(vec4<f32>(x_2040.x, x_2040.y, x_2040.x, x_2040.x)));
        let x_2045 : vec3<bool> = vec3<bool>(x_2043.x, x_2043.y, x_2043.z);
        let x_2046 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
        let x_2049 : bool = u_xlatb8.y;
        let x_2051 : bool = u_xlatb8.x;
        u_xlatb76 = (x_2049 & x_2051);
        let x_2053 : vec4<f32> = u_xlat7;
        let x_2056 : vec4<bool> = (-(vec4<f32>(x_2053.z, x_2053.y, x_2053.z, x_2053.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2057 : vec3<bool> = vec3<bool>(x_2056.x, x_2056.y, x_2056.w);
        let x_2058 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2057.x, x_2057.y, x_2058.z, x_2057.z);
        let x_2061 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2061);
        let x_2066 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2066);
        let x_2071 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_2071);
        let x_2075 : bool = u_xlatb8.z;
        if (x_2075) {
          let x_2080 : f32 = u_xlat8.y;
          x_2076 = x_2080;
        } else {
          let x_2082 : f32 = u_xlat77;
          x_2076 = x_2082;
        }
        let x_2083 : f32 = x_2076;
        u_xlat31 = x_2083;
        let x_2085 : bool = u_xlatb76;
        if (x_2085) {
          let x_2090 : f32 = u_xlat8.x;
          x_2086 = x_2090;
        } else {
          let x_2092 : f32 = u_xlat31;
          x_2086 = x_2092;
        }
        let x_2093 : f32 = x_2086;
        u_xlat76 = x_2093;
        let x_2094 : i32 = u_xlati29;
        let x_2096 : f32 = x_133.x_AdditionalShadowParams[x_2094].w;
        u_xlat8.x = trunc(x_2096);
        let x_2099 : f32 = u_xlat76;
        let x_2101 : f32 = u_xlat8.x;
        u_xlat76 = (x_2099 + x_2101);
        let x_2103 : f32 = u_xlat76;
        u_xlati75 = i32(x_2103);
      }
      let x_2105 : i32 = u_xlati75;
      u_xlati75 = (x_2105 << bitcast<u32>(2i));
      let x_2107 : vec3<f32> = vs_TEXCOORD1;
      let x_2110 : i32 = u_xlati75;
      let x_2113 : i32 = u_xlati75;
      let x_2117 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_2110 + 1i) / 4i)][((x_2113 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2107.y, x_2107.y, x_2107.y, x_2107.y) * x_2117);
      let x_2119 : i32 = u_xlati75;
      let x_2121 : i32 = u_xlati75;
      let x_2124 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[(x_2119 / 4i)][(x_2121 % 4i)];
      let x_2125 : vec3<f32> = vs_TEXCOORD1;
      let x_2128 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2124 * vec4<f32>(x_2125.x, x_2125.x, x_2125.x, x_2125.x)) + x_2128);
      let x_2130 : i32 = u_xlati75;
      let x_2133 : i32 = u_xlati75;
      let x_2137 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_2130 + 2i) / 4i)][((x_2133 + 2i) % 4i)];
      let x_2138 : vec3<f32> = vs_TEXCOORD1;
      let x_2141 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2137 * vec4<f32>(x_2138.z, x_2138.z, x_2138.z, x_2138.z)) + x_2141);
      let x_2143 : vec4<f32> = u_xlat8;
      let x_2144 : i32 = u_xlati75;
      let x_2147 : i32 = u_xlati75;
      let x_2151 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_2144 + 3i) / 4i)][((x_2147 + 3i) % 4i)];
      u_xlat8 = (x_2143 + x_2151);
      let x_2153 : vec4<f32> = u_xlat8;
      let x_2155 : vec4<f32> = u_xlat8;
      let x_2157 : vec3<f32> = (vec3<f32>(x_2153.x, x_2153.y, x_2153.z) / vec3<f32>(x_2155.w, x_2155.w, x_2155.w));
      let x_2158 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
      let x_2161 : i32 = u_xlati29;
      let x_2163 : f32 = x_133.x_AdditionalShadowParams[x_2161].y;
      u_xlatb75 = (0.0f < x_2163);
      let x_2165 : bool = u_xlatb75;
      if (x_2165) {
        let x_2168 : i32 = u_xlati29;
        let x_2170 : f32 = x_133.x_AdditionalShadowParams[x_2168].y;
        u_xlatb75 = (1.0f == x_2170);
        let x_2172 : bool = u_xlatb75;
        if (x_2172) {
          let x_2175 : vec4<f32> = u_xlat8;
          let x_2179 : vec4<f32> = x_133.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2175.x, x_2175.y, x_2175.x, x_2175.y) + x_2179);
          let x_2182 : vec4<f32> = u_xlat9;
          let x_2183 : vec2<f32> = vec2<f32>(x_2182.x, x_2182.y);
          let x_2185 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
          let x_2193 : vec3<f32> = txVec30;
          let x_2195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2193.xy, x_2193.z);
          u_xlat10.x = x_2195;
          let x_2198 : vec4<f32> = u_xlat9;
          let x_2199 : vec2<f32> = vec2<f32>(x_2198.z, x_2198.w);
          let x_2201 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2199.x, x_2199.y, x_2201);
          let x_2208 : vec3<f32> = txVec31;
          let x_2210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2208.xy, x_2208.z);
          u_xlat10.y = x_2210;
          let x_2212 : vec4<f32> = u_xlat8;
          let x_2216 : vec4<f32> = x_133.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2212.x, x_2212.y, x_2212.x, x_2212.y) + x_2216);
          let x_2219 : vec4<f32> = u_xlat9;
          let x_2220 : vec2<f32> = vec2<f32>(x_2219.x, x_2219.y);
          let x_2222 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2220.x, x_2220.y, x_2222);
          let x_2229 : vec3<f32> = txVec32;
          let x_2231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2229.xy, x_2229.z);
          u_xlat10.z = x_2231;
          let x_2234 : vec4<f32> = u_xlat9;
          let x_2235 : vec2<f32> = vec2<f32>(x_2234.z, x_2234.w);
          let x_2237 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2235.x, x_2235.y, x_2237);
          let x_2244 : vec3<f32> = txVec33;
          let x_2246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2244.xy, x_2244.z);
          u_xlat10.w = x_2246;
          let x_2248 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2248, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2251 : i32 = u_xlati29;
          let x_2253 : f32 = x_133.x_AdditionalShadowParams[x_2251].y;
          u_xlatb76 = (2.0f == x_2253);
          let x_2255 : bool = u_xlatb76;
          if (x_2255) {
            let x_2258 : vec4<f32> = u_xlat8;
            let x_2262 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2265 : vec2<f32> = ((vec2<f32>(x_2258.x, x_2258.y) * vec2<f32>(x_2262.z, x_2262.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2266 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2265.x, x_2265.y, x_2266.z, x_2266.w);
            let x_2268 : vec4<f32> = u_xlat9;
            let x_2270 : vec2<f32> = floor(vec2<f32>(x_2268.x, x_2268.y));
            let x_2271 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
            let x_2274 : vec4<f32> = u_xlat8;
            let x_2277 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2280 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2274.x, x_2274.y) * vec2<f32>(x_2277.z, x_2277.w)) + -(vec2<f32>(x_2280.x, x_2280.y)));
            let x_2284 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2284.x, x_2284.x, x_2284.y, x_2284.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2287 : vec4<f32> = u_xlat10;
            let x_2289 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2287.x, x_2287.x, x_2287.z, x_2287.z) * vec4<f32>(x_2289.x, x_2289.x, x_2289.z, x_2289.z));
            let x_2292 : vec4<f32> = u_xlat11;
            let x_2294 : vec2<f32> = (vec2<f32>(x_2292.y, x_2292.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2295 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2294.x, x_2295.y, x_2294.y, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat11;
            let x_2300 : vec2<f32> = u_xlat55;
            let x_2302 : vec2<f32> = ((vec2<f32>(x_2297.x, x_2297.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2300));
            let x_2303 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2302.x, x_2302.y, x_2303.z, x_2303.w);
            let x_2306 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2306) + vec2<f32>(1.0f, 1.0f));
            let x_2309 : vec2<f32> = u_xlat55;
            let x_2310 : vec2<f32> = min(x_2309, vec2<f32>(0.0f, 0.0f));
            let x_2311 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
            let x_2313 : vec4<f32> = u_xlat12;
            let x_2316 : vec4<f32> = u_xlat12;
            let x_2319 : vec2<f32> = u_xlat57;
            let x_2320 : vec2<f32> = ((-(vec2<f32>(x_2313.x, x_2313.y)) * vec2<f32>(x_2316.x, x_2316.y)) + x_2319);
            let x_2321 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2320.x, x_2320.y, x_2321.z, x_2321.w);
            let x_2323 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2323, vec2<f32>(0.0f, 0.0f));
            let x_2325 : vec2<f32> = u_xlat55;
            let x_2327 : vec2<f32> = u_xlat55;
            let x_2329 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2325) * x_2327) + vec2<f32>(x_2329.y, x_2329.w));
            let x_2332 : vec4<f32> = u_xlat12;
            let x_2334 : vec2<f32> = (vec2<f32>(x_2332.x, x_2332.y) + vec2<f32>(1.0f, 1.0f));
            let x_2335 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
            let x_2337 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2337 + vec2<f32>(1.0f, 1.0f));
            let x_2339 : vec4<f32> = u_xlat11;
            let x_2341 : vec2<f32> = (vec2<f32>(x_2339.x, x_2339.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2342 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
            let x_2344 : vec2<f32> = u_xlat57;
            let x_2345 : vec2<f32> = (x_2344 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2346 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2345.x, x_2345.y, x_2346.z, x_2346.w);
            let x_2348 : vec4<f32> = u_xlat12;
            let x_2350 : vec2<f32> = (vec2<f32>(x_2348.x, x_2348.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2351 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
            let x_2353 : vec2<f32> = u_xlat55;
            let x_2354 : vec2<f32> = (x_2353 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2355 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2354.x, x_2354.y, x_2355.z, x_2355.w);
            let x_2357 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2357.y, x_2357.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2361 : f32 = u_xlat12.x;
            u_xlat13.z = x_2361;
            let x_2364 : f32 = u_xlat55.x;
            u_xlat13.w = x_2364;
            let x_2367 : f32 = u_xlat14.x;
            u_xlat11.z = x_2367;
            let x_2370 : f32 = u_xlat10.x;
            u_xlat11.w = x_2370;
            let x_2372 : vec4<f32> = u_xlat11;
            let x_2374 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2372.z, x_2372.w, x_2372.x, x_2372.z) + vec4<f32>(x_2374.z, x_2374.w, x_2374.x, x_2374.z));
            let x_2378 : f32 = u_xlat13.y;
            u_xlat12.z = x_2378;
            let x_2381 : f32 = u_xlat55.y;
            u_xlat12.w = x_2381;
            let x_2384 : f32 = u_xlat11.y;
            u_xlat14.z = x_2384;
            let x_2387 : f32 = u_xlat10.z;
            u_xlat14.w = x_2387;
            let x_2389 : vec4<f32> = u_xlat12;
            let x_2391 : vec4<f32> = u_xlat14;
            let x_2393 : vec3<f32> = (vec3<f32>(x_2389.z, x_2389.y, x_2389.w) + vec3<f32>(x_2391.z, x_2391.y, x_2391.w));
            let x_2394 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat11;
            let x_2398 : vec4<f32> = u_xlat15;
            let x_2400 : vec3<f32> = (vec3<f32>(x_2396.x, x_2396.z, x_2396.w) / vec3<f32>(x_2398.z, x_2398.w, x_2398.y));
            let x_2401 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat11;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.y, x_2403.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2406 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat14;
            let x_2410 : vec4<f32> = u_xlat10;
            let x_2412 : vec3<f32> = (vec3<f32>(x_2408.z, x_2408.y, x_2408.w) / vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
            let x_2413 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
            let x_2415 : vec4<f32> = u_xlat12;
            let x_2417 : vec3<f32> = (vec3<f32>(x_2415.x, x_2415.y, x_2415.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2418 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
            let x_2420 : vec4<f32> = u_xlat11;
            let x_2423 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2425 : vec3<f32> = (vec3<f32>(x_2420.y, x_2420.x, x_2420.z) * vec3<f32>(x_2423.x, x_2423.x, x_2423.x));
            let x_2426 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
            let x_2428 : vec4<f32> = u_xlat12;
            let x_2431 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2433 : vec3<f32> = (vec3<f32>(x_2428.x, x_2428.y, x_2428.z) * vec3<f32>(x_2431.y, x_2431.y, x_2431.y));
            let x_2434 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
            let x_2437 : f32 = u_xlat12.x;
            u_xlat11.w = x_2437;
            let x_2439 : vec4<f32> = u_xlat9;
            let x_2442 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2445 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2439.x, x_2439.y, x_2439.x, x_2439.y) * vec4<f32>(x_2442.x, x_2442.y, x_2442.x, x_2442.y)) + vec4<f32>(x_2445.y, x_2445.w, x_2445.x, x_2445.w));
            let x_2448 : vec4<f32> = u_xlat9;
            let x_2451 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2454 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2448.x, x_2448.y) * vec2<f32>(x_2451.x, x_2451.y)) + vec2<f32>(x_2454.z, x_2454.w));
            let x_2458 : f32 = u_xlat11.y;
            u_xlat12.w = x_2458;
            let x_2460 : vec4<f32> = u_xlat12;
            let x_2461 : vec2<f32> = vec2<f32>(x_2460.y, x_2460.z);
            let x_2462 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2462.x, x_2461.x, x_2462.z, x_2461.y);
            let x_2464 : vec4<f32> = u_xlat9;
            let x_2467 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2470 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2464.x, x_2464.y, x_2464.x, x_2464.y) * vec4<f32>(x_2467.x, x_2467.y, x_2467.x, x_2467.y)) + vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2470.y));
            let x_2473 : vec4<f32> = u_xlat9;
            let x_2476 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2479 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2473.x, x_2473.y, x_2473.x, x_2473.y) * vec4<f32>(x_2476.x, x_2476.y, x_2476.x, x_2476.y)) + vec4<f32>(x_2479.w, x_2479.y, x_2479.w, x_2479.z));
            let x_2482 : vec4<f32> = u_xlat9;
            let x_2485 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2488 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2482.x, x_2482.y, x_2482.x, x_2482.y) * vec4<f32>(x_2485.x, x_2485.y, x_2485.x, x_2485.y)) + vec4<f32>(x_2488.x, x_2488.w, x_2488.z, x_2488.w));
            let x_2491 : vec4<f32> = u_xlat10;
            let x_2493 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2491.x, x_2491.x, x_2491.x, x_2491.y) * vec4<f32>(x_2493.z, x_2493.w, x_2493.y, x_2493.z));
            let x_2496 : vec4<f32> = u_xlat10;
            let x_2498 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2496.y, x_2496.y, x_2496.z, x_2496.z) * x_2498);
            let x_2501 : f32 = u_xlat10.z;
            let x_2503 : f32 = u_xlat15.y;
            u_xlat76 = (x_2501 * x_2503);
            let x_2506 : vec4<f32> = u_xlat13;
            let x_2507 : vec2<f32> = vec2<f32>(x_2506.x, x_2506.y);
            let x_2509 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2507.x, x_2507.y, x_2509);
            let x_2516 : vec3<f32> = txVec34;
            let x_2518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2516.xy, x_2516.z);
            u_xlat77 = x_2518;
            let x_2520 : vec4<f32> = u_xlat13;
            let x_2521 : vec2<f32> = vec2<f32>(x_2520.z, x_2520.w);
            let x_2523 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
            let x_2530 : vec3<f32> = txVec35;
            let x_2532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
            u_xlat9.x = x_2532;
            let x_2535 : f32 = u_xlat9.x;
            let x_2537 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2535 * x_2537);
            let x_2541 : f32 = u_xlat16.x;
            let x_2542 : f32 = u_xlat77;
            let x_2545 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2541 * x_2542) + x_2545);
            let x_2548 : vec2<f32> = u_xlat55;
            let x_2550 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec36;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat9.x = x_2559;
            let x_2562 : f32 = u_xlat16.z;
            let x_2564 : f32 = u_xlat9.x;
            let x_2566 : f32 = u_xlat77;
            u_xlat77 = ((x_2562 * x_2564) + x_2566);
            let x_2569 : vec4<f32> = u_xlat12;
            let x_2570 : vec2<f32> = vec2<f32>(x_2569.x, x_2569.y);
            let x_2572 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
            let x_2579 : vec3<f32> = txVec37;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat9.x = x_2581;
            let x_2584 : f32 = u_xlat16.w;
            let x_2586 : f32 = u_xlat9.x;
            let x_2588 : f32 = u_xlat77;
            u_xlat77 = ((x_2584 * x_2586) + x_2588);
            let x_2591 : vec4<f32> = u_xlat14;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.x, x_2591.y);
            let x_2594 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2592.x, x_2592.y, x_2594);
            let x_2601 : vec3<f32> = txVec38;
            let x_2603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2601.xy, x_2601.z);
            u_xlat9.x = x_2603;
            let x_2606 : f32 = u_xlat17.x;
            let x_2608 : f32 = u_xlat9.x;
            let x_2610 : f32 = u_xlat77;
            u_xlat77 = ((x_2606 * x_2608) + x_2610);
            let x_2613 : vec4<f32> = u_xlat14;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.z, x_2613.w);
            let x_2616 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2614.x, x_2614.y, x_2616);
            let x_2623 : vec3<f32> = txVec39;
            let x_2625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2623.xy, x_2623.z);
            u_xlat9.x = x_2625;
            let x_2628 : f32 = u_xlat17.y;
            let x_2630 : f32 = u_xlat9.x;
            let x_2632 : f32 = u_xlat77;
            u_xlat77 = ((x_2628 * x_2630) + x_2632);
            let x_2635 : vec4<f32> = u_xlat12;
            let x_2636 : vec2<f32> = vec2<f32>(x_2635.z, x_2635.w);
            let x_2638 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec40;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat9.x = x_2647;
            let x_2650 : f32 = u_xlat17.z;
            let x_2652 : f32 = u_xlat9.x;
            let x_2654 : f32 = u_xlat77;
            u_xlat77 = ((x_2650 * x_2652) + x_2654);
            let x_2657 : vec4<f32> = u_xlat11;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.x, x_2657.y);
            let x_2660 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2667 : vec3<f32> = txVec41;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat9.x = x_2669;
            let x_2672 : f32 = u_xlat17.w;
            let x_2674 : f32 = u_xlat9.x;
            let x_2676 : f32 = u_xlat77;
            u_xlat77 = ((x_2672 * x_2674) + x_2676);
            let x_2679 : vec4<f32> = u_xlat11;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec42;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat9.x = x_2691;
            let x_2693 : f32 = u_xlat76;
            let x_2695 : f32 = u_xlat9.x;
            let x_2697 : f32 = u_xlat77;
            u_xlat75 = ((x_2693 * x_2695) + x_2697);
          } else {
            let x_2700 : vec4<f32> = u_xlat8;
            let x_2703 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2706 : vec2<f32> = ((vec2<f32>(x_2700.x, x_2700.y) * vec2<f32>(x_2703.z, x_2703.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2707 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2706.x, x_2706.y, x_2707.z, x_2707.w);
            let x_2709 : vec4<f32> = u_xlat9;
            let x_2711 : vec2<f32> = floor(vec2<f32>(x_2709.x, x_2709.y));
            let x_2712 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec4<f32> = u_xlat8;
            let x_2717 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2720 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2717.z, x_2717.w)) + -(vec2<f32>(x_2720.x, x_2720.y)));
            let x_2724 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2724.x, x_2724.x, x_2724.y, x_2724.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2727 : vec4<f32> = u_xlat10;
            let x_2729 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2727.x, x_2727.x, x_2727.z, x_2727.z) * vec4<f32>(x_2729.x, x_2729.x, x_2729.z, x_2729.z));
            let x_2732 : vec4<f32> = u_xlat11;
            let x_2734 : vec2<f32> = (vec2<f32>(x_2732.y, x_2732.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2735 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2735.x, x_2734.x, x_2735.z, x_2734.y);
            let x_2737 : vec4<f32> = u_xlat11;
            let x_2740 : vec2<f32> = u_xlat55;
            let x_2742 : vec2<f32> = ((vec2<f32>(x_2737.x, x_2737.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2740));
            let x_2743 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2742.x, x_2743.y, x_2742.y, x_2743.w);
            let x_2745 : vec2<f32> = u_xlat55;
            let x_2747 : vec2<f32> = (-(x_2745) + vec2<f32>(1.0f, 1.0f));
            let x_2748 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
            let x_2750 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2750, vec2<f32>(0.0f, 0.0f));
            let x_2752 : vec2<f32> = u_xlat57;
            let x_2754 : vec2<f32> = u_xlat57;
            let x_2756 : vec4<f32> = u_xlat11;
            let x_2758 : vec2<f32> = ((-(x_2752) * x_2754) + vec2<f32>(x_2756.x, x_2756.y));
            let x_2759 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2758.x, x_2758.y, x_2759.z, x_2759.w);
            let x_2761 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2761, vec2<f32>(0.0f, 0.0f));
            let x_2764 : vec2<f32> = u_xlat57;
            let x_2766 : vec2<f32> = u_xlat57;
            let x_2768 : vec4<f32> = u_xlat10;
            let x_2770 : vec2<f32> = ((-(x_2764) * x_2766) + vec2<f32>(x_2768.y, x_2768.w));
            let x_2771 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2770.x, x_2771.y, x_2770.y);
            let x_2773 : vec4<f32> = u_xlat11;
            let x_2775 : vec2<f32> = (vec2<f32>(x_2773.x, x_2773.y) + vec2<f32>(2.0f, 2.0f));
            let x_2776 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2778 : vec3<f32> = u_xlat33;
            let x_2780 : vec2<f32> = (vec2<f32>(x_2778.x, x_2778.z) + vec2<f32>(2.0f, 2.0f));
            let x_2781 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2781.x, x_2780.x, x_2781.z, x_2780.y);
            let x_2784 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2784 * 0.08163200318813323975f);
            let x_2787 : vec4<f32> = u_xlat10;
            let x_2789 : vec3<f32> = (vec3<f32>(x_2787.z, x_2787.x, x_2787.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2790 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2789.x, x_2789.y, x_2789.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat11;
            let x_2794 : vec2<f32> = (vec2<f32>(x_2792.x, x_2792.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2795 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2794.x, x_2794.y, x_2795.z, x_2795.w);
            let x_2798 : f32 = u_xlat14.y;
            u_xlat13.x = x_2798;
            let x_2800 : vec2<f32> = u_xlat55;
            let x_2803 : vec2<f32> = ((vec2<f32>(x_2800.x, x_2800.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2804 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2804.x, x_2803.x, x_2804.z, x_2803.y);
            let x_2806 : vec2<f32> = u_xlat55;
            let x_2809 : vec2<f32> = ((vec2<f32>(x_2806.x, x_2806.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2810 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2809.x, x_2810.y, x_2809.y, x_2810.w);
            let x_2813 : f32 = u_xlat10.x;
            u_xlat11.y = x_2813;
            let x_2816 : f32 = u_xlat12.y;
            u_xlat11.w = x_2816;
            let x_2818 : vec4<f32> = u_xlat11;
            let x_2819 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2818 + x_2819);
            let x_2821 : vec2<f32> = u_xlat55;
            let x_2824 : vec2<f32> = ((vec2<f32>(x_2821.y, x_2821.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2825 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2825.x, x_2824.x, x_2825.z, x_2824.y);
            let x_2827 : vec2<f32> = u_xlat55;
            let x_2830 : vec2<f32> = ((vec2<f32>(x_2827.y, x_2827.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2831 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2830.x, x_2831.y, x_2830.y, x_2831.w);
            let x_2834 : f32 = u_xlat10.y;
            u_xlat12.y = x_2834;
            let x_2836 : vec4<f32> = u_xlat12;
            let x_2837 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2836 + x_2837);
            let x_2839 : vec4<f32> = u_xlat11;
            let x_2840 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2839 / x_2840);
            let x_2842 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2842 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2844 : vec4<f32> = u_xlat12;
            let x_2845 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2844 / x_2845);
            let x_2847 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2847 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2849 : vec4<f32> = u_xlat11;
            let x_2852 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2849.w, x_2849.x, x_2849.y, x_2849.z) * vec4<f32>(x_2852.x, x_2852.x, x_2852.x, x_2852.x));
            let x_2855 : vec4<f32> = u_xlat12;
            let x_2858 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2855.x, x_2855.w, x_2855.y, x_2855.z) * vec4<f32>(x_2858.y, x_2858.y, x_2858.y, x_2858.y));
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2862 : vec3<f32> = vec3<f32>(x_2861.y, x_2861.z, x_2861.w);
            let x_2863 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2862.x, x_2863.y, x_2862.y, x_2862.z);
            let x_2866 : f32 = u_xlat12.x;
            u_xlat14.y = x_2866;
            let x_2868 : vec4<f32> = u_xlat9;
            let x_2871 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2874 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2868.x, x_2868.y, x_2868.x, x_2868.y) * vec4<f32>(x_2871.x, x_2871.y, x_2871.x, x_2871.y)) + vec4<f32>(x_2874.x, x_2874.y, x_2874.z, x_2874.y));
            let x_2877 : vec4<f32> = u_xlat9;
            let x_2880 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2883 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2877.x, x_2877.y) * vec2<f32>(x_2880.x, x_2880.y)) + vec2<f32>(x_2883.w, x_2883.y));
            let x_2887 : f32 = u_xlat14.y;
            u_xlat11.y = x_2887;
            let x_2890 : f32 = u_xlat12.z;
            u_xlat14.y = x_2890;
            let x_2892 : vec4<f32> = u_xlat9;
            let x_2895 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y) * vec4<f32>(x_2895.x, x_2895.y, x_2895.x, x_2895.y)) + vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2898.y));
            let x_2901 : vec4<f32> = u_xlat9;
            let x_2904 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2907 : vec4<f32> = u_xlat14;
            let x_2909 : vec2<f32> = ((vec2<f32>(x_2901.x, x_2901.y) * vec2<f32>(x_2904.x, x_2904.y)) + vec2<f32>(x_2907.w, x_2907.y));
            let x_2910 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2909.x, x_2909.y, x_2910.z, x_2910.w);
            let x_2913 : f32 = u_xlat14.y;
            u_xlat11.z = x_2913;
            let x_2915 : vec4<f32> = u_xlat9;
            let x_2918 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2921 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2915.x, x_2915.y, x_2915.x, x_2915.y) * vec4<f32>(x_2918.x, x_2918.y, x_2918.x, x_2918.y)) + vec4<f32>(x_2921.x, x_2921.y, x_2921.x, x_2921.z));
            let x_2925 : f32 = u_xlat12.w;
            u_xlat14.y = x_2925;
            let x_2928 : vec4<f32> = u_xlat9;
            let x_2931 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2934.y));
            let x_2938 : vec4<f32> = u_xlat9;
            let x_2941 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2944 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2938.x, x_2938.y) * vec2<f32>(x_2941.x, x_2941.y)) + vec2<f32>(x_2944.w, x_2944.y));
            let x_2948 : f32 = u_xlat14.y;
            u_xlat11.w = x_2948;
            let x_2951 : vec4<f32> = u_xlat9;
            let x_2954 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2957 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2954.x, x_2954.y)) + vec2<f32>(x_2957.x, x_2957.w));
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2961 : vec3<f32> = vec3<f32>(x_2960.x, x_2960.z, x_2960.w);
            let x_2962 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2961.x, x_2962.y, x_2961.y, x_2961.z);
            let x_2964 : vec4<f32> = u_xlat9;
            let x_2967 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2970 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2964.x, x_2964.y, x_2964.x, x_2964.y) * vec4<f32>(x_2967.x, x_2967.y, x_2967.x, x_2967.y)) + vec4<f32>(x_2970.x, x_2970.y, x_2970.z, x_2970.y));
            let x_2974 : vec4<f32> = u_xlat9;
            let x_2977 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2977.x, x_2977.y)) + vec2<f32>(x_2980.w, x_2980.y));
            let x_2984 : f32 = u_xlat11.x;
            u_xlat12.x = x_2984;
            let x_2986 : vec4<f32> = u_xlat9;
            let x_2989 : vec4<f32> = x_133.x_AdditionalShadowmapSize;
            let x_2992 : vec4<f32> = u_xlat12;
            let x_2994 : vec2<f32> = ((vec2<f32>(x_2986.x, x_2986.y) * vec2<f32>(x_2989.x, x_2989.y)) + vec2<f32>(x_2992.x, x_2992.y));
            let x_2995 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2994.x, x_2994.y, x_2995.z, x_2995.w);
            let x_2998 : vec4<f32> = u_xlat10;
            let x_3000 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2998.x, x_2998.x, x_2998.x, x_2998.x) * x_3000);
            let x_3003 : vec4<f32> = u_xlat10;
            let x_3005 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3003.y, x_3003.y, x_3003.y, x_3003.y) * x_3005);
            let x_3008 : vec4<f32> = u_xlat10;
            let x_3010 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3008.z, x_3008.z, x_3008.z, x_3008.z) * x_3010);
            let x_3012 : vec4<f32> = u_xlat10;
            let x_3014 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3012.w, x_3012.w, x_3012.w, x_3012.w) * x_3014);
            let x_3017 : vec4<f32> = u_xlat15;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.x, x_3017.y);
            let x_3020 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec43;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat76 = x_3029;
            let x_3031 : vec4<f32> = u_xlat15;
            let x_3032 : vec2<f32> = vec2<f32>(x_3031.z, x_3031.w);
            let x_3034 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3032.x, x_3032.y, x_3034);
            let x_3041 : vec3<f32> = txVec44;
            let x_3043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
            u_xlat77 = x_3043;
            let x_3044 : f32 = u_xlat77;
            let x_3046 : f32 = u_xlat20.y;
            u_xlat77 = (x_3044 * x_3046);
            let x_3049 : f32 = u_xlat20.x;
            let x_3050 : f32 = u_xlat76;
            let x_3052 : f32 = u_xlat77;
            u_xlat76 = ((x_3049 * x_3050) + x_3052);
            let x_3055 : vec2<f32> = u_xlat55;
            let x_3057 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3055.x, x_3055.y, x_3057);
            let x_3064 : vec3<f32> = txVec45;
            let x_3066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3064.xy, x_3064.z);
            u_xlat77 = x_3066;
            let x_3068 : f32 = u_xlat20.z;
            let x_3069 : f32 = u_xlat77;
            let x_3071 : f32 = u_xlat76;
            u_xlat76 = ((x_3068 * x_3069) + x_3071);
            let x_3074 : vec4<f32> = u_xlat18;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.x, x_3074.y);
            let x_3077 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3084 : vec3<f32> = txVec46;
            let x_3086 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3084.xy, x_3084.z);
            u_xlat77 = x_3086;
            let x_3088 : f32 = u_xlat20.w;
            let x_3089 : f32 = u_xlat77;
            let x_3091 : f32 = u_xlat76;
            u_xlat76 = ((x_3088 * x_3089) + x_3091);
            let x_3094 : vec4<f32> = u_xlat16;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec47;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat77 = x_3106;
            let x_3108 : f32 = u_xlat21.x;
            let x_3109 : f32 = u_xlat77;
            let x_3111 : f32 = u_xlat76;
            u_xlat76 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec4<f32> = u_xlat16;
            let x_3115 : vec2<f32> = vec2<f32>(x_3114.z, x_3114.w);
            let x_3117 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec48;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat77 = x_3126;
            let x_3128 : f32 = u_xlat21.y;
            let x_3129 : f32 = u_xlat77;
            let x_3131 : f32 = u_xlat76;
            u_xlat76 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat17;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.x, x_3134.y);
            let x_3137 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec49;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat77 = x_3146;
            let x_3148 : f32 = u_xlat21.z;
            let x_3149 : f32 = u_xlat77;
            let x_3151 : f32 = u_xlat76;
            u_xlat76 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec4<f32> = u_xlat18;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.z, x_3154.w);
            let x_3157 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec50;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat77 = x_3166;
            let x_3168 : f32 = u_xlat21.w;
            let x_3169 : f32 = u_xlat77;
            let x_3171 : f32 = u_xlat76;
            u_xlat76 = ((x_3168 * x_3169) + x_3171);
            let x_3174 : vec4<f32> = u_xlat19;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.x, x_3174.y);
            let x_3177 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec51;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat77 = x_3186;
            let x_3188 : f32 = u_xlat22.x;
            let x_3189 : f32 = u_xlat77;
            let x_3191 : f32 = u_xlat76;
            u_xlat76 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat19;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.z, x_3194.w);
            let x_3197 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec52;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat77 = x_3206;
            let x_3208 : f32 = u_xlat22.y;
            let x_3209 : f32 = u_xlat77;
            let x_3211 : f32 = u_xlat76;
            u_xlat76 = ((x_3208 * x_3209) + x_3211);
            let x_3214 : vec2<f32> = u_xlat34;
            let x_3216 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec53;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat77 = x_3225;
            let x_3227 : f32 = u_xlat22.z;
            let x_3228 : f32 = u_xlat77;
            let x_3230 : f32 = u_xlat76;
            u_xlat76 = ((x_3227 * x_3228) + x_3230);
            let x_3233 : vec2<f32> = u_xlat63;
            let x_3235 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec54;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat77 = x_3244;
            let x_3246 : f32 = u_xlat22.w;
            let x_3247 : f32 = u_xlat77;
            let x_3249 : f32 = u_xlat76;
            u_xlat76 = ((x_3246 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat14;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.x, x_3252.y);
            let x_3255 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec55;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat77 = x_3264;
            let x_3266 : f32 = u_xlat10.x;
            let x_3267 : f32 = u_xlat77;
            let x_3269 : f32 = u_xlat76;
            u_xlat76 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec4<f32> = u_xlat14;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.z, x_3272.w);
            let x_3275 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec56;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat77 = x_3284;
            let x_3286 : f32 = u_xlat10.y;
            let x_3287 : f32 = u_xlat77;
            let x_3289 : f32 = u_xlat76;
            u_xlat76 = ((x_3286 * x_3287) + x_3289);
            let x_3292 : vec2<f32> = u_xlat58;
            let x_3294 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec57;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat77 = x_3303;
            let x_3305 : f32 = u_xlat10.z;
            let x_3306 : f32 = u_xlat77;
            let x_3308 : f32 = u_xlat76;
            u_xlat76 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat9;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.x, x_3311.y);
            let x_3314 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec58;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat77 = x_3323;
            let x_3325 : f32 = u_xlat10.w;
            let x_3326 : f32 = u_xlat77;
            let x_3328 : f32 = u_xlat76;
            u_xlat75 = ((x_3325 * x_3326) + x_3328);
          }
        }
      } else {
        let x_3332 : vec4<f32> = u_xlat8;
        let x_3333 : vec2<f32> = vec2<f32>(x_3332.x, x_3332.y);
        let x_3335 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
        let x_3342 : vec3<f32> = txVec59;
        let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
        u_xlat75 = x_3344;
      }
      let x_3345 : i32 = u_xlati29;
      let x_3347 : f32 = x_133.x_AdditionalShadowParams[x_3345].x;
      u_xlat76 = (1.0f + -(x_3347));
      let x_3350 : f32 = u_xlat75;
      let x_3351 : i32 = u_xlati29;
      let x_3353 : f32 = x_133.x_AdditionalShadowParams[x_3351].x;
      let x_3355 : f32 = u_xlat76;
      u_xlat75 = ((x_3350 * x_3353) + x_3355);
      let x_3358 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3358);
      let x_3361 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3361 >= 1.0f);
      let x_3364 : bool = u_xlatb76;
      let x_3366 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3364 | x_3366);
      let x_3368 : bool = u_xlatb76;
      let x_3369 : f32 = u_xlat75;
      u_xlat75 = select(x_3369, 1.0f, x_3368);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3372 : f32 = u_xlat75;
    u_xlat76 = (-(x_3372) + 1.0f);
    let x_3376 : f32 = u_xlat26.x;
    let x_3377 : f32 = u_xlat76;
    let x_3379 : f32 = u_xlat75;
    u_xlat75 = ((x_3376 * x_3377) + x_3379);
    let x_3381 : f32 = u_xlat75;
    let x_3382 : f32 = u_xlat52;
    u_xlat52 = (x_3381 * x_3382);
    let x_3384 : f32 = u_xlat52;
    let x_3386 : i32 = u_xlati29;
    let x_3388 : vec4<f32> = x_1939.x_AdditionalLightsColor[x_3386];
    u_xlat29 = (vec3<f32>(x_3384, x_3384, x_3384) * vec3<f32>(x_3388.x, x_3388.y, x_3388.z));
    let x_3391 : vec3<f32> = u_xlat2;
    let x_3392 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(x_3391, vec3<f32>(x_3392.x, x_3392.y, x_3392.z));
    let x_3395 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3395, 0.0f, 1.0f);
    let x_3397 : vec3<f32> = u_xlat29;
    let x_3398 : f32 = u_xlat76;
    let x_3400 : vec3<f32> = (x_3397 * vec3<f32>(x_3398, x_3398, x_3398));
    let x_3401 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3400.x, x_3400.y, x_3400.z, x_3401.w);
    let x_3403 : vec3<f32> = u_xlat1;
    let x_3404 : f32 = u_xlat70;
    let x_3407 : vec4<f32> = u_xlat7;
    let x_3409 : vec3<f32> = ((x_3403 * vec3<f32>(x_3404, x_3404, x_3404)) + vec3<f32>(x_3407.x, x_3407.y, x_3407.z));
    let x_3410 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3409.x, x_3409.y, x_3409.z, x_3410.w);
    let x_3412 : vec4<f32> = u_xlat7;
    let x_3414 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_3412.x, x_3412.y, x_3412.z), vec3<f32>(x_3414.x, x_3414.y, x_3414.z));
    let x_3417 : f32 = u_xlat76;
    u_xlat76 = max(x_3417, 1.17549435e-38f);
    let x_3419 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_3419);
    let x_3421 : f32 = u_xlat76;
    let x_3423 : vec4<f32> = u_xlat7;
    let x_3425 : vec3<f32> = (vec3<f32>(x_3421, x_3421, x_3421) * vec3<f32>(x_3423.x, x_3423.y, x_3423.z));
    let x_3426 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
    let x_3428 : vec3<f32> = u_xlat2;
    let x_3429 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_3428, vec3<f32>(x_3429.x, x_3429.y, x_3429.z));
    let x_3434 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_3434, 0.0f, 1.0f);
    let x_3438 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_3438);
    let x_3441 : f32 = u_xlat73;
    let x_3443 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3441 * x_3443);
    let x_3447 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_3447);
    let x_3450 : vec4<f32> = u_xlat7;
    let x_3453 : vec4<f32> = x_41.x_SpecColor;
    let x_3455 : vec3<f32> = (vec3<f32>(x_3450.x, x_3450.x, x_3450.x) * vec3<f32>(x_3453.x, x_3453.y, x_3453.z));
    let x_3456 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3456.w);
    let x_3458 : vec3<f32> = u_xlat29;
    let x_3459 : vec4<f32> = u_xlat7;
    u_xlat29 = (x_3458 * vec3<f32>(x_3459.x, x_3459.y, x_3459.z));
    let x_3462 : vec4<f32> = u_xlat8;
    let x_3464 : vec4<f32> = u_xlat0;
    let x_3467 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3462.x, x_3462.y, x_3462.z) * vec3<f32>(x_3464.y, x_3464.z, x_3464.w)) + x_3467);
    let x_3469 : vec3<f32> = u_xlat28;
    let x_3470 : vec3<f32> = u_xlat29;
    u_xlat28 = (x_3469 + x_3470);

    continuing {
      let x_3472 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3472 + bitcast<u32>(1i));
    }
  }
  let x_3475 : vec4<f32> = u_xlat4;
  let x_3477 : vec4<f32> = u_xlat0;
  let x_3480 : vec4<f32> = u_xlat3;
  u_xlat23 = ((vec3<f32>(x_3475.x, x_3475.y, x_3475.z) * vec3<f32>(x_3477.y, x_3477.z, x_3477.w)) + vec3<f32>(x_3480.x, x_3480.z, x_3480.w));
  let x_3483 : vec3<f32> = u_xlat28;
  let x_3484 : vec3<f32> = u_xlat23;
  u_xlat23 = (x_3483 + x_3484);
  let x_3486 : f32 = u_xlat71;
  let x_3487 : f32 = u_xlat71;
  u_xlat1.x = (x_3486 * -(x_3487));
  let x_3492 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3492);
  let x_3495 : vec3<f32> = u_xlat23;
  let x_3497 : vec4<f32> = x_28.unity_FogColor;
  u_xlat23 = (x_3495 + -(vec3<f32>(x_3497.x, x_3497.y, x_3497.z)));
  let x_3503 : vec3<f32> = u_xlat1;
  let x_3505 : vec3<f32> = u_xlat23;
  let x_3508 : vec4<f32> = x_28.unity_FogColor;
  let x_3510 : vec3<f32> = ((vec3<f32>(x_3503.x, x_3503.x, x_3503.x) * x_3505) + vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
  let x_3511 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3511.w);
  let x_3515 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3515 == 1.0f);
  let x_3517 : bool = u_xlatb23;
  if (x_3517) {
    let x_3522 : f32 = u_xlat0.x;
    x_3518 = x_3522;
  } else {
    x_3518 = 1.0f;
  }
  let x_3524 : f32 = x_3518;
  SV_Target0.w = x_3524;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


