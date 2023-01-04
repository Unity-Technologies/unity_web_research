struct VGlobals {
  x_BlitScaleBias : vec4<f32>,
  x_BlitScaleBiasRt : vec4<f32>,
  x_BlitTextureSize : vec2<f32>,
  x_BlitPaddingSize : u32,
}

var<private> gl_VertexIndex : i32;

@group(1) @binding(1) var<uniform> x_79 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlatu0 : vec2<u32>;
  var u_xlati4 : i32;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_VertexIndex;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_11) & 1u));
  let x_20 : i32 = gl_VertexIndex;
  u_xlatu0.y = (bitcast<u32>(x_20) >> 1u);
  let x_26 : i32 = u_xlati0;
  let x_29 : u32 = u_xlatu0.y;
  u_xlati4 = (-(x_26) + -(bitcast<i32>(x_29)));
  let x_33 : i32 = u_xlati0;
  let x_35 : u32 = u_xlatu0.y;
  u_xlati0 = (x_33 + bitcast<i32>(x_35));
  let x_38 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_38) & 1u);
  let x_48 : u32 = u_xlatu0.x;
  u_xlat0.x = f32(x_48);
  let x_56 : f32 = u_xlat0.x;
  u_xlat1.z = (-(x_56) + 1.0f);
  let x_62 : i32 = u_xlati4;
  u_xlati0 = (x_62 + 1i);
  let x_65 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_65) & 1u);
  let x_69 : vec2<u32> = u_xlatu0;
  let x_72 : vec2<f32> = vec2<f32>(vec2<u32>(x_69.y, x_69.x));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_75 : vec3<f32> = u_xlat1;
  let x_82 : vec4<f32> = x_79.x_BlitScaleBiasRt;
  let x_86 : vec4<f32> = x_79.x_BlitScaleBiasRt;
  let x_88 : vec2<f32> = ((vec2<f32>(x_75.x, x_75.y) * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  u_xlat0.z = 1.0f;
  u_xlat0.w = 1.0f;
  let x_99 : vec4<f32> = u_xlat0;
  gl_Position = ((x_99 * vec4<f32>(2.0f, -2.0f, 1.0f, 1.0f)) + vec4<f32>(-1.0f, 1.0f, 0.0f, 0.0f));
  let x_113 : u32 = x_79.x_BlitPaddingSize;
  u_xlat0.x = f32(x_113);
  let x_118 : f32 = u_xlat0.x;
  u_xlat2.x = (x_118 * 0.5f);
  let x_122 : vec4<f32> = u_xlat0;
  let x_127 : f32 = x_79.x_BlitTextureSize.x;
  let x_129 : f32 = x_79.x_BlitTextureSize.y;
  let x_131 : vec2<f32> = (vec2<f32>(x_122.x, x_122.x) + vec2<f32>(x_127, x_129));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_132.y, x_131.y, x_132.w);
  let x_134 : vec3<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat0;
  let x_138 : vec2<f32> = (vec2<f32>(x_134.x, x_134.x) / vec2<f32>(x_136.x, x_136.z));
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_138.x, x_139.y, x_138.y);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : f32 = x_79.x_BlitTextureSize.x;
  let x_146 : f32 = x_79.x_BlitTextureSize.y;
  let x_148 : vec2<f32> = (vec2<f32>(x_141.x, x_141.z) / vec2<f32>(x_144, x_146));
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_148.x, x_149.y, x_148.y, x_149.w);
  let x_151 : vec3<f32> = u_xlat2;
  let x_154 : vec3<f32> = u_xlat1;
  let x_156 : vec2<f32> = (-(vec2<f32>(x_151.x, x_151.z)) + vec2<f32>(x_154.x, x_154.z));
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_156.x, x_157.y, x_156.y);
  let x_159 : vec4<f32> = u_xlat0;
  let x_161 : vec3<f32> = u_xlat2;
  let x_163 : vec2<f32> = (vec2<f32>(x_159.x, x_159.z) * vec2<f32>(x_161.x, x_161.z));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_79.x_BlitScaleBias;
  let x_175 : vec4<f32> = x_79.x_BlitScaleBias;
  vs_TEXCOORD0 = ((vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_171.x, x_171.y)) + vec2<f32>(x_175.z, x_175.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

