diagnostic(off, derivative_uniformity);

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

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_54 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_103 : UnityPerMaterial;

var<private> u_xlat9 : f32;

var<private> u_xlatb9 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_140 : f32;
  var x_200 : f32;
  var x_212 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_29 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_30 : vec4<f32> = in_POSITION0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_29 * vec4<f32>(x_30.x, x_30.x, x_30.x, x_30.x)) + x_33);
  let x_37 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_38 : vec4<f32> = in_POSITION0;
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_37 * vec4<f32>(x_38.z, x_38.z, x_38.z, x_38.z)) + x_41);
  let x_43 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat0 = (x_43 + x_46);
  let x_49 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_54.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_49.y, x_49.y, x_49.y, x_49.y) * x_56);
  let x_59 : vec4<f32> = x_54.unity_MatrixVP[0i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.x, x_60.x, x_60.x, x_60.x)) + x_63);
  let x_66 : vec4<f32> = x_54.unity_MatrixVP[2i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_66 * vec4<f32>(x_67.z, x_67.z, x_67.z, x_67.z)) + x_70);
  let x_78 : vec4<f32> = x_54.unity_MatrixVP[3i];
  let x_79 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat1;
  gl_Position = ((x_78 * vec4<f32>(x_79.w, x_79.w, x_79.w, x_79.w)) + x_82);
  let x_86 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = x_54.x_WorldSpaceCameraPos;
  let x_92 : vec3<f32> = (-(vec3<f32>(x_86.x, x_86.y, x_86.z)) + x_91);
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_100 : vec2<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_103.x_BaseMap_ST;
  let x_109 : vec4<f32> = x_103.x_BaseMap_ST;
  vs_TEXCOORD1 = ((x_100 * vec2<f32>(x_105.x, x_105.y)) + vec2<f32>(x_109.z, x_109.w));
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_119);
  let x_121 : f32 = u_xlat9;
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : vec3<f32> = (vec3<f32>(x_121, x_121, x_121) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_134 : f32 = x_54.unity_OrthoParams.w;
  u_xlatb9 = (x_134 == 0.0f);
  let x_138 : bool = u_xlatb9;
  if (x_138) {
    let x_145 : f32 = u_xlat0.x;
    x_140 = x_145;
  } else {
    let x_148 : f32 = x_54.unity_MatrixV[0i].z;
    x_140 = x_148;
  }
  let x_149 : f32 = x_140;
  vs_TEXCOORD2.w = x_149;
  let x_154 : vec3<f32> = in_NORMAL0;
  let x_156 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_154, vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_160 : vec3<f32> = in_NORMAL0;
  let x_162 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_160, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_166, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_179 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_179, 1.17549435e-38f);
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_184);
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_195 : vec3<f32> = vec3<f32>(x_194.x, x_194.y, x_194.z);
  let x_196 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : bool = u_xlatb9;
  if (x_199) {
    let x_204 : f32 = u_xlat0.y;
    x_200 = x_204;
  } else {
    let x_207 : f32 = x_54.unity_MatrixV[1i].z;
    x_200 = x_207;
  }
  let x_208 : f32 = x_200;
  vs_TEXCOORD3.w = x_208;
  let x_211 : bool = u_xlatb9;
  if (x_211) {
    let x_216 : f32 = u_xlat0.z;
    x_212 = x_216;
  } else {
    let x_219 : f32 = x_54.unity_MatrixV[2i].z;
    x_212 = x_219;
  }
  let x_220 : f32 = x_212;
  vs_TEXCOORD4.w = x_220;
  let x_223 : vec4<f32> = in_TANGENT0;
  let x_226 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_228 : vec3<f32> = (vec3<f32>(x_223.y, x_223.y, x_223.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_234 : vec4<f32> = in_TANGENT0;
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234.x, x_234.x, x_234.x)) + vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_245 : vec4<f32> = in_TANGENT0;
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.z, x_245.z, x_245.z)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : f32 = u_xlat9;
  u_xlat9 = max(x_258, 1.17549435e-38f);
  let x_260 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_260);
  let x_262 : f32 = u_xlat9;
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = (vec3<f32>(x_262, x_262, x_262) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = vec3<f32>(x_269.x, x_269.y, x_269.z);
  let x_271 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_275.y, x_275.z, x_275.x) * vec3<f32>(x_277.z, x_277.x, x_277.y));
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec4<f32> = u_xlat0;
  let x_285 : vec3<f32> = u_xlat2;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.y, x_280.z, x_280.x) * vec3<f32>(x_282.z, x_282.x, x_282.y)) + -(x_285));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb9 = (x_291 >= 0.0f);
  let x_293 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_293);
  let x_297 : f32 = u_xlat9;
  let x_300 : f32 = in_TANGENT0.w;
  u_xlat9 = (x_297 * x_300);
  let x_302 : f32 = u_xlat9;
  let x_304 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}


