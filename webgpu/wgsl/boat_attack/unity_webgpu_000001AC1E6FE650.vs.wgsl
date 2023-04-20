diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(128) */
  x_TreeInstanceScale : vec4<f32>,
  /* @offset(144) */
  x_TerrainEngineBendTree : mat4x4<f32>,
  /* @offset(208) */
  x_SquashPlaneNormal : vec4<f32>,
  /* @offset(224) */
  x_SquashAmount : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_TreeInstanceScale;
  let x_25 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_25.z, x_26.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_18.x_TerrainEngineBendTree[1i];
  let x_36 : vec3<f32> = (vec3<f32>(x_29.y, x_29.y, x_29.y) * vec3<f32>(x_34.x, x_34.y, x_34.z));
  let x_37 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_41 : vec4<f32> = x_18.x_TerrainEngineBendTree[0i];
  let x_43 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = u_xlat1;
  let x_48 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_43.x, x_43.x, x_43.x)) + vec3<f32>(x_46.x, x_46.y, x_46.z));
  let x_49 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  let x_52 : vec4<f32> = x_18.x_TerrainEngineBendTree[2i];
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat1;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.z, x_54.z, x_54.z)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_62 : vec4<f32> = in_POSITION0;
  let x_66 : vec4<f32> = x_18.x_TreeInstanceScale;
  let x_69 : vec4<f32> = u_xlat1;
  let x_71 : vec3<f32> = ((-(vec3<f32>(x_62.x, x_62.y, x_62.z)) * vec3<f32>(x_66.x, x_66.y, x_66.z)) + vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = in_COLOR0;
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec3<f32> = ((vec3<f32>(x_75.w, x_75.w, x_75.w) * vec3<f32>(x_77.x, x_77.y, x_77.z)) + vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_89 : vec4<f32> = x_18.x_SquashPlaneNormal;
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : f32 = u_xlat6;
  let x_99 : f32 = x_18.x_SquashPlaneNormal.w;
  u_xlat6 = (x_94 + x_99);
  let x_101 : f32 = u_xlat6;
  let x_105 : vec4<f32> = x_18.x_SquashPlaneNormal;
  let x_108 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = ((-(vec3<f32>(x_101, x_101, x_101)) * vec3<f32>(x_105.x, x_105.y, x_105.z)) + vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_113.x, x_113.y, x_113.z) + -(vec3<f32>(x_115.x, x_115.y, x_115.z)));
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_123 : f32 = x_18.x_SquashAmount;
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  let x_130 : vec3<f32> = ((vec3<f32>(x_123, x_123, x_123) * vec3<f32>(x_125.x, x_125.y, x_125.z)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_136 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_133.y, x_133.y, x_133.y, x_133.y) * x_136);
  let x_139 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_140 : vec4<f32> = u_xlat0;
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_139 * vec4<f32>(x_140.x, x_140.x, x_140.x, x_140.x)) + x_143);
  let x_146 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_147 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_146 * vec4<f32>(x_147.z, x_147.z, x_147.z, x_147.z)) + x_150);
  let x_152 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_152 + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_156.y, x_156.y, x_156.y, x_156.y) * x_159);
  let x_162 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_163 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_162 * vec4<f32>(x_163.x, x_163.x, x_163.x, x_163.x)) + x_166);
  let x_169 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_170 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_169 * vec4<f32>(x_170.z, x_170.z, x_170.z, x_170.z)) + x_173);
  let x_177 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = x_177;
  let x_183 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = x_18.unity_MatrixVP[3i];
  gl_Position = (x_183 + x_185);
  let x_192 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_192.x, x_192.y);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0);
}


