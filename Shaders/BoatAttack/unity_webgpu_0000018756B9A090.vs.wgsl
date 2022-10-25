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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_69 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_INTERP1 : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_69.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y) * x_71);
  let x_74 : vec4<f32> = x_69.unity_MatrixVP[0i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_74 * vec4<f32>(x_75.x, x_75.x, x_75.x, x_75.x)) + x_78);
  let x_81 : vec4<f32> = x_69.unity_MatrixVP[2i];
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_81 * vec4<f32>(x_82.z, x_82.z, x_82.z, x_82.z)) + x_85);
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = x_69.unity_MatrixVP[3i];
  gl_Position = (x_92 + x_94);
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_99, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_107 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_107, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_113 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_113, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : f32 = u_xlat6;
  u_xlat6 = max(x_125, 1.17549435e-37f);
  let x_128 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_128);
  let x_132 : f32 = u_xlat6;
  let x_134 : vec4<f32> = u_xlat0;
  vs_INTERP0 = (vec3<f32>(x_132, x_132, x_132) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec4<f32> = in_TANGENT0;
  let x_142 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_150 : vec4<f32> = in_TANGENT0;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_161 : vec4<f32> = in_TANGENT0;
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : f32 = u_xlat6;
  u_xlat6 = max(x_174, 1.17549435e-37f);
  let x_176 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_176);
  let x_179 : f32 = u_xlat6;
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = vs_INTERP1;
  vs_INTERP1 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_189 : f32 = in_TANGENT0.w;
  vs_INTERP1.w = x_189;
  let x_194 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP2 = x_194;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec3<f32>,
  @location(1)
  vs_INTERP1_1 : vec4<f32>,
  @location(2)
  vs_INTERP2_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0, vs_INTERP1, vs_INTERP2);
}

