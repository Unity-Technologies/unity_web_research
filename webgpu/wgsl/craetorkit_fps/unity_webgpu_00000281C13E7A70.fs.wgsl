struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_TopColor : vec4<f32>,
  x_RimColor : vec4<f32>,
  x_FoamColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_Rim : f32,
  x_RimPower : f32,
}

var<private> vs_COLOR2 : vec3<f32>;

var<private> vs_COLOR0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_TEXCOORD2 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FrontFacing : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlatb6 : bool;
  var u_xlat6 : f32;
  var u_xlat11 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_COLOR2;
  let x_14 : vec3<f32> = vs_COLOR0;
  u_xlat0 = dot(x_12, x_14);
  let x_16 : f32 = u_xlat0;
  u_xlat0 = log2(x_16);
  let x_18 : f32 = u_xlat0;
  let x_27 : f32 = x_22.x_RimPower;
  u_xlat0 = (x_18 * x_27);
  let x_29 : f32 = u_xlat0;
  u_xlat0 = exp2(x_29);
  let x_31 : f32 = u_xlat0;
  u_xlat0 = (-(x_31) + 0.5f);
  let x_35 : f32 = u_xlat0;
  let x_36 : f32 = u_xlat0;
  u_xlat0 = (x_35 + x_36);
  let x_38 : f32 = u_xlat0;
  u_xlat0 = max(x_38, 0.0f);
  let x_43 : f32 = u_xlat0;
  u_xlat5.x = ((x_43 * -2.0f) + 3.0f);
  let x_51 : f32 = u_xlat0;
  let x_52 : f32 = u_xlat0;
  u_xlat0 = (x_51 * x_52);
  let x_54 : f32 = u_xlat0;
  let x_56 : f32 = u_xlat5.x;
  u_xlat0 = (x_54 * x_56);
  let x_60 : f32 = vs_TEXCOORD1;
  u_xlat5.x = x_60;
  let x_63 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_63, 0.0f, 1.0f);
  let x_72 : vec4<f32> = x_22.unity_FogColor;
  let x_77 : vec4<f32> = x_22.x_Color;
  let x_79 : vec3<f32> = (-(vec3<f32>(x_72.x, x_72.y, x_72.z)) + vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec3<f32> = u_xlat5;
  let x_84 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = x_22.unity_FogColor;
  u_xlat5 = ((vec3<f32>(x_82.x, x_82.x, x_82.x) * vec3<f32>(x_84.x, x_84.y, x_84.z)) + vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_93 : f32 = x_22.x_Rim;
  u_xlat1.x = (-(x_93) + 0.5f);
  let x_101 : f32 = u_xlat1.x;
  let x_103 : f32 = vs_TEXCOORD2;
  u_xlatb1 = (x_101 >= x_103);
  let x_105 : bool = u_xlatb1;
  u_xlat1.x = select(-0.0f, -1.0f, x_105);
  let x_111 : f32 = vs_TEXCOORD2;
  u_xlatb6 = (0.5f >= x_111);
  let x_114 : bool = u_xlatb6;
  u_xlat6 = select(0.0f, 1.0f, x_114);
  let x_117 : f32 = u_xlat1.x;
  let x_118 : f32 = u_xlat6;
  u_xlat1.x = (x_117 + x_118);
  let x_123 : f32 = u_xlat1.x;
  let x_125 : f32 = u_xlat6;
  u_xlat11 = (-(x_123) + x_125);
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec4<f32> = x_22.x_FoamColor;
  u_xlat2 = (vec4<f32>(x_128.x, x_128.x, x_128.x, x_128.x) * x_132);
  let x_135 : f32 = u_xlat6;
  let x_139 : vec4<f32> = x_22.x_TopColor;
  u_xlat3 = (vec4<f32>(x_135, x_135, x_135, x_135) * x_139);
  let x_142 : vec3<f32> = u_xlat5;
  let x_143 : f32 = u_xlat11;
  let x_145 : vec3<f32> = (x_142 * vec3<f32>(x_143, x_143, x_143));
  let x_146 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_148 : f32 = u_xlat11;
  let x_151 : f32 = x_22.x_Color.w;
  u_xlat4.w = (x_148 * x_151);
  let x_154 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_154 * vec4<f32>(0.899999976f, 0.899999976f, 0.899999976f, 0.899999976f)) + x_158);
  let x_160 : f32 = u_xlat0;
  let x_164 : vec4<f32> = x_22.x_RimColor;
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec3<f32> = ((vec3<f32>(x_160, x_160, x_160) * vec3<f32>(x_164.x, x_164.y, x_164.z)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_176 : bool = gl_FrontFacing;
  let x_179 : bool = (select(0u, 4294967295u, x_176) != 0u);
  let x_180 : vec4<f32> = u_xlat1;
  let x_181 : vec4<f32> = u_xlat3;
  SV_Target0 = select(x_181, x_180, vec4<bool>(x_179, x_179, x_179, x_179));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_COLOR2_param : vec3<f32>, @location(2) vs_COLOR0_param : vec3<f32>, @location(0) vs_TEXCOORD1_param : f32, @location(1) vs_TEXCOORD2_param : f32, @builtin(front_facing) gl_FrontFacing_param : bool, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR2 = vs_COLOR2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FrontFacing = gl_FrontFacing_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

