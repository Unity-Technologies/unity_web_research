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
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightDirection : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat9 : f32;

@group(1) @binding(0) var<uniform> x_66 : VGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_26 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_13, vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_32 : vec3<f32> = in_NORMAL0;
  let x_34 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_32, vec3<f32>(x_34.x, x_34.y, x_34.z));
  let x_39 : vec3<f32> = in_NORMAL0;
  let x_42 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_39, vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_47 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_47.x, x_47.y, x_47.z), vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_52 : f32 = u_xlat9;
  u_xlat9 = max(x_52, 1.17549435e-38f);
  let x_55 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_55);
  let x_57 : f32 = u_xlat9;
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec3<f32> = (vec3<f32>(x_57, x_57, x_57) * vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_69 : vec3<f32> = x_66.x_LightDirection;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(x_69, vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : f32 = u_xlat9;
  u_xlat9 = clamp(x_73, 0.0f, 1.0f);
  let x_77 : f32 = u_xlat9;
  u_xlat9 = (-(x_77) + 1.0f);
  let x_80 : f32 = u_xlat9;
  let x_83 : f32 = x_66.x_ShadowBias.y;
  u_xlat9 = (x_80 * x_83);
  let x_88 : vec3<f32> = in_POSITION0;
  let x_91 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat1 = (vec3<f32>(x_88.y, x_88.y, x_88.y) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_97 : vec3<f32> = in_POSITION0;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + x_100);
  let x_103 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_105 : vec3<f32> = in_POSITION0;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(x_105.z, x_105.z, x_105.z)) + x_108);
  let x_110 : vec3<f32> = u_xlat1;
  let x_113 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_110 + vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_118 : vec3<f32> = x_66.x_LightDirection;
  let x_120 : vec4<f32> = x_66.x_ShadowBias;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat2 = ((x_118 * vec3<f32>(x_120.x, x_120.x, x_120.x)) + x_123);
  let x_126 : vec3<f32> = u_xlat1;
  vs_INTERP1 = x_126;
  let x_127 : vec4<f32> = u_xlat0;
  let x_129 : f32 = u_xlat9;
  let x_132 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(x_129, x_129, x_129)) + x_132);
  let x_135 : vec4<f32> = u_xlat0;
  vs_INTERP2 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_137 : vec3<f32> = u_xlat1;
  let x_140 : vec4<f32> = x_66.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_137.y, x_137.y, x_137.y, x_137.y) * x_140);
  let x_143 : vec4<f32> = x_66.unity_MatrixVP[0i];
  let x_144 : vec3<f32> = u_xlat1;
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_150 : vec4<f32> = x_66.unity_MatrixVP[2i];
  let x_151 : vec3<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_66.unity_MatrixVP[3i];
  u_xlat0 = (x_156 + x_158);
  let x_165 : f32 = u_xlat0.z;
  gl_Position.z = min(x_165, 1.0f);
  let x_169 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.w);
  let x_173 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_170.x, x_170.y, x_173.z, x_170.z);
  let x_178 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_178;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position);
}


