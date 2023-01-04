struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_SourceSize : vec4<f32>,
  x_CoCParams : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> SV_Target0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_SourceSize;
  u_xlat0 = (x_12 * vec2<f32>(x_22.x, x_22.y));
  let x_29 : vec2<f32> = u_xlat0;
  let x_33 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(x_29));
  let x_34 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_33.x, x_33.y, x_34.z, x_34.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_46 : vec4<u32> = u_xlatu0;
  let x_50 : u32 = u_xlatu0.w;
  let x_52 : vec4<f32> = textureLoad(x_CameraDepthTexture, bitcast<vec2<i32>>(vec2<u32>(x_46.x, x_46.y)), bitcast<i32>(x_50));
  u_xlat0.x = x_52.x;
  let x_59 : f32 = x_17.x_ZBufferParams.z;
  let x_61 : f32 = u_xlat0.x;
  let x_64 : f32 = x_17.x_ZBufferParams.w;
  u_xlat0.x = ((x_59 * x_61) + x_64);
  let x_69 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_69);
  let x_73 : f32 = u_xlat0.x;
  let x_76 : f32 = x_17.x_CoCParams.x;
  u_xlat0.x = (x_73 + -(x_76));
  let x_82 : f32 = x_17.x_CoCParams.x;
  let x_86 : f32 = x_17.x_CoCParams.y;
  u_xlat1 = (-(x_82) + x_86);
  let x_91 : f32 = u_xlat0.x;
  let x_92 : f32 = u_xlat1;
  SV_Target0 = (x_91 / x_92);
  let x_94 : f32 = SV_Target0;
  SV_Target0 = clamp(x_94, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

