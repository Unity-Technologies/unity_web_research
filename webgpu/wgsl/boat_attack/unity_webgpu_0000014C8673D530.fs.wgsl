diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_BlitMipLevel : f32,
}

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat0 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat5 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearRepeat : sampler;

@group(1) @binding(0) var<uniform> x_169 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_54 : vec2<f32>;
  var x_65 : vec2<f32>;
  var x_93 : vec2<f32>;
  var x_109 : vec2<f32>;
  var x_125 : vec2<f32>;
  var x_137 : vec2<f32>;
  var x_147 : vec2<f32>;
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
      let x_57 : vec2<f32> = u_xlat8;
      x_54 = x_57;
    } else {
      let x_59 : vec3<f32> = u_xlat1;
      x_54 = vec2<f32>(x_59.x, x_59.z);
    }
    let x_61 : vec2<f32> = x_54;
    u_xlat4 = x_61;
    let x_64 : bool = u_xlatb0.x;
    if (x_64) {
      let x_68 : vec3<f32> = u_xlat1;
      x_65 = vec2<f32>(x_68.x, x_68.y);
    } else {
      let x_71 : vec2<f32> = u_xlat4;
      x_65 = x_71;
    }
    let x_72 : vec2<f32> = x_65;
    u_xlat0 = x_72;
  } else {
    let x_77 : vec2<f32> = vs_TEXCOORD0;
    let x_80 : vec4<bool> = (vec4<f32>(x_77.x, x_77.y, x_77.y, x_77.x) < vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f));
    u_xlatb1 = vec3<bool>(x_80.x, x_80.y, x_80.z);
    let x_84 : vec2<f32> = vs_TEXCOORD0;
    u_xlat2 = (-(vec4<f32>(x_84.x, x_84.y, x_84.x, x_84.y)) + vec4<f32>(1.0f, 2.0f, 2.0f, 1.0f));
    let x_92 : bool = u_xlatb1.z;
    if (x_92) {
      let x_96 : vec2<f32> = vs_TEXCOORD0;
      x_93 = x_96;
    } else {
      let x_98 : vec4<f32> = u_xlat2;
      x_93 = vec2<f32>(x_98.x, x_98.y);
    }
    let x_100 : vec2<f32> = x_93;
    u_xlat8 = x_100;
    let x_101 : vec2<f32> = vs_TEXCOORD0;
    let x_104 : vec2<f32> = (-(x_101) + vec2<f32>(1.0f, 0.0f));
    let x_105 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
    let x_108 : bool = u_xlatb1.y;
    if (x_108) {
      let x_112 : vec4<f32> = u_xlat2;
      x_109 = vec2<f32>(x_112.x, x_112.y);
    } else {
      let x_115 : vec2<f32> = u_xlat8;
      x_109 = x_115;
    }
    let x_116 : vec2<f32> = x_109;
    u_xlat8 = x_116;
    let x_118 : vec2<f32> = vs_TEXCOORD0;
    u_xlat3 = (vec3<f32>(x_118.x, x_118.y, x_118.y) + vec3<f32>(-1.0f, 1.0f, -1.0f));
    let x_124 : bool = u_xlatb1.z;
    if (x_124) {
      let x_128 : vec4<f32> = u_xlat2;
      x_125 = vec2<f32>(x_128.z, x_128.w);
    } else {
      let x_131 : vec3<f32> = u_xlat3;
      x_125 = vec2<f32>(x_131.x, x_131.z);
    }
    let x_133 : vec2<f32> = x_125;
    u_xlat9 = x_133;
    let x_136 : bool = u_xlatb1.y;
    if (x_136) {
      let x_140 : vec3<f32> = u_xlat3;
      x_137 = vec2<f32>(x_140.x, x_140.y);
    } else {
      let x_143 : vec2<f32> = u_xlat9;
      x_137 = x_143;
    }
    let x_144 : vec2<f32> = x_137;
    u_xlat5 = x_144;
    let x_146 : bool = u_xlatb1.x;
    if (x_146) {
      let x_150 : vec2<f32> = u_xlat8;
      x_147 = x_150;
    } else {
      let x_152 : vec2<f32> = u_xlat5;
      x_147 = x_152;
    }
    let x_153 : vec2<f32> = x_147;
    u_xlat0 = x_153;
  }
  let x_166 : vec2<f32> = u_xlat0;
  let x_174 : f32 = x_169.x_BlitMipLevel;
  let x_175 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearRepeat, x_166, x_174);
  SV_Target0 = x_175;
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


