struct PGlobals {
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

var<private> vs_TEXCOORD2 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FrontFacing : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat3 : f32;
  var u_xlatb3 : bool;
  var u_xlatb6 : bool;
  var u_xlat6 : f32;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
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
  let x_42 : f32 = u_xlat0;
  u_xlat3 = ((x_42 * -2.0f) + 3.0f);
  let x_47 : f32 = u_xlat0;
  let x_48 : f32 = u_xlat0;
  u_xlat0 = (x_47 * x_48);
  let x_50 : f32 = u_xlat0;
  let x_51 : f32 = u_xlat3;
  u_xlat0 = (x_50 * x_51);
  let x_55 : f32 = x_22.x_Rim;
  u_xlat3 = (-(x_55) + 0.5f);
  let x_61 : f32 = u_xlat3;
  let x_64 : f32 = vs_TEXCOORD2;
  u_xlatb3 = (x_61 >= x_64);
  let x_66 : bool = u_xlatb3;
  u_xlat3 = select(-0.0f, -1.0f, x_66);
  let x_71 : f32 = vs_TEXCOORD2;
  u_xlatb6 = (0.5f >= x_71);
  let x_74 : bool = u_xlatb6;
  u_xlat6 = select(0.0f, 1.0f, x_74);
  let x_77 : f32 = u_xlat3;
  let x_78 : f32 = u_xlat6;
  u_xlat3 = (x_77 + x_78);
  let x_81 : f32 = u_xlat3;
  let x_83 : f32 = u_xlat6;
  u_xlat9 = (-(x_81) + x_83);
  let x_87 : f32 = u_xlat3;
  let x_92 : vec4<f32> = x_22.x_FoamColor;
  u_xlat1 = (vec4<f32>(x_87, x_87, x_87, x_87) * x_92);
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_94 * vec4<f32>(0.899999976f, 0.899999976f, 0.899999976f, 0.899999976f));
  let x_98 : f32 = u_xlat9;
  let x_102 : vec4<f32> = x_22.x_Color;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_98, x_98, x_98, x_98) * x_102) + x_104);
  let x_107 : f32 = u_xlat6;
  let x_111 : vec4<f32> = x_22.x_TopColor;
  u_xlat2 = (vec4<f32>(x_107, x_107, x_107, x_107) * x_111);
  let x_113 : f32 = u_xlat0;
  let x_117 : vec4<f32> = x_22.x_RimColor;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = ((vec3<f32>(x_113, x_113, x_113) * vec3<f32>(x_117.x, x_117.y, x_117.z)) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_129 : bool = gl_FrontFacing;
  let x_134 : bool = (select(0u, 4294967295u, x_129) != 0u);
  let x_135 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = u_xlat2;
  SV_Target0 = select(x_136, x_135, vec4<bool>(x_134, x_134, x_134, x_134));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_COLOR2_param : vec3<f32>, @location(1) vs_COLOR0_param : vec3<f32>, @location(0) vs_TEXCOORD2_param : f32, @builtin(front_facing) gl_FrontFacing_param : bool, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR2 = vs_COLOR2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FrontFacing = gl_FrontFacing_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

