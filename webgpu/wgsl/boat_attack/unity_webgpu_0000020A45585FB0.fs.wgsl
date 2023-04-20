diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

var<private> u_xlatu0 : vec4<u32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var x_FullCoCTexture : texture_2d<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_ColorTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlat7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_SourceSize;
  u_xlat0 = (x_12 * vec2<f32>(x_21.x, x_21.y));
  let x_28 : vec2<f32> = u_xlat0;
  let x_32 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(x_28));
  let x_33 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_32.x, x_32.y, x_33.z, x_33.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_48 : vec4<u32> = u_xlatu0;
  let x_52 : u32 = u_xlatu0.w;
  let x_54 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_48.x, x_48.y)), bitcast<i32>(x_52));
  u_xlat1 = vec3<f32>(x_54.x, x_54.y, x_54.z);
  let x_58 : vec4<u32> = u_xlatu0;
  let x_62 : u32 = u_xlatu0.w;
  let x_64 : vec4<f32> = textureLoad(x_FullCoCTexture, bitcast<vec2<i32>>(vec2<u32>(x_58.x, x_58.y)), bitcast<i32>(x_62));
  u_xlat0.x = x_64.x;
  let x_73 : f32 = u_xlat0.x;
  u_xlatb2 = (0.0f < x_73);
  let x_75 : bool = u_xlatb2;
  if (x_75) {
    let x_87 : vec2<f32> = vs_TEXCOORD0;
    let x_91 : f32 = x_16.x_GlobalMipBias.x;
    let x_92 : vec4<f32> = textureSampleBias(x_ColorTexture, sampler_LinearClamp, x_87, x_91);
    u_xlat2 = vec3<f32>(x_92.x, x_92.y, x_92.z);
    let x_95 : f32 = u_xlat0.x;
    u_xlat0.x = (x_95 * 6.28318548202514648438f);
    let x_100 : f32 = u_xlat0.x;
    u_xlat0.x = sqrt(x_100);
    let x_105 : f32 = u_xlat0.x;
    u_xlat7 = min(x_105, 1.0f);
    let x_108 : vec3<f32> = u_xlat2;
    let x_109 : f32 = u_xlat7;
    u_xlat2 = (x_108 * vec3<f32>(x_109, x_109, x_109));
    let x_113 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_113) + 1.0f);
    let x_118 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_118, 0.0f);
  } else {
    u_xlat0.x = 1.0f;
    u_xlat2.x = 0.0f;
    u_xlat2.y = 0.0f;
    u_xlat2.z = 0.0f;
  }
  let x_129 : vec3<f32> = u_xlat1;
  let x_130 : vec2<f32> = u_xlat0;
  let x_133 : vec3<f32> = u_xlat2;
  let x_134 : vec3<f32> = ((x_129 * vec3<f32>(x_130.x, x_130.x, x_130.x)) + x_133);
  let x_135 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  SV_Target0.w = 1.0f;
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


