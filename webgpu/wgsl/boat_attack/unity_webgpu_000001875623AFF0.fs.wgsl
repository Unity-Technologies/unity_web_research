struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_84 : f32;
  var x_97 : f32;
  var x_110 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, x_23, x_33);
  u_xlat0 = x_34;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat1 = log2(abs(vec3<f32>(x_38.x, x_38.y, x_38.z)));
  let x_42 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_42 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_46);
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_48 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_68 : vec4<f32> = u_xlat0;
  let x_71 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_68.x, x_68.y, x_68.z, x_68.x));
  u_xlatb0 = vec3<bool>(x_71.x, x_71.y, x_71.z);
  let x_78 : f32 = u_xlat0.w;
  SV_Target0.w = x_78;
  let x_83 : bool = u_xlatb0.x;
  if (x_83) {
    let x_88 : f32 = u_xlat2.x;
    x_84 = x_88;
  } else {
    let x_91 : f32 = u_xlat1.x;
    x_84 = x_91;
  }
  let x_92 : f32 = x_84;
  SV_Target0.x = x_92;
  let x_96 : bool = u_xlatb0.y;
  if (x_96) {
    let x_101 : f32 = u_xlat2.y;
    x_97 = x_101;
  } else {
    let x_104 : f32 = u_xlat1.y;
    x_97 = x_104;
  }
  let x_105 : f32 = x_97;
  SV_Target0.y = x_105;
  let x_109 : bool = u_xlatb0.z;
  if (x_109) {
    let x_114 : f32 = u_xlat2.z;
    x_110 = x_114;
  } else {
    let x_117 : f32 = u_xlat1.z;
    x_110 = x_117;
  }
  let x_118 : f32 = x_110;
  SV_Target0.z = x_118;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

