struct PGlobals {
  x_BlitMipLevel : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitCubeTexture : texture_cube<f32>;

@group(0) @binding(1) var sampler_LinearRepeat : sampler;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb2 : vec2<bool>;
  var hlslcc_movcTemp : vec2<f32>;
  var x_78 : f32;
  var x_91 : f32;
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
  let x_74 : vec2<f32> = u_xlat6;
  hlslcc_movcTemp = x_74;
  let x_77 : bool = u_xlatb2.x;
  if (x_77) {
    let x_82 : f32 = u_xlat6.x;
    x_78 = -(x_82);
  } else {
    let x_86 : f32 = u_xlat6.x;
    x_78 = x_86;
  }
  let x_87 : f32 = x_78;
  hlslcc_movcTemp.x = x_87;
  let x_90 : bool = u_xlatb2.y;
  if (x_90) {
    let x_95 : f32 = u_xlat6.x;
    x_91 = -(x_95);
  } else {
    let x_99 : f32 = u_xlat6.x;
    x_91 = x_99;
  }
  let x_100 : f32 = x_91;
  hlslcc_movcTemp.y = x_100;
  let x_102 : vec2<f32> = hlslcc_movcTemp;
  u_xlat6 = x_102;
  let x_103 : vec2<f32> = u_xlat6;
  let x_104 : vec3<f32> = u_xlat0;
  let x_106 : vec2<f32> = (x_103 + vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_106.x, x_106.y, x_107.z);
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_109, x_110);
  let x_114 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_114);
  let x_117 : vec3<f32> = u_xlat0;
  let x_119 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_117.x, x_117.x, x_117.x) * x_119);
  let x_131 : vec3<f32> = u_xlat0;
  let x_139 : f32 = x_134.x_BlitMipLevel;
  let x_140 : vec4<f32> = textureSampleLevel(x_BlitCubeTexture, sampler_LinearRepeat, x_131, x_139);
  u_xlat0 = vec3<f32>(x_140.x, x_140.y, x_140.z);
  let x_144 : vec3<f32> = u_xlat0;
  let x_149 : f32 = dot(x_144, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  SV_Target0 = vec4<f32>(x_149, x_149, x_149, x_149);
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

