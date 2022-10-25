struct PGlobals {
  x_BlitMipLevel : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearRepeat : sampler;

@group(1) @binding(0) var<uniform> x_168 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : vec2<bool>;
  var u_xlat1 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat4 : vec2<f32>;
  var x_53 : vec2<f32>;
  var u_xlat0 : vec2<f32>;
  var x_64 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var u_xlat2 : vec4<f32>;
  var x_92 : vec2<f32>;
  var x_108 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var x_124 : vec2<f32>;
  var u_xlat5 : vec2<f32>;
  var x_136 : vec2<f32>;
  var x_146 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = vs_TEXCOORD0.x;
  u_xlatb0.x = (x_18 < 0.0f);
  let x_24 : bool = u_xlatb0.x;
  if (x_24) {
    let x_28 : vec2<f32> = vs_TEXCOORD0;
    let x_33 : vec4<bool> = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) < vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb0 = vec2<bool>(x_33.x, x_33.y);
    let x_38 : vec2<f32> = vs_TEXCOORD0;
    u_xlat1 = (vec3<f32>(x_38.x, x_38.y, x_38.y) + vec3<f32>(1.0f, 1.0f, -1.0f));
    let x_45 : vec2<f32> = vs_TEXCOORD0;
    u_xlat8 = (-(x_45) + vec2<f32>(0.0f, 1.0f));
    let x_52 : bool = u_xlatb0.y;
    if (x_52) {
      let x_56 : vec2<f32> = u_xlat8;
      x_53 = x_56;
    } else {
      let x_58 : vec3<f32> = u_xlat1;
      x_53 = vec2<f32>(x_58.x, x_58.z);
    }
    let x_60 : vec2<f32> = x_53;
    u_xlat4 = x_60;
    let x_63 : bool = u_xlatb0.x;
    if (x_63) {
      let x_67 : vec3<f32> = u_xlat1;
      x_64 = vec2<f32>(x_67.x, x_67.y);
    } else {
      let x_70 : vec2<f32> = u_xlat4;
      x_64 = x_70;
    }
    let x_71 : vec2<f32> = x_64;
    u_xlat0 = x_71;
  } else {
    let x_76 : vec2<f32> = vs_TEXCOORD0;
    let x_79 : vec4<bool> = (vec4<f32>(x_76.x, x_76.y, x_76.y, x_76.x) < vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f));
    u_xlatb1 = vec3<bool>(x_79.x, x_79.y, x_79.z);
    let x_83 : vec2<f32> = vs_TEXCOORD0;
    u_xlat2 = (-(vec4<f32>(x_83.x, x_83.y, x_83.x, x_83.y)) + vec4<f32>(1.0f, 2.0f, 2.0f, 1.0f));
    let x_91 : bool = u_xlatb1.z;
    if (x_91) {
      let x_95 : vec2<f32> = vs_TEXCOORD0;
      x_92 = x_95;
    } else {
      let x_97 : vec4<f32> = u_xlat2;
      x_92 = vec2<f32>(x_97.x, x_97.y);
    }
    let x_99 : vec2<f32> = x_92;
    u_xlat8 = x_99;
    let x_100 : vec2<f32> = vs_TEXCOORD0;
    let x_103 : vec2<f32> = (-(x_100) + vec2<f32>(1.0f, 0.0f));
    let x_104 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
    let x_107 : bool = u_xlatb1.y;
    if (x_107) {
      let x_111 : vec4<f32> = u_xlat2;
      x_108 = vec2<f32>(x_111.x, x_111.y);
    } else {
      let x_114 : vec2<f32> = u_xlat8;
      x_108 = x_114;
    }
    let x_115 : vec2<f32> = x_108;
    u_xlat8 = x_115;
    let x_117 : vec2<f32> = vs_TEXCOORD0;
    u_xlat3 = (vec3<f32>(x_117.x, x_117.y, x_117.y) + vec3<f32>(-1.0f, 1.0f, -1.0f));
    let x_123 : bool = u_xlatb1.z;
    if (x_123) {
      let x_127 : vec4<f32> = u_xlat2;
      x_124 = vec2<f32>(x_127.z, x_127.w);
    } else {
      let x_130 : vec3<f32> = u_xlat3;
      x_124 = vec2<f32>(x_130.x, x_130.z);
    }
    let x_132 : vec2<f32> = x_124;
    u_xlat9 = x_132;
    let x_135 : bool = u_xlatb1.y;
    if (x_135) {
      let x_139 : vec3<f32> = u_xlat3;
      x_136 = vec2<f32>(x_139.x, x_139.y);
    } else {
      let x_142 : vec2<f32> = u_xlat9;
      x_136 = x_142;
    }
    let x_143 : vec2<f32> = x_136;
    u_xlat5 = x_143;
    let x_145 : bool = u_xlatb1.x;
    if (x_145) {
      let x_149 : vec2<f32> = u_xlat8;
      x_146 = x_149;
    } else {
      let x_151 : vec2<f32> = u_xlat5;
      x_146 = x_151;
    }
    let x_152 : vec2<f32> = x_146;
    u_xlat0 = x_152;
  }
  let x_165 : vec2<f32> = u_xlat0;
  let x_173 : f32 = x_168.x_BlitMipLevel;
  let x_174 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearRepeat, x_165, x_173);
  SV_Target0 = x_174;
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

