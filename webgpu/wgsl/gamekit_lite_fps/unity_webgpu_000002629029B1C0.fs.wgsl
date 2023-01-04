struct PGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeTop : f32,
  @size(4)
  padding : u32,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : f32;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(2) var sampler_Noise : sampler;

var<private> u_xlat6 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlat4 : f32;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.x_Cutoff;
  let x_20 : f32 = x_13.x_Cutoff;
  u_xlat0 = (x_18 + x_20);
  let x_27 : vec3<f32> = vs_TEXCOORD1;
  let x_33 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat2 = (vec3<f32>(x_27.z, x_27.y, x_27.x) + -(vec3<f32>(x_33.z, x_33.y, x_33.x)));
  let x_41 : f32 = u_xlat2.y;
  let x_44 : f32 = u_xlat0;
  u_xlat1.x = ((x_41 * 2.0f) + x_44);
  let x_49 : vec3<f32> = u_xlat2;
  let x_53 : vec2<f32> = (vec2<f32>(x_49.z, x_49.x) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_54 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_54.x, x_53.x, x_53.y);
  let x_66 : vec3<f32> = u_xlat1;
  let x_68 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_66.x, x_66.z));
  u_xlat0 = x_68.x;
  let x_71 : f32 = u_xlat2.y;
  let x_75 : f32 = x_13.x_Cutoff;
  u_xlat1.x = ((x_71 * 4.0f) + x_75);
  let x_81 : vec3<f32> = u_xlat1;
  let x_83 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_81.x, x_81.y));
  u_xlat2.x = x_83.x;
  let x_86 : f32 = u_xlat0;
  let x_88 : vec3<f32> = u_xlat2;
  u_xlat0 = dot(vec2<f32>(x_86, x_86), vec2<f32>(x_88.x, x_88.x));
  let x_93 : f32 = x_13.x_bounds.y;
  u_xlat2.x = (x_93 + 0.200000003f);
  let x_98 : f32 = u_xlat2.x;
  u_xlat6 = (x_98 * 0.5f);
  let x_102 : f32 = x_13.x_Cutoff;
  let x_104 : f32 = u_xlat2.x;
  let x_106 : f32 = u_xlat6;
  u_xlat2.x = ((x_102 * x_104) + -(x_106));
  let x_111 : f32 = u_xlat2.x;
  let x_113 : f32 = x_13.x_EdgeSizeTop;
  u_xlat6 = (x_111 + x_113);
  let x_115 : f32 = u_xlat6;
  let x_118 : f32 = u_xlat2.x;
  u_xlat1.x = (-(x_115) + x_118);
  let x_125 : f32 = u_xlat2.y;
  let x_127 : f32 = u_xlat2.x;
  u_xlatb2 = (x_125 >= x_127);
  let x_130 : f32 = u_xlat6;
  let x_133 : f32 = u_xlat2.y;
  u_xlat4 = (-(x_130) + x_133);
  let x_135 : bool = u_xlatb2;
  u_xlat2.x = select(1.0f, 0.0f, x_135);
  let x_141 : f32 = u_xlat1.x;
  u_xlat6 = (1.0f / x_141);
  let x_143 : f32 = u_xlat6;
  let x_144 : f32 = u_xlat4;
  u_xlat4 = (x_143 * x_144);
  let x_146 : f32 = u_xlat4;
  u_xlat4 = clamp(x_146, 0.0f, 1.0f);
  let x_148 : f32 = u_xlat4;
  u_xlat6 = ((x_148 * -2.0f) + 3.0f);
  let x_153 : f32 = u_xlat4;
  let x_154 : f32 = u_xlat4;
  u_xlat4 = (x_153 * x_154);
  let x_156 : f32 = u_xlat4;
  let x_157 : f32 = u_xlat6;
  u_xlat4 = (x_156 * x_157);
  let x_159 : f32 = u_xlat0;
  let x_160 : f32 = u_xlat4;
  let x_163 : f32 = u_xlat2.x;
  u_xlat0 = ((x_159 * x_160) + x_163);
  let x_165 : f32 = u_xlat0;
  let x_167 : f32 = x_13.x_Cutoff;
  u_xlat0 = (x_165 + -(x_167));
  let x_170 : f32 = u_xlat0;
  let x_173 : f32 = x_13.x_Cutoff2;
  u_xlat0 = (x_170 + -(x_173));
  let x_177 : f32 = u_xlat0;
  u_xlatb0 = (x_177 < 0.0f);
  let x_179 : bool = u_xlatb0;
  if (((select(0i, 1i, x_179) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

