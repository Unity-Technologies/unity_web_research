diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_BlitMipLevel : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb2 : vec2<bool>;

@group(0) @binding(0) var x_BlitCubeTexture : texture_cube<f32>;

@group(0) @binding(1) var sampler_LinearRepeat : sampler;

@group(1) @binding(0) var<uniform> x_136 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec2<f32>;
  var x_80 : f32;
  var x_93 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_13.x, x_13.y, x_14.z);
  let x_16 : vec3<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_22.x, x_22.y, x_23.z);
  let x_25 : vec3<f32> = u_xlat0;
  let x_32 : vec2<f32> = ((vec2<f32>(x_25.x, x_25.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_33 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_32.x, x_32.y, x_33.z);
  let x_41 : f32 = u_xlat0.x;
  u_xlat6.x = (-(abs(x_41)) + 1.0f);
  let x_49 : f32 = u_xlat0.y;
  let x_53 : f32 = u_xlat6.x;
  u_xlat1.z = (-(abs(x_49)) + x_53);
  let x_58 : f32 = u_xlat1.z;
  u_xlat6.x = max(-(x_58), 0.0f);
  let x_67 : vec3<f32> = u_xlat0;
  let x_71 : vec4<bool> = (vec4<f32>(x_67.x, x_67.y, x_67.x, x_67.x) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_71.x, x_71.y);
  let x_75 : vec2<f32> = u_xlat6;
  hlslcc_movcTemp = x_75;
  let x_78 : bool = u_xlatb2.x;
  if (x_78) {
    let x_84 : f32 = u_xlat6.x;
    x_80 = -(x_84);
  } else {
    let x_88 : f32 = u_xlat6.x;
    x_80 = x_88;
  }
  let x_89 : f32 = x_80;
  hlslcc_movcTemp.x = x_89;
  let x_92 : bool = u_xlatb2.y;
  if (x_92) {
    let x_97 : f32 = u_xlat6.x;
    x_93 = -(x_97);
  } else {
    let x_101 : f32 = u_xlat6.x;
    x_93 = x_101;
  }
  let x_102 : f32 = x_93;
  hlslcc_movcTemp.y = x_102;
  let x_104 : vec2<f32> = hlslcc_movcTemp;
  u_xlat6 = x_104;
  let x_105 : vec2<f32> = u_xlat6;
  let x_106 : vec3<f32> = u_xlat0;
  let x_108 : vec2<f32> = (x_105 + vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_108.x, x_108.y, x_109.z);
  let x_111 : vec3<f32> = u_xlat1;
  let x_112 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_111, x_112);
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_116);
  let x_119 : vec3<f32> = u_xlat0;
  let x_121 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_119.x, x_119.x, x_119.x) * x_121);
  let x_133 : vec3<f32> = u_xlat0;
  let x_141 : f32 = x_136.x_BlitMipLevel;
  let x_142 : vec4<f32> = textureSampleLevel(x_BlitCubeTexture, sampler_LinearRepeat, x_133, x_141);
  u_xlat0.x = x_142.w;
  let x_148 : vec3<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_148.x, x_148.x, x_148.x, x_148.x);
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


