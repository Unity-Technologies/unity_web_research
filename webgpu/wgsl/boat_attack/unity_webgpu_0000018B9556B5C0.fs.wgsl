diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_CameraDepthAttachment_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

var<private> u_xlatu0 : vec4<u32>;

var<private> u_xlat1 : f32;

@group(0) @binding(0) var x_CameraDepthAttachment : texture_multisampled_2d<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat2 : f32;

var<private> gl_FragDepth : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_CameraDepthAttachment_TexelSize;
  u_xlat0 = (x_12 * vec2<f32>(x_21.z, x_21.w));
  let x_28 : vec2<f32> = u_xlat0;
  let x_32 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(x_28));
  let x_33 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_32.x, x_32.y, x_33.z, x_33.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_47 : vec4<u32> = u_xlatu0;
  let x_50 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_47.x, x_47.y)), 0i);
  u_xlat1 = x_50.x;
  let x_52 : f32 = u_xlat1;
  u_xlat1 = min(x_52, 1.0f);
  let x_57 : vec4<u32> = u_xlatu0;
  let x_61 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_57.x, x_57.y)), 1i);
  u_xlat3 = x_61.x;
  let x_63 : f32 = u_xlat1;
  let x_64 : f32 = u_xlat3;
  u_xlat1 = min(x_63, x_64);
  let x_67 : vec4<u32> = u_xlatu0;
  let x_71 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_67.x, x_67.y)), 2i);
  u_xlat3 = x_71.x;
  let x_73 : f32 = u_xlat1;
  let x_74 : f32 = u_xlat3;
  u_xlat1 = min(x_73, x_74);
  let x_77 : vec4<u32> = u_xlatu0;
  let x_81 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_77.x, x_77.y)), 3i);
  u_xlat3 = x_81.x;
  let x_83 : f32 = u_xlat1;
  let x_84 : f32 = u_xlat3;
  u_xlat1 = min(x_83, x_84);
  let x_87 : vec4<u32> = u_xlatu0;
  let x_91 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_87.x, x_87.y)), 4i);
  u_xlat3 = x_91.x;
  let x_93 : f32 = u_xlat1;
  let x_94 : f32 = u_xlat3;
  u_xlat1 = min(x_93, x_94);
  let x_97 : vec4<u32> = u_xlatu0;
  let x_101 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_97.x, x_97.y)), 5i);
  u_xlat3 = x_101.x;
  let x_103 : f32 = u_xlat1;
  let x_104 : f32 = u_xlat3;
  u_xlat1 = min(x_103, x_104);
  let x_107 : vec4<u32> = u_xlatu0;
  let x_111 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_107.x, x_107.y)), 6i);
  u_xlat3 = x_111.x;
  let x_114 : vec4<u32> = u_xlatu0;
  let x_118 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_114.x, x_114.y)), 7i);
  u_xlat0.x = x_118.x;
  let x_122 : f32 = u_xlat1;
  let x_123 : f32 = u_xlat3;
  u_xlat2 = min(x_122, x_123);
  let x_127 : f32 = u_xlat2;
  let x_129 : f32 = u_xlat0.x;
  gl_FragDepth = min(x_127, x_129);
  return;
}

struct main_out {
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(gl_FragDepth);
}


