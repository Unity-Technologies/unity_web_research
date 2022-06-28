struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_SunSize : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_16 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_122 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_WorldSpaceLightPos0;
  u_xlat0 = (x_12 + vec3<f32>(x_21.x, x_21.y, x_21.z));
  let x_24 : vec3<f32> = u_xlat0;
  let x_25 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_24, x_25);
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_32);
  let x_40 : f32 = x_16.x_SunSize;
  u_xlat2.x = (1.0f / x_40);
  let x_44 : f32 = u_xlat2.x;
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = (x_44 * x_46);
  let x_50 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_50, 0.0f, 1.0f);
  let x_55 : f32 = u_xlat0.x;
  u_xlat2.x = ((x_55 * -2.0f) + 3.0f);
  let x_62 : f32 = u_xlat0.x;
  let x_64 : f32 = u_xlat0.x;
  u_xlat0.x = (x_62 * x_64);
  let x_68 : f32 = u_xlat2.x;
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_68) * x_71) + 1.0f);
  let x_76 : f32 = u_xlat0.x;
  let x_78 : f32 = u_xlat0.x;
  u_xlat0.x = (x_76 * x_78);
  let x_84 : f32 = vs_TEXCOORD0.y;
  u_xlat2.x = (x_84 * 50.0f);
  let x_89 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_89, 0.0f, 1.0f);
  let x_94 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_94 + -(x_96));
  let x_99 : vec3<f32> = u_xlat2;
  let x_101 : vec3<f32> = u_xlat1;
  let x_103 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = ((vec3<f32>(x_99.x, x_99.x, x_99.x) * x_101) + x_103);
  let x_106 : vec3<f32> = vs_TEXCOORD3;
  let x_107 : vec3<f32> = u_xlat0;
  let x_110 : vec3<f32> = u_xlat2;
  u_xlat1 = ((x_106 * vec3<f32>(x_107.x, x_107.x, x_107.x)) + x_110);
  let x_116 : f32 = vs_TEXCOORD0.y;
  u_xlatb0 = (x_116 < 0.0f);
  let x_120 : bool = u_xlatb0;
  if (x_120) {
    let x_125 : vec3<f32> = u_xlat1;
    x_122 = x_125;
  } else {
    let x_127 : vec3<f32> = u_xlat2;
    x_122 = x_127;
  }
  let x_128 : vec3<f32> = x_122;
  let x_129 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

